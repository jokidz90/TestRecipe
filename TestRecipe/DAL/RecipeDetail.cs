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
	/// Strongly-typed collection for the RecipeDetail class.
	/// </summary>
    [Serializable]
	public partial class RecipeDetailCollection : ActiveList<RecipeDetail, RecipeDetailCollection>
	{	   
		public RecipeDetailCollection() {}
        
        /// <summary>
		/// Filters an existing collection based on the set criteria. This is an in-memory filter
		/// Thanks to developingchris for this!
        /// </summary>
        /// <returns>RecipeDetailCollection</returns>
		public RecipeDetailCollection Filter()
        {
            for (int i = this.Count - 1; i > -1; i--)
            {
                RecipeDetail o = this[i];
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
	/// This is an ActiveRecord class which wraps the RecipeDetail table.
	/// </summary>
	[Serializable]
	public partial class RecipeDetail : ActiveRecord<RecipeDetail>, IActiveRecord
	{
		#region .ctors and Default Settings
		
		public RecipeDetail()
		{
		  SetSQLProps();
		  InitSetDefaults();
		  MarkNew();
		}
		
		private void InitSetDefaults() { SetDefaults(); }
		
		public RecipeDetail(bool useDatabaseDefaults)
		{
			SetSQLProps();
			if(useDatabaseDefaults)
				ForceDefaults();
			MarkNew();
		}
        
		public RecipeDetail(object keyID)
		{
			SetSQLProps();
			InitSetDefaults();
			LoadByKey(keyID);
		}
		 
		public RecipeDetail(string columnName, object columnValue)
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
				TableSchema.Table schema = new TableSchema.Table("RecipeDetail", TableType.Table, DataService.GetInstance("PowerPOS"));
				schema.Columns = new TableSchema.TableColumnCollection();
				schema.SchemaName = @"dbo";
				//columns
				
				TableSchema.TableColumn colvarRecipeDetailID = new TableSchema.TableColumn(schema);
				colvarRecipeDetailID.ColumnName = "RecipeDetailID";
				colvarRecipeDetailID.DataType = DbType.AnsiString;
				colvarRecipeDetailID.MaxLength = 64;
				colvarRecipeDetailID.AutoIncrement = false;
				colvarRecipeDetailID.IsNullable = false;
				colvarRecipeDetailID.IsPrimaryKey = true;
				colvarRecipeDetailID.IsForeignKey = false;
				colvarRecipeDetailID.IsReadOnly = false;
				colvarRecipeDetailID.DefaultSetting = @"";
				colvarRecipeDetailID.ForeignKeyTableName = "";
				schema.Columns.Add(colvarRecipeDetailID);
				
				TableSchema.TableColumn colvarRecipeHeaderID = new TableSchema.TableColumn(schema);
				colvarRecipeHeaderID.ColumnName = "RecipeHeaderID";
				colvarRecipeHeaderID.DataType = DbType.AnsiString;
				colvarRecipeHeaderID.MaxLength = 64;
				colvarRecipeHeaderID.AutoIncrement = false;
				colvarRecipeHeaderID.IsNullable = false;
				colvarRecipeHeaderID.IsPrimaryKey = false;
				colvarRecipeHeaderID.IsForeignKey = true;
				colvarRecipeHeaderID.IsReadOnly = false;
				colvarRecipeHeaderID.DefaultSetting = @"";
				
					colvarRecipeHeaderID.ForeignKeyTableName = "RecipeHeader";
				schema.Columns.Add(colvarRecipeHeaderID);
				
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
				
				TableSchema.TableColumn colvarQty = new TableSchema.TableColumn(schema);
				colvarQty.ColumnName = "Qty";
				colvarQty.DataType = DbType.Double;
				colvarQty.MaxLength = 0;
				colvarQty.AutoIncrement = false;
				colvarQty.IsNullable = false;
				colvarQty.IsPrimaryKey = false;
				colvarQty.IsForeignKey = false;
				colvarQty.IsReadOnly = false;
				colvarQty.DefaultSetting = @"";
				colvarQty.ForeignKeyTableName = "";
				schema.Columns.Add(colvarQty);
				
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
				DataService.Providers["PowerPOS"].AddSchema("RecipeDetail",schema);
			}
		}
		#endregion
		
		#region Props
		  
		[XmlAttribute("RecipeDetailID")]
		[Bindable(true)]
		public string RecipeDetailID 
		{
			get { return GetColumnValue<string>(Columns.RecipeDetailID); }
			set { SetColumnValue(Columns.RecipeDetailID, value); }
		}
		  
		[XmlAttribute("RecipeHeaderID")]
		[Bindable(true)]
		public string RecipeHeaderID 
		{
			get { return GetColumnValue<string>(Columns.RecipeHeaderID); }
			set { SetColumnValue(Columns.RecipeHeaderID, value); }
		}
		  
		[XmlAttribute("ItemNo")]
		[Bindable(true)]
		public string ItemNo 
		{
			get { return GetColumnValue<string>(Columns.ItemNo); }
			set { SetColumnValue(Columns.ItemNo, value); }
		}
		  
		[XmlAttribute("Qty")]
		[Bindable(true)]
		public double Qty 
		{
			get { return GetColumnValue<double>(Columns.Qty); }
			set { SetColumnValue(Columns.Qty, value); }
		}
		  
		[XmlAttribute("Uom")]
		[Bindable(true)]
		public string Uom 
		{
			get { return GetColumnValue<string>(Columns.Uom); }
			set { SetColumnValue(Columns.Uom, value); }
		}
		
		#endregion
		
		
			
		
		#region ForeignKey Properties
		
		/// <summary>
		/// Returns a Item ActiveRecord object related to this RecipeDetail
		/// 
		/// </summary>
		public PowerPOS.Item Item
		{
			get { return PowerPOS.Item.FetchByID(this.ItemNo); }
			set { SetColumnValue("ItemNo", value.ItemNo); }
		}
		
		
		/// <summary>
		/// Returns a RecipeHeader ActiveRecord object related to this RecipeDetail
		/// 
		/// </summary>
		public PowerPOS.RecipeHeader RecipeHeader
		{
			get { return PowerPOS.RecipeHeader.FetchByID(this.RecipeHeaderID); }
			set { SetColumnValue("RecipeHeaderID", value.RecipeHeaderID); }
		}
		
		
		#endregion
		
		
		
		//no ManyToMany tables defined (0)
		
        
        
		#region ObjectDataSource support
		
		
		/// <summary>
		/// Inserts a record, can be used with the Object Data Source
		/// </summary>
		public static void Insert(string varRecipeDetailID,string varRecipeHeaderID,string varItemNo,double varQty,string varUom)
		{
			RecipeDetail item = new RecipeDetail();
			
			item.RecipeDetailID = varRecipeDetailID;
			
			item.RecipeHeaderID = varRecipeHeaderID;
			
			item.ItemNo = varItemNo;
			
			item.Qty = varQty;
			
			item.Uom = varUom;
			
		
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		
		/// <summary>
		/// Updates a record, can be used with the Object Data Source
		/// </summary>
		public static void Update(string varRecipeDetailID,string varRecipeHeaderID,string varItemNo,double varQty,string varUom)
		{
			RecipeDetail item = new RecipeDetail();
			
				item.RecipeDetailID = varRecipeDetailID;
			
				item.RecipeHeaderID = varRecipeHeaderID;
			
				item.ItemNo = varItemNo;
			
				item.Qty = varQty;
			
				item.Uom = varUom;
			
			item.IsNew = false;
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		#endregion
        
        
        
        #region Typed Columns
        
        
        public static TableSchema.TableColumn RecipeDetailIDColumn
        {
            get { return Schema.Columns[0]; }
        }
        
        
        
        public static TableSchema.TableColumn RecipeHeaderIDColumn
        {
            get { return Schema.Columns[1]; }
        }
        
        
        
        public static TableSchema.TableColumn ItemNoColumn
        {
            get { return Schema.Columns[2]; }
        }
        
        
        
        public static TableSchema.TableColumn QtyColumn
        {
            get { return Schema.Columns[3]; }
        }
        
        
        
        public static TableSchema.TableColumn UomColumn
        {
            get { return Schema.Columns[4]; }
        }
        
        
        
        #endregion
		#region Columns Struct
		public struct Columns
		{
			 public static string RecipeDetailID = @"RecipeDetailID";
			 public static string RecipeHeaderID = @"RecipeHeaderID";
			 public static string ItemNo = @"ItemNo";
			 public static string Qty = @"Qty";
			 public static string Uom = @"UOM";
						
		}
		#endregion
		
		#region Update PK Collections
		
        #endregion
    
        #region Deep Save
		
        #endregion
	}
}
