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
	/// Strongly-typed collection for the RecipeHeader class.
	/// </summary>
    [Serializable]
	public partial class RecipeHeaderCollection : ActiveList<RecipeHeader, RecipeHeaderCollection>
	{	   
		public RecipeHeaderCollection() {}
        
        /// <summary>
		/// Filters an existing collection based on the set criteria. This is an in-memory filter
		/// Thanks to developingchris for this!
        /// </summary>
        /// <returns>RecipeHeaderCollection</returns>
		public RecipeHeaderCollection Filter()
        {
            for (int i = this.Count - 1; i > -1; i--)
            {
                RecipeHeader o = this[i];
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
	/// This is an ActiveRecord class which wraps the RecipeHeader table.
	/// </summary>
	[Serializable]
	public partial class RecipeHeader : ActiveRecord<RecipeHeader>, IActiveRecord
	{
		#region .ctors and Default Settings
		
		public RecipeHeader()
		{
		  SetSQLProps();
		  InitSetDefaults();
		  MarkNew();
		}
		
		private void InitSetDefaults() { SetDefaults(); }
		
		public RecipeHeader(bool useDatabaseDefaults)
		{
			SetSQLProps();
			if(useDatabaseDefaults)
				ForceDefaults();
			MarkNew();
		}
        
		public RecipeHeader(object keyID)
		{
			SetSQLProps();
			InitSetDefaults();
			LoadByKey(keyID);
		}
		 
		public RecipeHeader(string columnName, object columnValue)
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
				TableSchema.Table schema = new TableSchema.Table("RecipeHeader", TableType.Table, DataService.GetInstance("PowerPOS"));
				schema.Columns = new TableSchema.TableColumnCollection();
				schema.SchemaName = @"dbo";
				//columns
				
				TableSchema.TableColumn colvarRecipeHeaderID = new TableSchema.TableColumn(schema);
				colvarRecipeHeaderID.ColumnName = "RecipeHeaderID";
				colvarRecipeHeaderID.DataType = DbType.AnsiString;
				colvarRecipeHeaderID.MaxLength = 64;
				colvarRecipeHeaderID.AutoIncrement = false;
				colvarRecipeHeaderID.IsNullable = false;
				colvarRecipeHeaderID.IsPrimaryKey = true;
				colvarRecipeHeaderID.IsForeignKey = false;
				colvarRecipeHeaderID.IsReadOnly = false;
				colvarRecipeHeaderID.DefaultSetting = @"";
				colvarRecipeHeaderID.ForeignKeyTableName = "";
				schema.Columns.Add(colvarRecipeHeaderID);
				
				TableSchema.TableColumn colvarRecipeName = new TableSchema.TableColumn(schema);
				colvarRecipeName.ColumnName = "RecipeName";
				colvarRecipeName.DataType = DbType.AnsiString;
				colvarRecipeName.MaxLength = 150;
				colvarRecipeName.AutoIncrement = false;
				colvarRecipeName.IsNullable = false;
				colvarRecipeName.IsPrimaryKey = false;
				colvarRecipeName.IsForeignKey = false;
				colvarRecipeName.IsReadOnly = false;
				colvarRecipeName.DefaultSetting = @"";
				colvarRecipeName.ForeignKeyTableName = "";
				schema.Columns.Add(colvarRecipeName);
				
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
				
				BaseSchema = schema;
				//add this schema to the provider
				//so we can query it later
				DataService.Providers["PowerPOS"].AddSchema("RecipeHeader",schema);
			}
		}
		#endregion
		
		#region Props
		  
		[XmlAttribute("RecipeHeaderID")]
		[Bindable(true)]
		public string RecipeHeaderID 
		{
			get { return GetColumnValue<string>(Columns.RecipeHeaderID); }
			set { SetColumnValue(Columns.RecipeHeaderID, value); }
		}
		  
		[XmlAttribute("RecipeName")]
		[Bindable(true)]
		public string RecipeName 
		{
			get { return GetColumnValue<string>(Columns.RecipeName); }
			set { SetColumnValue(Columns.RecipeName, value); }
		}
		  
		[XmlAttribute("ItemNo")]
		[Bindable(true)]
		public string ItemNo 
		{
			get { return GetColumnValue<string>(Columns.ItemNo); }
			set { SetColumnValue(Columns.ItemNo, value); }
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
			return new PowerPOS.RecipeDetailCollection().Where(RecipeDetail.Columns.RecipeHeaderID, RecipeHeaderID).Load();
		}
		#endregion
		
			
		
		#region ForeignKey Properties
		
		/// <summary>
		/// Returns a Item ActiveRecord object related to this RecipeHeader
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
		public static void Insert(string varRecipeHeaderID,string varRecipeName,string varItemNo)
		{
			RecipeHeader item = new RecipeHeader();
			
			item.RecipeHeaderID = varRecipeHeaderID;
			
			item.RecipeName = varRecipeName;
			
			item.ItemNo = varItemNo;
			
		
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		
		/// <summary>
		/// Updates a record, can be used with the Object Data Source
		/// </summary>
		public static void Update(string varRecipeHeaderID,string varRecipeName,string varItemNo)
		{
			RecipeHeader item = new RecipeHeader();
			
				item.RecipeHeaderID = varRecipeHeaderID;
			
				item.RecipeName = varRecipeName;
			
				item.ItemNo = varItemNo;
			
			item.IsNew = false;
			if (System.Web.HttpContext.Current != null)
				item.Save(System.Web.HttpContext.Current.User.Identity.Name);
			else
				item.Save(System.Threading.Thread.CurrentPrincipal.Identity.Name);
		}
		#endregion
        
        
        
        #region Typed Columns
        
        
        public static TableSchema.TableColumn RecipeHeaderIDColumn
        {
            get { return Schema.Columns[0]; }
        }
        
        
        
        public static TableSchema.TableColumn RecipeNameColumn
        {
            get { return Schema.Columns[1]; }
        }
        
        
        
        public static TableSchema.TableColumn ItemNoColumn
        {
            get { return Schema.Columns[2]; }
        }
        
        
        
        #endregion
		#region Columns Struct
		public struct Columns
		{
			 public static string RecipeHeaderID = @"RecipeHeaderID";
			 public static string RecipeName = @"RecipeName";
			 public static string ItemNo = @"ItemNo";
						
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
