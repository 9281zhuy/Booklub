using UIKit;
using Parse;
using Foundation;
using System;
using System.CodeDom.Compiler;

namespace Lab7
{
	partial class UploadABook : UIViewController
	{
		public UploadABook (IntPtr handle) : base (handle)
		{
		}

		partial void Btnbook_TouchUpInside (UIButton sender)
		{
			Lab7.Camera.TakePicture (this,async (obj) => {
				var photo = obj.ValueForKey(new NSString("UIImagePickerControllerOriginalImage")) as UIImage; 
				var documentsDirectory = Environment.GetFolderPath  
						(Environment.SpecialFolder.Personal); 
				string imageFileName = "book.png"; 

				string jpgFilename = System.IO.Path.Combine 
					(documentsDirectory, imageFileName); // hardcoded filename, overwritten each time 
				NSData imgData = photo.AsJPEG();  
				NSError err = null; 

				try 
				{
					if (imgData.Save(imageFileName, false, out err))
						{
							// TODO: show image in the imageView

							UIImage outputImage = UIImage.FromFile(imageFileName);
							Book.Image = outputImage; // convert the UIImage to Bytes array

							var imageStream = outputImage.AsJPEG (.25f).AsStream (); // reduce the image quality by 75%

							ParseFile imageFile = new ParseFile(imageFileName,
								imageStream);
							// Save the file to Parse first
							
							await imageFile.SaveAsync();
							// now save a reference to the image in your database table

							var Textbook = new ParseObject("Textbook");							
							// name of your Parse Table

							Textbook["UserId"] = ParseUser.CurrentUser.ObjectId;
							// logged-in user

							Textbook["Picture"] = imageFile; // the Parse file
							
							await Textbook.SaveAsync(); 
						}
					else
					{
						Console.WriteLine("Not saved as " + jpgFilename +" because" + err.LocalizedDescription); 
					}
				}
				catch(Exception ex)
				{
					Console.WriteLine("Error: " + ex.Message); 
				}
			});
	}


	}}

