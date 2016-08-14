using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;
using Parse;

namespace Lab7
{
	partial class EditProfileController : UIViewController
	{
		public EditProfileController (IntPtr handle) : base (handle)
		{
			// set the title of your App here
			Title= "Edit Profile";

		}

		public override void ViewDidLoad()
		{
			txtchangename.Layer.CornerRadius = 15;
			txtchangeemail.Layer.CornerRadius = 15;

			txtchangename.Layer.BorderColor = UIColor.White.CGColor;
			txtchangename.Layer.BorderWidth = 1;
			txtchangeemail.Layer.BorderColor = UIColor.White.CGColor;
			txtchangeemail.Layer.BorderWidth = 1;
		
			txtchangename.ShouldReturn = delegate
		{
				txtchangename.ResignFirstResponder();
			return true;
		};

			txtchangeemail.ShouldReturn = delegate
	{
				txtchangeemail.ResignFirstResponder();
		return true;
	};

			txtContInfo.ShouldReturn = delegate
	{
				txtContInfo.ResignFirstResponder();
		return true;
	};




		}

	

		partial void Btnprofileback_TouchUpInside (UIButton sender)
		{
			var Tab = Storyboard.InstantiateViewController("TabBarController") as UITabBarController;
			NavigationController.PushViewController (Tab, true);
		}

		partial void Btnuploadprofile_TouchUpInside (UIButton sender)
		{
			deHao.Lab7.Camera.TakePicture (this, async (obj) =>{ 


				var photo = obj.ValueForKey(new NSString("UIImagePickerControllerOriginalImage")) 
					as UIImage; 
				var documentsDirectory = Environment.GetFolderPath  (Environment.SpecialFolder.Personal); 
				string imageFileName = "Photo.jpg"; 
				string jpgFilename = System.IO.Path.Combine (documentsDirectory, imageFileName); // hardcoded filename, overwritten each time 

				NSData imgData = photo.AsJPEG();  NSError err = null; 

				try
				{

					if (imgData.Save(jpgFilename, false, out err))  
					{ 
						// TODO: show image in the imageView 
						UIImage outputImage = UIImage.FromFile(jpgFilename);  
						imgprofile.Image = outputImage; 

						// convert the UIImage to Bytes array 
						var imageStream = outputImage.AsJPEG (.25f).AsStream (); // reduce the image quality by 75% 
						ParseFile imageFile = new ParseFile(imageFileName,imageStream); 

						// Save the file to Parse first  
						await imageFile.SaveAsync(); 

						// now save a reference to the image in your database table  
						var myPhoto = new ParseObject("User");
						// name of your Parse Table 
						myPhoto["UserId"] = ParseUser.CurrentUser.ObjectId;
						// logged-in user 
						myPhoto["photo"] = imageFile; // the Parse file
						await myPhoto.SaveAsync();  
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

	
	}
}
