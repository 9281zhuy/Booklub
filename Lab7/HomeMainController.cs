using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;
using System.Collections.Generic;
using Lab7;
using Parse;

namespace Lab7
{
	partial class HomeMainController : UIViewController
	{
		public HomeMainController (IntPtr handle) : base (handle)
		{
			// set the title of your App here
			Title= "Booklub";
		}
			

		public async override void ViewDidLoad ()
		{ 
			base.ViewDidLoad (); 

			NavigationController.SetNavigationBarHidden (true, true);

			btnSearch.Layer.CornerRadius = 15;
			txtSearch.Layer.CornerRadius = 15;

			//txtSearch.Layer.BorderColor = UIColor.White.CGColor;
			txtSearch.Layer.BorderWidth = 1;
		

			try{

			// TODO: specify the name of your table in in place of "tblContacts"  
			// TODO: Add a progress bar 
			List<TableItem> tableItems = new List<TableItem>(); 
			// build a query to get a list of records from the MyPhotos class in Parse  
			// and sort the results by the Name column 
			var query = from bookItems in ParseObject.GetQuery("Textbook") 
				orderby bookItems.CreatedAt descending  select bookItems; 
			// make an asynchronous call to Parse to get the contents of the query above  
			IEnumerable<ParseObject> bookListResults = await query.FindAsync(); 
			// if the returned list from Parse is not empty  
			if (bookListResults != null) 
			{
				// loop through the results and set the object properties  
				foreach (var bookListItem in bookListResults) 
				{ 
					var bookItem = new Textbook ()  
						{ 
						Name = bookListItem.Get<string> ("BookName") + " (" + bookListItem.Get<string> ("ISBN")  + ")",  
						ObjectID = bookListItem.ObjectId,  
						Photo = bookListItem.Get<ParseFile> ("Picture"),  
						//Description = bookListItem.Get<string> ("Description"),   
							ISBN = bookListItem.Get<string> ("ISBN"),
							Price = bookListItem.Get<string> ("Price"),
							Edition = bookListItem.Get<string> ("Edition"),
							Author = bookListItem.Get<string> ("Author"),
							IsFavorite = false 
					};
					// assign the retrieved properties to the TableItem’s properties  
					tableItems.Add  
					( 
						new TableItem(bookItem.Name)  
						{ 
							SubHeading=bookItem.Description,   
							ImageUrl = bookItem.Photo.Url.ToString(),  
							IsFavorite = bookItem.IsFavorite, 
								ISBN = bookItem.ISBN,
								Author = bookItem.Author,
								Edition = bookItem.Edition,
								Price = bookItem.Price


						} 
					); 
				}
			}
			//set the row height
				tblContacts.RowHeight = 100f;
			// set the table view’s source to that of the new ImageTableSource   
			tblContacts.Source = new ImageTableSource (tableItems, this );   
			tblContacts.ReloadData (); 
			}
			catch (Exception ex) {

				var error = ex.Message;
			}
		}


		async partial void BtnSearch_TouchUpInside (UIButton sender)
		{
			var keyword = txtSearch.Text;

			try{

				// TODO: specify the name of your table in in place of "tblContacts"  
				// TODO: Add a progress bar 
				List<TableItem> tableItems = new List<TableItem>(); 
				// build a query to get a list of records from the MyPhotos class in Parse  
				// and sort the results by the Name column 
				var query = from bookItems in ParseObject.GetQuery("Textbook") 
					where bookItems["Author"] == keyword
					orderby bookItems.CreatedAt descending  
					select bookItems; 
				// make an asynchronous call to Parse to get the contents of the query above  
				IEnumerable<ParseObject> bookListResults = await query.FindAsync(); 
				// if the returned list from Parse is not empty  
				if (bookListResults != null) 
				{
					// loop through the results and set the object properties  
					foreach (var bookListItem in bookListResults) 
					{ 
						var bookItem = new Textbook ()  
						{ 
							Name = bookListItem.Get<string> ("BookName") + " (" + bookListItem.Get<string> ("ISBN")  + ")",  
							ObjectID = bookListItem.ObjectId,  
							Photo = bookListItem.Get<ParseFile> ("Picture"),  
							//Description = bookListItem.Get<string> ("Description"),   
							ISBN = bookListItem.Get<string> ("ISBN"),
							Price = bookListItem.Get<string> ("Price"),
							Edition = bookListItem.Get<string> ("Edition"),
							Author = bookListItem.Get<string> ("Author"),
							IsFavorite = false 
						};
						// assign the retrieved properties to the TableItem’s properties  
						tableItems.Add  
						( 
							new TableItem(bookItem.Name)  
							{ 
								//SubHeading=bookItem.Description,   
								ImageUrl = bookItem.Photo.Url.ToString(),  
								IsFavorite = bookItem.IsFavorite, 
								ISBN = bookItem.ISBN,
								Author = bookItem.Author,
								Edition = bookItem.Edition,
								Price = bookItem.Price



							} 
						); 
					}
				}
				// set the table view’s source to that of the new ImageTableSource   
				tblContacts.Source = new ImageTableSource (tableItems, this );   
				tblContacts.ReloadData (); 
			}
			catch (Exception ex) {

				var error = ex.Message;
			}
		}
	}
}
