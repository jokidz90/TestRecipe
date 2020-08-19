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
    /// Controller class for RecipeDetail
    /// </summary>
    [System.ComponentModel.DataObject]
    public partial class RecipeDetailController
    {
        // Preload our schema..
        RecipeDetail thisSchemaLoad = new RecipeDetail();
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
        public RecipeDetailCollection FetchAll()
        {
            RecipeDetailCollection coll = new RecipeDetailCollection();
            Query qry = new Query(RecipeDetail.Schema);
            coll.LoadAndCloseReader(qry.ExecuteReader());
            return coll;
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public RecipeDetailCollection FetchByID(object RecipeDetailID)
        {
            RecipeDetailCollection coll = new RecipeDetailCollection().Where("RecipeDetailID", RecipeDetailID).Load();
            return coll;
        }
		
		[DataObjectMethod(DataObjectMethodType.Select, false)]
        public RecipeDetailCollection FetchByQuery(Query qry)
        {
            RecipeDetailCollection coll = new RecipeDetailCollection();
            coll.LoadAndCloseReader(qry.ExecuteReader()); 
            return coll;
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public bool Delete(object RecipeDetailID)
        {
            return (RecipeDetail.Delete(RecipeDetailID) == 1);
        }
        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public bool Destroy(object RecipeDetailID)
        {
            return (RecipeDetail.Destroy(RecipeDetailID) == 1);
        }
        
        
    	
	    /// <summary>
	    /// Inserts a record, can be used with the Object Data Source
	    /// </summary>
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
	    public void Insert(string RecipeDetailID,string RecipeHeaderID,string ItemNo,double Qty,string Uom)
	    {
		    RecipeDetail item = new RecipeDetail();
		    
            item.RecipeDetailID = RecipeDetailID;
            
            item.RecipeHeaderID = RecipeHeaderID;
            
            item.ItemNo = ItemNo;
            
            item.Qty = Qty;
            
            item.Uom = Uom;
            
	    
		    item.Save(UserName);
	    }
    	
	    /// <summary>
	    /// Updates a record, can be used with the Object Data Source
	    /// </summary>
        [DataObjectMethod(DataObjectMethodType.Update, true)]
	    public void Update(string RecipeDetailID,string RecipeHeaderID,string ItemNo,double Qty,string Uom)
	    {
		    RecipeDetail item = new RecipeDetail();
	        item.MarkOld();
	        item.IsLoaded = true;
		    
			item.RecipeDetailID = RecipeDetailID;
				
			item.RecipeHeaderID = RecipeHeaderID;
				
			item.ItemNo = ItemNo;
				
			item.Qty = Qty;
				
			item.Uom = Uom;
				
	        item.Save(UserName);
	    }
    }
}
