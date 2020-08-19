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
    /// Controller class for UOMConversion
    /// </summary>
    [System.ComponentModel.DataObject]
    public partial class UOMConversionController
    {
        // Preload our schema..
        UOMConversion thisSchemaLoad = new UOMConversion();
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
        public UOMConversionCollection FetchAll()
        {
            UOMConversionCollection coll = new UOMConversionCollection();
            Query qry = new Query(UOMConversion.Schema);
            coll.LoadAndCloseReader(qry.ExecuteReader());
            return coll;
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public UOMConversionCollection FetchByID(object UOMConversionID)
        {
            UOMConversionCollection coll = new UOMConversionCollection().Where("UOMConversionID", UOMConversionID).Load();
            return coll;
        }
		
		[DataObjectMethod(DataObjectMethodType.Select, false)]
        public UOMConversionCollection FetchByQuery(Query qry)
        {
            UOMConversionCollection coll = new UOMConversionCollection();
            coll.LoadAndCloseReader(qry.ExecuteReader()); 
            return coll;
        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public bool Delete(object UOMConversionID)
        {
            return (UOMConversion.Delete(UOMConversionID) == 1);
        }
        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public bool Destroy(object UOMConversionID)
        {
            return (UOMConversion.Destroy(UOMConversionID) == 1);
        }
        
        
    	
	    /// <summary>
	    /// Inserts a record, can be used with the Object Data Source
	    /// </summary>
        [DataObjectMethod(DataObjectMethodType.Insert, true)]
	    public void Insert(int UOMConversionID,string ItemNo,string FromUOM,string ToUOM,double ConversionRate)
	    {
		    UOMConversion item = new UOMConversion();
		    
            item.UOMConversionID = UOMConversionID;
            
            item.ItemNo = ItemNo;
            
            item.FromUOM = FromUOM;
            
            item.ToUOM = ToUOM;
            
            item.ConversionRate = ConversionRate;
            
	    
		    item.Save(UserName);
	    }
    	
	    /// <summary>
	    /// Updates a record, can be used with the Object Data Source
	    /// </summary>
        [DataObjectMethod(DataObjectMethodType.Update, true)]
	    public void Update(int UOMConversionID,string ItemNo,string FromUOM,string ToUOM,double ConversionRate)
	    {
		    UOMConversion item = new UOMConversion();
	        item.MarkOld();
	        item.IsLoaded = true;
		    
			item.UOMConversionID = UOMConversionID;
				
			item.ItemNo = ItemNo;
				
			item.FromUOM = FromUOM;
				
			item.ToUOM = ToUOM;
				
			item.ConversionRate = ConversionRate;
				
	        item.Save(UserName);
	    }
    }
}
