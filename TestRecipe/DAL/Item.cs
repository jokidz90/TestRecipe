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
	/// Strongly-typed collection for the Item class.
	/// </summary>
    [Serializable]
	public partial class ItemCollection : ActiveList<Item, ItemCollection>
	{	   
		public ItemCollection() {}
        
        /// <summary>
		/// Filters an existing collection based on the set criteria. This is an in-memory filter
		/// Thanks to developingchris for this!
        /// </summary>
        /// <returns>ItemCollection</returns>
		public ItemCollection Filter()
        {
            for (int i = this.Count - 1; i > -1; i--)
            {
                Item o = this[i];
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
	/// This is an ActiveRecord class which wraps the Item table.
	/// </summary>
	[Serializable]
	public partial class Item : ActiveRecord<Item>, IActiveRecord
	{
		#region .ctors and Default Settings
		
		public Item()
		{
		  SetSQLProps();
		  InitSetDefaults();
		  MarkNew();
		}
		
		private void InitSetDefaults() { SetDefaults(); }
		
		public Item(bool useDatabaseDefaults)
		{
			SetSQLProps();
			if(useDatabaseDefaults)
				ForceDefaults();
			MarkNew();
		}
        
		public Item(object keyID)
		{
			SetSQLProps();
			InitSetDefaults();
			LoadByKey(keyID);
		}
		 
		public Item(string columnName, object columnValue)
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
				TableSchema.Table schema = new TableSchema.Table("Item", TableType.Table, DataService.GetInstance("PowerPOS"));
				schema.Columns = new TableSchema.TableColumnCollection();
				schema.SchemaName = @"dbo";
				//columns
				
				TableSchema.TableColumn colvarItemNo = new TableSchema.TableColumn(schema);
				colvarItemNo.ColumnName = "ItemNo";
				colvarItemNo.DataType = DbType.AnsiString;
				colvarItemNo.MaxLength = 50;
				colvarItemNo.AutoIncrement = false;
				colvarItemNo.IsNullable = false;
				colvarItemNo.IsPrimaryKey = true;
				colvarItemNo.IsForeignKey = false;
				colvarItemNo.IsReadOnly = false;
				colvarItemNo.DefaultSetting = @"";
				colvarItemNo.ForeignKeyTableName = "";
				schema.Columns.Add(colvarItemNo);
				
				TableSchema.TableColumn colvarItemName = new TableSchema.TableColumn(schema);
				colvarItemName.ColumnName = "ItemName";
				colvarItemName.DataType = DbType.String;
				colvarItemName.MaxLength = 160;
				colvarItemName.AutoIncrement = false;
				colvarItemName.IsNullable = false;
				colvarItemName.IsPrimaryKey = false;
				colvarItemName.IsForeignKey = false;
				colvarItemName.IsReadOnly = false;
				colvarItemName.DefaultSetting = @"";
				colvarItemName.ForeignKeyTableName = "";
				schema.Columns.Add(colvarItemName);
				
				TableSchema.TableColumn colvarCategoryName = new TableSchema.TableColumn(schema);
				colvarCategoryName.ColumnName = "CategoryName";
				colvarCategoryName.DataType = DbType.String;
				colvarCategoryName.MaxLength = 150;
				colvarCategoryName.AutoIncrement = false;
				colvarCategoryName.IsNullable = false;
				colvarCategoryName.IsPrimaryKey = false;
				colvarCategoryName.IsForeignKey = false;
				colvarCategoryName.IsReadOnly = false;
				colvarCategoryName.DefaultSetting = @"";
				colvarCategoryName.ForeignKeyTableName = "";
				schema.Columns.Add(colvarCategoryName);
				
				TableSchema.TableColumn colvarRetailPrice = new TableSchema.TableColumn(schema);
				colvarRetailPrice.ColumnName = "RetailPrice";
				colvarRetailPrice.DataType = DbType.Currency;
				colvarRetailPrice.MaxLength = 0;
				colvarRetailPrice.AutoIncrement = false;
				colvarRetailPrice.IsNullable = false;
				colvarRetailPrice.IsPrimaryKey = false;
				colvarRetailPrice.IsForeignKey = false;
				colvarRetailPrice.IsReadOnly = false;
				colvarRetailPrice.DefaultSetting = @"";
				colvarRetailPrice.ForeignKeyTableName = "";
				schema.Columns.Add(colvarRetailPrice);
				
				TableSchema.TableColumn colvarFactoryPrice = new TableSchema.TableColumn(schema);
				colvarFactoryPrice.ColumnName = "FactoryPrice";
				colvarFactoryPrice.DataType = DbType.Currency;
				colvarFactoryPrice.MaxLength = 0;
				colvarFactoryPrice.AutoIncrement = false;
				colvarFactoryPrice.IsNullable = false;
				colvarFactoryPrice.IsPrimaryKey = false;
				colvarFactoryPrice.IsForeignKey = false;
				colvarFactoryPrice.IsReadOnly = false;
				colvarFactoryPrice.DefaultSetting = @"";
				colvarFactoryPrice.ForeignKeyTableName = "";
				schema.Columns.Add(colvarFactoryPrice);
				
				TableSchema.TableColumn colvarUom = new TableSchema.TableColumn(schema);
				colvarUom.ColumnName = "UOM";
				colvarUom.DataType = DbType.String;
				colvarUom.MaxLength = 50;
				colvarUom.AutoIncrement = false;
				colvarUom.IsNullable = true;
				colvarUom.IsPrimaryKey = false;
				colvarUom.IsForeignKey = false;
				colvarUom.IsReadOnly = false;
				colvarUom.DefaultSetting = @"";
				colvarUom.ForeignKeyTableName = "";
				schema.Columns.Add(colvarUom);
				
				BaseSchema = schema;
				//add this schema to the provider
				//so we can query it later
				DataService.Providers["PowerPOS"].AddSchema("Item",schema);
			}
		}
		#endregion
		
		#region Props
		  
		[XmlAttribute("ItemNo")]
		[Bindable(true)]
		public string ItemNo 
		{
			get { return GetColumnValue<string>(Columns.ItemNo); }
			set { SetColumnValue(Columns.ItemNo, value); }
		}
		  
		[XmlAttribute("ItemName")]
		[Bindable(true)]
		public string ItemName 
		{
			get { return GetColumnValue<string>(Columns.ItemName); }
			set { SetColumnValue(Columns.ItemName, value); }
		}
		  
		[XmlAttribute("CategoryName")]
		[Bindable(true)]
		public string CategoryName 
		{
			get { return GetColumnValue<string>(Columns.CategoryName); }
			set { SetColumnValue(Columns.CategoryName, value); }
		}
		  
		[XmlAttribute("RetailPrice")]
		[Bindable(true)]
		public decimal RetailPrice 
		{
			get { return GetColumnValue<decimal>(Columns.RetailPrice); }
			set { SetColumnValue(Columns.RetailPrice, value); }
		}
		  
		[XmlAttribute("FactoryPrice")]
		[Bindable(true)]
		public decimal FactoryPrice 
		{
			get { return GetColumnValue<decimal>(Columns.FactoryPrice); }
			set { SetColumnValue(Columns.FactoryPrice, value); }
		}
		  
		[XmlAttribute("Uom")]
		[Bindable(true)]
		public string Uom 
		{
			get { return GetColumnValue<string>(Columns.Uom); }
			set { SetColumnValue(Columns.Uom, value); }
		}
		
		#endregion
		
		
		#region PrimaryKey Methods		
		
        protected override void SetPrimaryKey(object oValue)
        {
            base.SetPrimaryKey(oValue);
            
            SetPKValues();
        }
        
		
		public PowerPOS.RecipeDetailCollection RecipeDetailRecords()
		{
			return new PowerPOS.RecipeDetailCollection().Where(RecipeDetail.Columns.ItemNo, ItemNo).Load();
		}
		public PowerPOS.RecipeHeaderCollection RecipeHeaderRecords()
		{
			return new PowerPOS.RecipeHeaderCollection().Where(RecipeHeader.Columns.ItemNo, ItemNo).Load();
		}
		public PowerPOS.UOMConversionCollection UOMConversionRecords()
		{
			return new PowerPOS.UOMConversionCollection().Where(UOMConversion.Columns.ItemNo, ItemNo).Load();
		}
		#endregion
		
			
		
		//no foreign key tables defined (0)
		
		
		
		//no ManyToMany tables defined (0)
		
        
        
		#region ObjectDataSource support
		
		
		/// <summary>
		/// Inserts a record, can be used with the Object Data Source
		/// </summary>
		public static void Insert(string varItemNo,string varItemName,string varCategoryName,decimal varRetailPrice,decimal varFactoryPrice,string varUom)
		{
			Item item = new Item();
			
			item.ItemNo = varItemNo;
			
			item.ItemName = varItemName;
			
			item.CategoryName = varCategoryName;
			
			item.RetailPrice = varRetailPrice;
			
			item.FactoryPrice = varFactoryPrice;
			
			item.Uom = varUom;
			
		
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		
		/// <summary>
		/// Updates a record, can be used with the Object Data Source
		/// </summary>
		public static void Update(string varItemNo,string varItemName,string varCategoryName,decimal varRetailPrice,decimal varFactoryPrice,string varUom)
		{
			Item item = new Item();
			
				item.ItemNo = varItemNo;
			
				item.ItemName = varItemName;
			
				item.CategoryName = varCategoryName;
			
				item.RetailPrice = varRetailPrice;
			
				item.FactoryPrice = varFactoryPrice;
			
				item.Uom = varUom;
			
			item.IsNew = false;
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		#endregion
        
        
        
        #region Typed Columns
        
        
        public static TableSchema.TableColumn ItemNoColumn
        {
            get { return Schema.Columns[0]; }
        }
        
        
        
        public static TableSchema.TableColumn ItemNameColumn
        {
            get { return Schema.Columns[1]; }
        }
        
        
        
        public static TableSchema.TableColumn CategoryNameColumn
        {
            get { return Schema.Columns[2]; }
        }
        
        
        
        public static TableSchema.TableColumn RetailPriceColumn
        {
            get { return Schema.Columns[3]; }
        }
        
        
        
        public static TableSchema.TableColumn FactoryPriceColumn
        {
            get { return Schema.Columns[4]; }
        }
        
        
        
        public static TableSchema.TableColumn UomColumn
        {
            get { return Schema.Columns[5]; }
        }
        
        
        
        #endregion
		#region Columns Struct
		public struct Columns
		{
			 public static string ItemNo = @"ItemNo";
			 public static string ItemName = @"ItemName";
			 public static string CategoryName = @"CategoryName";
			 public static string RetailPrice = @"RetailPrice";
			 public static string FactoryPrice = @"FactoryPrice";
			 public static string Uom = @"UOM";
						
		}
		#endregion
		
		#region Update PK Collections
		
        public void SetPKValues()
        {
}
        #endregion
    
        #region Deep Save
		
        public void DeepSave()
        {
            Save();
            
}
        #endregion
	}
}
