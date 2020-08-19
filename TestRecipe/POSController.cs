using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SubSonic;
using System.Data;

namespace TestRecipe
{
    public class POSController
    {
        private List<OrderDet> _orders = new List<OrderDet>();
        public List<OrderDet> Orders { get { return _orders; } }

        public decimal GrandTotal 
        {
            get
            {
                return _orders.Sum(o => o.Amount);
            }
        }

        public decimal TotalCost
        {
            get
            {
                return _orders.Sum(o => o.CostOfGoods);
            }
        }

        public decimal NettProfit
        {
            get
            {
                return GrandTotal - TotalCost;
            }
        }

        public bool AddItemToOrders(string itemNo, out string status)
        {
            status = "";
            bool isSuccess = false;

            try
            {
                string sql = @"
                SELECT *
                FROM Item
                WHERE	CategoryName = 'Product' AND ItemNo = @ItemNo";

                QueryCommand cmd = new QueryCommand(sql);
                cmd.AddParameter("@ItemNo", itemNo);

                DataTable dt = new DataTable();
                dt.Load(DataService.GetReader(cmd));

                if (dt.Rows.Count == 0)
                    throw new Exception(string.Format("Item {0} not found", itemNo));

                //string itemNo = dt.Rows[0]["ItemNo"] + "";
                string itemName = dt.Rows[0]["ItemName"] + "";
                decimal retailPrice = (decimal)dt.Rows[0]["RetailPrice"];
                decimal factoryPrice = (decimal)dt.Rows[0]["FactoryPrice"];

                bool isNewItem = false;
                var newLine = _orders.Where(o => o.ItemNo == itemNo).FirstOrDefault();
                if (newLine == null)
                {
                    newLine = new OrderDet();
                    newLine.ID = Guid.NewGuid().ToString();
                    newLine.ItemNo = itemNo;
                    newLine.ItemName = itemName;
                    newLine.RetailPrice = retailPrice;
                    newLine.FactoryPrice = factoryPrice;
                    isNewItem = true;
                }
                newLine.Quantity += 1;
                newLine.Amount = newLine.Quantity * newLine.RetailPrice;
                newLine.CostOfGoods = newLine.Quantity * newLine.FactoryPrice;
                if (isNewItem)
                    _orders.Add(newLine);

                isSuccess = true;
            }
            catch (Exception ex)
            {
                status = "Add Item Failed. "+ex.Message;
                isSuccess = false;
            }

            return isSuccess;
        }

    }

    public class OrderDet
    {
        public string ID { set; get; }
        public string ItemNo { set; get; }
        public string ItemName { set; get; }
        public int Quantity { set; get; }
        public decimal RetailPrice { set; get; }
        public decimal Amount { set; get; }
        public decimal FactoryPrice { set; get; }
        public decimal CostOfGoods { set; get; }
    }
}
