using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;
using System.Collections.Generic;
using Parse;

namespace Lab7
{
	partial class ShoppingCartController : UIViewController
	{
		public ShoppingCartController (IntPtr handle) : base (handle)
		{
		}
		public async override void ViewDidLoad ()
		{ 
			base.ViewDidLoad (); 

			btnCheckout.Layer.CornerRadius = 15;



			try{

				// TODO: specify the name of your table in in place of "tblContacts"  
				// TODO: Add a progress bar 
				List<TableItem> tableItems = new List<TableItem>(); 
				// build a query to get a list of records from the MyPhotos class in Parse  
				// and sort the results by the Name column 
				var currentUser = ParseUser.CurrentUser;
				var query = from bookItems in ParseObject.GetQuery("Orders") 
						where bookItems.Get<string> ("UserObjectId") == currentUser.ObjectId 
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
							Name = bookListItem.Get<string> ("BookTitle"),  
							ObjectID = bookListItem.ObjectId,  
							Photo = bookListItem.Get<ParseFile> ("Picture"),  
							//Description = bookListItem.Get<string> ("Description"),   
							//ISBN = bookListItem.Get<string> ("ISBN"),
							Price = bookListItem.Get<int> ("Price").ToString(),
							//Edition = bookListItem.Get<string> ("Edition"),
							//Author = bookListItem.Get<string> ("Author"),
							IsFavorite = true  
						};
						// assign the retrieved properties to the TableItem’s properties  
						tableItems.Add  
						( 
							new TableItem(bookItem.Name)  
							{ 
								SubHeading="$" + bookItem.Price,   
								ImageUrl = bookItem.Photo.Url.ToString(),  
								IsFavorite = bookItem.IsFavorite, 
								//ISBN = bookItem.ISBN,
								//Author = bookItem.Author,
								//Edition = bookItem.Edition,
								Price = bookItem.Price



							} 
						); 
					}
				}

				// make the image on the table view larger
				tblShoppingCart.RowHeight = 100f;

				// set the table view’s source to that of the new ImageTableSource   
				tblShoppingCart.Source = new ImageTableSource (tableItems, this );   
				tblShoppingCart.ReloadData (); 
			}
			catch (Exception ex) {

				var error = ex.Message;
				var alert = new UIAlertView("Save Book Failed", "Error: " + error, null, "OK");
				alert.Show();
			}
		}

		//partial void Btnsearchback_TouchUpInside (UIButton sender)
		//{
		//	var Search = Storyboard.InstantiateViewController("homemain") as HomeMainController;
		//	NavigationController.PushViewController (Search, true);
		//}
	}
}
