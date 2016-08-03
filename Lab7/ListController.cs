using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

using System.Collections.Generic;
using Parse;

namespace Lab7
{
	partial class ListController : UITableViewController
	{
		public ListController (IntPtr handle) : base (handle)
		{
		}

				public async override void ViewDidLoad () 
				{ 
					base.ViewDidLoad (); 



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
						Description = bookListItem.Get<string> ("Description"),   
								IsFavorite = false 
							};
							// assign the retrieved properties to the TableItem’s properties  
							tableItems.Add  
							( 
						new TableItem(bookItem.Name)  
								{ 
							SubHeading=bookItem.Description,   
							ImageUrl = bookItem.Photo.Url.ToString(),  
							IsFavorite = bookItem.IsFavorite 
								} 
							); 
						}
					}
					// set the table view’s source to that of the new ImageTableSource   
					//tblContacts.Source = new ImageTableSource (tableItems);   
					//tblContacts.ReloadData (); 
				}

	
	}
}
