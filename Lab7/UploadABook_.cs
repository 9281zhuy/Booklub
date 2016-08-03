using UIKit;
using Parse;
using Foundation;
using System;
using System.CodeDom.Compiler;

namespace Lab7
{
	partial class UploadABook : UIViewController
	{
		ParseFile imageFile;
		
		public UploadABook (IntPtr handle) : base (handle)
		{
			// set the title of your App here
			Title= "Upload Books";
		}

		public override void ViewDidLoad()
		{
			

			base.ViewDidLoad ();

			btnbook.Layer.CornerRadius = 15;
			btnuploadabook.Layer.CornerRadius = 20;
			btnuploadabook.TouchUpInside += (object sender, EventArgs e) => { 
				string Name = txtname.Text; 
				string Author = txtauthor.Text;
				string Edition = txtedition.Text;
				string ISBN = txtisbn.Text;
				string Price = txtbookprice.Text;
				string Email = txtemail.Text;
			};

			txtname.ShouldReturn = delegate
			{
				// Changed this slightly to move the text entry to the next field.
				txtname.ResignFirstResponder();
				return true;
			};

			txtisbn.ShouldReturn = delegate
			{
				txtisbn.ResignFirstResponder();
				return true;
			};

			txtedition.ShouldReturn = delegate
			{
				// Changed this slightly to move the text entry to the next field.
				txtedition.ResignFirstResponder();
				return true;
			};

			txtbookprice.ShouldReturn = delegate
			{
				txtbookprice.ResignFirstResponder();
				return true;
			};

			txtauthor.ShouldReturn = delegate
			{
				// Changed this slightly to move the text entry to the next field.
				txtauthor.ResignFirstResponder();
				return true;
			};

			txtemail.ShouldReturn = delegate
			{
				// Changed this slightly to move the text entry to the next field.
				txtemail.ResignFirstResponder();
				return true;
			};


		}

		partial void Btnbook_TouchUpInside (UIButton sender)

		{
			deHao.Lab7.Camera.TakePicture (this, async (obj) =>{ 


				var photo = obj.ValueForKey(new NSString("UIImagePickerControllerOriginalImage")) 
					as UIImage; 
				var documentsDirectory = Environment.GetFolderPath  (Environment.SpecialFolder.Personal); 
				string imageFileName = "Picture.jpg"; 
				string jpgFilename = System.IO.Path.Combine (documentsDirectory, imageFileName); // hardcoded filename, overwritten each time 

				NSData imgData = photo.AsJPEG();  NSError err = null; 

				try
				{

					if (imgData.Save(jpgFilename, false, out err))  
					{ 
						// TODO: show image in the imageView 
						UIImage outputImage = UIImage.FromFile(jpgFilename);  
						imgpic.Image = outputImage; 



					}

					else
					{

						Console.WriteLine("NOT saved as " + jpgFilename + " because" + err.LocalizedDescription); 
					}

				}
				catch(Exception ex) 
				{
					Console.WriteLine("Error: " + ex.Message); 
				}
			});



		}

		async partial void Btnuploadabook_TouchUpInside (UIButton sender)
		{
			ParseObject Textbook = new ParseObject("Textbook"); // table name, case-sensitive
			Textbook["BookName"] = txtname.Text;
			Textbook["ISBN"] = txtisbn.Text;
			Textbook["Edition"] = txtedition.Text;
			Textbook["Author"] = txtauthor.Text;
			Textbook["Price"] = txtbookprice.Text;
			Textbook["ContactEmail"] = txtemail.Text;

 



			// column name, it is case-sensitive

			// call Parse to create a new user, put it in a try-catch block 
			// if an internet connection doesn’t exist, the Parse call will fail
			// in addition, if the email already exists in Parse, the call will fail
			try
			{
				// convert the UIImage to Bytes array 
				var imageStream = imgpic.Image.AsJPEG (.25f).AsStream (); // reduce the image quality by 75% 
				ParseFile imageFile = new ParseFile("Picture.jpg",imageStream); 

				// Save the file to Parse first  
				await imageFile.SaveAsync();

				// now save a reference to the image in your database table  
				// name of your Parse Table 
				Textbook["UserObjectId"] = ParseUser.CurrentUser.ObjectId;
				// logged-in user 
				Textbook["Picture"] = imageFile; // the Parse file

				await Textbook.SaveAsync();
			}
			catch (Exception ex) {

				var error = ex.Message;
				var alert = new UIAlertView("Save Book Failed", "Error: " + error, null, "OK");
				alert.Show();

			}



		}

		partial void Btnbookback_TouchUpInside (UIButton sender)
		{
			var Tab = Storyboard.InstantiateViewController("TabBarController") as UITabBarController;
			NavigationController.PushViewController (Tab, true);
		}


		partial void AmazonPrice_TouchUpInside(UIButton sender)
		{
			var Web = Storyboard.InstantiateViewController("webview") as WebViewController;
			Web.keyword = txtisbn.Text;
			NavigationController.PushViewController(Web, true);
		}
	}

}

	
