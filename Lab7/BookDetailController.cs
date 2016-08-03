using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;
using Parse;

namespace Lab7
{
	partial class BookDetailController : UIViewController
	{
		public BookDetailController (IntPtr handle) : base (handle)
		{
			// set the title of your App here
			Title= "Book Detail";


		}

		public TableItem detailedTextbook; 


		public override void ViewDidLoad()
		{
			base.ViewDidLoad ();



			lblName.Text = detailedTextbook.Heading;
			lblAuthor.Text = detailedTextbook.Author;
			lblISBN.Text = detailedTextbook.ISBN;
			//lblemail.Text = detailedTextbook.ContactEmail;
			lblopedition.Text = detailedTextbook.Edition;
			lblPrice.Text = detailedTextbook.Price;
			imgbook.Image = LoadImage(detailedTextbook.ImageUrl.ToString());


		}

		/// <summary>
		/// Loads the remote image from a URL.
		/// </summary>
		/// <returns>The image.</returns>
		/// <param name="uri">URI.</param>
		public UIImage LoadImage (string uri)
		{
			using (var url = new NSUrl (uri))
			using (var data = NSData.FromUrl (url))
				return UIImage.LoadFromData (data);
		}


		async partial void Btndetail_TouchUpInside (UIButton sender)
		{

			try
			{
				// create a new user in Parse, 
				// by setting the default User class properties as follows:

				var currentUser = ParseUser.CurrentUser;
				var orders = new ParseObject("Orders");

				//lblemail.Text = "Sell by" + currentUser ["FirstName"] + " " + currentUser ["LastName"];

				// the non-default fields can be set using the following approach
				orders["UserObjectId"] = currentUser.ObjectId;
				orders["Price"] = double.Parse(lblPrice.Text);
				orders["BookTitle"] = lblName.Text;
				//orders["ContactEmail"] = lblemail.Text;

				// convert the UIImage to Bytes array 
				var imageStream = imgbook.Image.AsJPEG (.25f).AsStream (); // reduce the image quality by 75% 
				ParseFile imageFile = new ParseFile("Picture.jpg",imageStream); 

				// Save the file to Parse first  
				await imageFile.SaveAsync();

				// logged-in user 
				orders["Picture"] = imageFile; // the Parse file


				// make an asynchronous call to Parse to create a new user
				await orders.SaveAsync();

				// show an alert to confirm 
				var alert = new UIAlertView("Added to Cart Successfully", 
					"Your item has been successfully added to the shopping cart!", null, "OK");
				alert.Show();

				var Cart = Storyboard.InstantiateViewController("ShoppingCart") as ShoppingCartController;
				NavigationController.PushViewController (Cart, true);
			}
			catch(Exception ex)
			{
				var error = ex.Message;
				var alert = new UIAlertView("Add to Cart Failed", "Sorry, we might be experiencing some difficulties or your Item is already in the cart", null, "OK");
				alert.Show();
			}


		}

		partial void Btnexchange_TouchUpInside (UIButton sender)
		{
			var currentUser = ParseUser.CurrentUser;
			var alert = new UIAlertView("Contact Seller", "Email:"+" "+ "xiaoshi.guo@mu.edu", null, "OK");
			alert.Show();
		}


		partial void Btndetailback_TouchUpInside (UIButton sender)
		{
			var Tab = Storyboard.InstantiateViewController("TabBarController") as UITabBarController;
			NavigationController.PushViewController (Tab, true);
		}

		partial void BtnCompare_TouchUpInside (UIButton sender)
		{
			var Web = Storyboard.InstantiateViewController("webview") as WebViewController;
			Web.keyword = lblISBN.Text;
			NavigationController.PushViewController (Web, true);
		}
	}
}
