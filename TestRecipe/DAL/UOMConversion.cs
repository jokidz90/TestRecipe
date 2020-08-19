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
	/// Strongly-typed collection for the UOMConversion class.
	/// </summary>
    [Serializable]
	public partial class UOMConversionCollection : ActiveList<UOMConversion, UOMConversionCollection>
	{	   
		public UOMConversionCollection() {}
        
        /// <summary>
		/// Filters an existing collection based on the set criteria. This is an in-memory filter
		/// Thanks to developingchris for this!
        /// </summary>
        /// <returns>UOMConversionCollection</returns>
		public UOMConversionCollection Filter()
        {
            for (int i = this.Count - 1; i > -1; i--)
            {
                UOMConversion o = this[i];
                foreach (SubSonic.Where w in this.wheres)
                {
                    bool remove = false;
                    System.Reflection.PropertyInfo pi = o.GetType().GetProperty(w.ColumnName);
                    if (pi.CanRead)
                    {
                        object val = pi.GetValue(o, null);
                        switch (w.Comparison)
                        {
                            case SubSonic.Comparison.Equals:
                                if (!val.Equals(w.ParameterValue))
                                {
                                    remove = true;
                                }
                                break;
                        }
                    }
                    if (remove)
                    {
                        this.Remove(o);
                        break;
                    }
                }
            }
            return this;
        }
		
		
	}
	/// <summary>
	/// This is an ActiveRecord class which wraps the UOMConversion table.
	/// </summary>
	[Serializable]
	public partial class UOMConversion : ActiveRecord<UOMConversion>, IActiveRecord
	{
		#region .ctors and Default Settings
		
		public UOMConversion()
		{
		  SetSQLProps();
		  InitSetDefaults();
		  MarkNew();
		}
		
		private void InitSetDefaults() { SetDefaults(); }
		
		public UOMConversion(bool useDatabaseDefaults)
		{
			SetSQLProps();
			if(useDatabaseDefaults)
				ForceDefaults();
			MarkNew();
		}
        
		public UOMConversion(object keyID)
		{
			SetSQLProps();
			InitSetDefaults();
			LoadByKey(keyID);
		}
		 
		public UOMConversion(string columnName, object columnValue)
		{
			SetSQLProps();
			InitSetDefaults();
			LoadByParam(columnName,columnValue);
		}
		
		protected static void SetSQLProps() { GetTableSchema(); }
		
		#endregion
		
		#region Schema and Query Accessor	
		public static Query CreateQuery() { return new Query(Schema); }
		public static TableSchema.Table Schema
		{
			get
			{
				if (BaseSchema == null)
					SetSQLProps();
				return BaseSchema;
			}
		}
		
		private static void GetTableSchema() 
		{
			if(!IsSchemaInitialized)
			{
				//Schema declaration
				TableSchema.Table schema = new TableSchema.Table("UOMConversion", TableType.Table, DataService.GetInstance("PowerPOS"));
				schema.Columns = new TableSchema.TableColumnCollection();
				schema.SchemaName = @"dbo";
				//columns
				
				TableSchema.TableColumn colvarUOMConversionID = new TableSchema.TableColumn(schema);
				colvarUOMConversionID.ColumnName = "UOMConversionID";
				colvarUOMConversionID.DataType = DbType.Int32;
				colvarUOMConversionID.MaxLength = 0;
				colvarUOMConversionID.AutoIncrement = false;
				colvarUOMConversionID.IsNullable = false;
				colvarUOMConversionID.IsPrimaryKey = true;
				colvarUOMConversionID.IsForeignKey = false;
				colvarUOMConversionID.IsReadOnly = false;
				colvarUOMConversionID.DefaultSetting = @"";
				colvarUOMConversionID.ForeignKeyTableName = "";
				schema.Columns.Add(colvarUOMConversionID);
				
				TableSchema.TableColumn colvarItemNo = new TableSchema.TableColumn(schema);
				colvarItemNo.ColumnName = "ItemNo";
				colvarItemNo.DataType = DbType.AnsiString;
				colvarItemNo.MaxLength = 50;
				colvarItemNo.AutoIncrement = false;
				colvarItemNo.IsNullable = false;
				colvarItemNo.IsPrimaryKey = false;
				colvarItemNo.IsForeignKey = true;
				colvarItemNo.IsReadOnly = false;
				colvarItemNo.DefaultSetting = @"";
				
					colvarItemNo.ForeignKeyTableName = "Item";
				schema.Columns.Add(colvarItemNo);
				
				TableSchema.TableColumn colvarFromUOM = new TableSchema.TableColumn(schema);
				colvarFromUOM.ColumnName = "FromUOM";
				colvarFromUOM.DataType = DbType.String;
				colvarFromUOM.MaxLength = 50;
				colvarFromUOM.AutoIncrement = false;
				colvarFromUOM.IsNullable = false;
				colvarFromUOM.IsPrimaryKey = false;
				colvarFromUOM.IsForeignKey = false;
				colvarFromUOM.IsReadOnly = false;
				colvarFromUOM.DefaultSetting = @"";
				colvarFromUOM.ForeignKeyTableName = "";
				schema.Columns.Add(colvarFromUOM);
				
				TableSchema.TableColumn colvarToUOM = new TableSchema.TableColumn(schema);
				colvarToUOM.ColumnName = "ToUOM";
				colvarToUOM.DataType = DbType.String;
				colvarToUOM.MaxLength = 50;
				colvarToUOM.AutoIncrement = false;
				colvarToUOM.IsNullable = false;
				colvarToUOM.IsPrimaryKey = false;
				colvarToUOM.IsForeignKey = false;
				colvarToUOM.IsReadOnly = false;
				colvarToUOM.DefaultSetting = @"";
				colvarToUOM.ForeignKeyTableName = "";
				schema.Columns.Add(colvarToUOM);
				
				TableSchema.TableColumn colvarConversionRate = new TableSchema.TableColumn(schema);
				colvarConversionRate.ColumnName = "ConversionRate";
				colvarConversionRate.DataType = DbType.Double;
				colvarConversionRate.MaxLength = 0;
				colvarConversionRate.AutoIncrement = false;
				colvarConversionRate.IsNullable = false;
				colvarConversionRate.IsPrimaryKey = false;
				colvarConversionRate.IsForeignKey = false;
				colvarConversionRate.IsReadOnly = false;
				colvarConversionRate.DefaultSetting = @"";
				colvarConversionRate.ForeignKeyTableName = "";
				schema.Columns.Add(colvarConversionRate);
				
				BaseSchema = schema;
				//add this schema to the provider
				//so we can query it later
				DataService.Providers["PowerPOS"].AddSchema("UOMConversion",schema);
			}
		}
		#endregion
		
		#region Props
		  
		[XmlAttribute("UOMConversionID")]
		[Bindable(true)]
		public int UOMConversionID 
		{
			get { return GetColumnValue<int>(Columns.UOMConversionID); }
			set { SetColumnValue(Columns.UOMConversionID, value); }
		}
		  
		[XmlAttribute("ItemNo")]
		[Bindable(true)]
		public string ItemNo 
		{
			get { return GetColumnValue<string>(Columns.ItemNo); }
			set { SetColumnValue(Columns.ItemNo, value); }
		}
		  
		[XmlAttribute("FromUOM")]
		[Bindable(true)]
		public string FromUOM 
		{
			get { return GetColumnValue<string>(Columns.FromUOM); }
			set { SetColumnValue(Columns.FromUOM, value); }
		}
		  
		[XmlAttribute("ToUOM")]
		[Bindable(true)]
		public string ToUOM 
		{
			get { return GetColumnValue<string>(Columns.ToUOM); }
			set { SetColumnValue(Columns.ToUOM, value); }
		}
		  
		[XmlAttribute("ConversionRate")]
		[Bindable(true)]
		public double ConversionRate 
		{
			get { return GetColumnValue<double>(Columns.ConversionRate); }
			set { SetColumnValue(Columns.ConversionRate, value); }
		}
		
		#endregion
		
		
			
		
		#region ForeignKey Properties
		
		/// <summary>
		/// Returns a Item ActiveRecord object related to this UOMConversion
		/// 
		/// </summary>
		public PowerPOS.Item Item
		{
			get { return PowerPOS.Item.FetchByID(this.ItemNo); }
			set { SetColumnValue("ItemNo", value.ItemNo); }
		}
		
		
		#endregion
		
		
		
		//no ManyToMany tables defined (0)
		
        
        
		#region ObjectDataSource support
		
		
		/// <summary>
		/// Inserts a record, can be used with the Object Data Source
		/// </summary>
		public static void Insert(int varUOMConversionID,string varItemNo,string varFromUOM,string varToUOM,double varConversionRate)
		{
			UOMConversion item = new UOMConversion();
			
			item.UOMConversionID = varUOMConversionID;
			
			item.ItemNo = varItemNo;
			
			item.FromUOM = varFromUOM;
			
			item.ToUOM = varToUOM;
			
			item.ConversionRate = varConversionRate;
			
		
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		
		/// <summary>
		/// Updates a record, can be used with the Object Data Source
		/// </summary>
		public static void Update(int varUOMConversionID,string varItemNo,string varFromUOM,string varToUOM,double varConversionRate)
		{
			UOMConversion item = new UOMConversion();
			
				item.UOMConversionID = varUOMConversionID;
			
				item.ItemNo = varItemNo;
			
				item.FromUOM = varFromUOM;
			
				item.ToUOM = varToUOM;
			
				item.ConversionRate = varConversionRate;
			
			item.IsNew = false;
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		#endregion
        
        
        
        #region Typed Columns
        
        
        public static TableSchema.TableColumn UOMConversionIDColumn
        {
            get { return Schema.Columns[0]; }
        }
        
        
        
        public static TableSchema.TableColumn ItemNoColumn
        {
            get { return Schema.Columns[1]; }
        }
        
        
        
        public static TableSchema.TableColumn FromUOMColumn
        {
            get { return Schema.Columns[2]; }
        }
        
        
        
        public static TableSchema.TableColumn ToUOMColumn
        {
            get { return Schema.Columns[3]; }
        }
        
        
        
        public static TableSchema.TableColumn ConversionRateColumn
        {
            get { return Schema.Columns[4]; }
        }
        
        
        
        #endregion
		#region Columns Struct
		public struct Columns
		{
			 public static string UOMConversionID = @"UOMConversionID";
			 public static string ItemNo = @"ItemNo";
			 public static string FromUOM = @"FromUOM";
			 public static string ToUOM = @"ToUOM";
			 public static string ConversionRate = @"ConversionRate";
						
		}
		#endregion
		
		#region Update PK Collections
		
        #endregion
    
        #region Deep Save
		
        #endregion
	}
}
