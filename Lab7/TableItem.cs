using System;
using UIKit;

namespace Lab7
{
	public class TableItem
	{
		
		public TableItem ()
		{
		}
		public string Heading { get; set;}
		public string SubHeading { get; set;}
		public string ImageUrl { get; set;}
		//public string Description { get; set;}
		public bool IsFavorite { get; set;}
		public string Price { get; set;}
		public string ISBN { get; set;}
		//public string ContactEmail { get; set;}
		public string Edition { get; set;}
		public string Author { get; set;}


		public UITableViewCellStyle CellStyle 
		{ 
			get { return CellStyle; } 
			set { CellStyle = value; } 
		}

		protected UITableViewCellStyle cellstyle = UITableViewCellStyle.Default;

		public UITableViewCellAccessory CellAccessory 
		{ 
			get { return cellAccessory; } 
			set { cellAccessory = value; }  
		} 
		protected UITableViewCellAccessory cellAccessory = UITableViewCellAccessory.None; 

		public TableItem (string heading) 
		{ 
			Heading = heading;   
		}
	}
}

