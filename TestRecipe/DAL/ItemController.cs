using System; 
using System.Text; 
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration; 
using System.Xml; 
using System.Xml.Serialization;
using SubSonic; 
using SubSonic.Utilities;
namespace PowerPOS
{
    /// <summary>
    /// Controller class for Item
    /// </summary>
    [System.ComponentModel.DataObject]
    public partial class ItemController
    {
        // Preload our schema..
        Item thisSchemaLoad = new Item();
        private string userName = String.Empty;
        protected string UserName
        {
            get
            {
				if (userName.Length == 0) 
				{
    				if (System.Web.HttpContext.Current != null)
    				{
						userName=System.Web.HttpContext.Current.User.Identity.Name;
					}
					else
					{
						userName=System.Threading.Thread.CurrentPrincipal.Identity.Name;
					}
				}
				return userName;
            }
        }
        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public ItemCollection FetchAll()
        {
            ItemCollection coll = new ItemCollection();
            Query qry = new Query(Item.Schema);
            coll.LoadAndCloseReader(qry.ExecuteReader());
            return coll;
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public ItemCollection FetchByID(object ItemNo)
        {
            ItemCollection coll = new ItemCollection().Where("ItemNo", ItemNo).Load();
            return coll;
        }
		
		[DataObjectMethod(DataObjectMethodType.Select, false)]
        public ItemCollection FetchByQuery(Query qry)
        {
            ItemCollection coll = new ItemCollection();
            coll.LoadAndCloseReader(qry.ExecuteReader()); 
            return coll;
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public bool Delete(object ItemNo)
        {
            return (Item.Delete(ItemNo) == 1);
        }
        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public bool Destroy(object ItemNo)
        {
            return (Item.Destroy(ItemNo) == 1);
        }
        
        
    	
	    /// <summary>
	    /// Inserts a record, can be used with the Object Data Source
	    /// </summary>
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
	    public void Insert(string ItemNo,string ItemName,string CategoryName,decimal RetailPrice,decimal FactoryPrice,string Uom)
	    {
		    Item item = new Item();
		    
            item.ItemNo = ItemNo;
            
            item.ItemName = ItemName;
            
            item.CategoryName = CategoryName;
            
            item.RetailPrice = RetailPrice;
            
            item.FactoryPrice = FactoryPrice;
            
            item.Uom = Uom;
            
	    
		    item.Save(UserName);
	    }
    	
	    /// <summary>
	    /// Updates a record, can be used with the Object Data Source
	    /// </summary>
        [DataObjectMethod(DataObjectMethodType.Update, true)]
	    public void Update(string ItemNo,string ItemName,string CategoryName,decimal RetailPrice,decimal FactoryPrice,string Uom)
	    {
		    Item item = new Item();
	        item.MarkOld();
	        item.IsLoaded = true;
		    
			item.ItemNo = ItemNo;
				
			item.ItemName = ItemName;
				
			item.CategoryName = CategoryName;
				
			item.RetailPrice = RetailPrice;
				
			item.FactoryPrice = FactoryPrice;
				
			item.Uom = Uom;
				
	        item.Save(UserName);
	    }
    }
}
