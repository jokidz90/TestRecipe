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
	#region Tables Struct
	public partial struct Tables
	{
		
		public static string Item = @"Item";
        
		public static string RecipeDetail = @"RecipeDetail";
        
		public static string RecipeHeader = @"RecipeHeader";
        
		public static string UOMConversion = @"UOMConversion";
        
	}
	#endregion
    #region Schemas
    public partial class Schemas {
		
		public static TableSchema.Table Item{
            get { return DataService.GetSchema("Item","PowerPOS"); }
		}
        
		public static TableSchema.Table RecipeDetail{
            get { return DataService.GetSchema("RecipeDetail","PowerPOS"); }
		}
        
		public static TableSchema.Table RecipeHeader{
            get { return DataService.GetSchema("RecipeHeader","PowerPOS"); }
		}
        
		public static TableSchema.Table UOMConversion{
            get { return DataService.GetSchema("UOMConversion","PowerPOS"); }
		}
        
	
    }
    #endregion
    #region View Struct
    public partial struct Views 
    {
		
    }
    #endregion
    
    #region Query Factories
	public static partial class DB
	{
        public static DataProvider _provider = DataService.Providers["PowerPOS"];
        static ISubSonicRepository _repository;
        public static ISubSonicRepository Repository {
            get {
                if (_repository == null)
                    return new SubSonicRepository(_provider);
                return _repository; 
            }
            set { _repository = value; }
        }
	
        public static Select SelectAllColumnsFrom<T>() where T : RecordBase<T>, new()
	    {
            return Repository.SelectAllColumnsFrom<T>();
            
	    }
	    public static Select Select()
	    {
            return Repository.Select();
	    }
	    
		public static Select Select(params string[] columns)
		{
            return Repository.Select(columns);
        }
	    
		public static Select Select(params Aggregate[] aggregates)
		{
            return Repository.Select(aggregates);
        }
   
	    public static Update Update<T>() where T : RecordBase<T>, new()
	    {
            return Repository.Update<T>();
	    }
     
	    
	    public static Insert Insert()
	    {
            return Repository.Insert();
	    }
	    
	    public static Delete Delete()
	    {
            
            return Repository.Delete();
	    }
	    
	    public static InlineQuery Query()
	    {
            
            return Repository.Query();
	    }
	    	    
	    
	}
    #endregion
    
}
#region Databases
public partial struct Databases 
{
	
	public static string PowerPOS = @"PowerPOS";
    
}
#endregion