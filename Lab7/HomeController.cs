using UIKit;
using Parse;
using Foundation;
using System;
using System.CodeDom.Compiler;
using CoreAnimation;



namespace Lab7
{
	partial class HomeController : UIViewController
	{
		public HomeController (IntPtr handle) : base (handle)
		{
			// set the title of your App here
			Title= "Profile";
		}
		public override void ViewDidLoad()
		{
			base.ViewDidLoad ();

			btnuploadbook.Layer.CornerRadius = 20;
			btnEditProfile.Layer.CornerRadius = 20;
			btnlogout.Layer.CornerRadius = 10;
		
		




			try
			{
				// on page load we will show the current user's First Name from Parse
				var currentUser = ParseUser.CurrentUser;

				lblName.Text = currentUser ["FirstName"] + " " + currentUser ["LastName"];

				lblEmail.Text = currentUser["email"].ToString();

				if (currentUser ["photo"] != null)
				{
					ParseFile imgParse = (ParseFile)currentUser ["photo"];

					imgProfilePhoto.Image = LoadImage(imgParse.Url.ToString());
				}
			}
			catch (Exception ex) {
				var error = ex.Message;
				var alert = new UIAlertView("Display Profile Failed", "Error: " + error, null, "OK");
				alert.Show();
					
			}

			CALayer profileImage = imgProfilePhoto.Layer;
			profileImage.CornerRadius = 90;
			profileImage.MasksToBounds = true;



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



		//		partial void BtnTakePhoto_TouchUpInside (UIButton sender)
		//		{
		//			deHao.Lab7.Camera.TakePicture (this, async (obj) =>{ 
		//
		//
		//				var photo = obj.ValueForKey(new NSString("UIImagePickerControllerOriginalImage")) 
		//					as UIImage; 
		//				var documentsDirectory = Environment.GetFolderPath  (Environment.SpecialFolder.Personal); 
		//				string imageFileName = "Photo.jpg"; 
		//				string jpgFilename = System.IO.Path.Combine (documentsDirectory, imageFileName); // hardcoded filename, overwritten each time 
		//
		//				NSData imgData = photo.AsJPEG();  NSError err = null; 
		//
		//				try
		//				{
		//
		//					if (imgData.Save(jpgFilename, false, out err))  
		//					{ 
		//						// TODO: show image in the imageView 
		//						UIImage outputImage = UIImage.FromFile(jpgFilename);  
		//						imgPhoto.Image = outputImage; 
		//
		//						// convert the UIImage to Bytes array 
		//						var imageStream = outputImage.AsJPEG (.25f).AsStream (); // reduce the image quality by 75% 
		//						ParseFile imageFile = new ParseFile(imageFileName,imageStream); 
		//
		//						// Save the file to Parse first  
		//						await imageFile.SaveAsync(); 
		//
		//						// now save a reference to the image in your database table  
		//						var myPhoto = new ParseObject("User");
		//						// name of your Parse Table 
		//						myPhoto["UserId"] = ParseUser.CurrentUser.ObjectId;
		//						// logged-in user 
		//						myPhoto["photo"] = imageFile; // the Parse file
		//						await myPhoto.SaveAsync();  
		//					}
		//
		//					else
		//					{
		//
		//						Console.WriteLine("NOT saved as " + jpgFilename + " because" + err.LocalizedDescription); 
		//					}
		//
		//				}
		//				catch(Exception ex) 
		//				{
		//					Console.WriteLine("Error: " + ex.Message); 
		//				}
		//			});
		//
		//
		//		}


		partial void Btnlogout_TouchUpInside(UIButton sender)
		{
			var log = Storyboard.InstantiateViewController("login") as LoginController;
			NavigationController.PushViewController(log, true);
			ParseUser.LogOutAsync();
		}
	}
}