using Parse;
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace Lab7
{
	partial class LoginController : UIViewController
	{
		public LoginController (IntPtr handle) : base (handle)
		{
			// set the title of your App here
			//Title= "Booklub";


		}
		public override void ViewDidLoad()
		{
			base.ViewDidLoad ();

			btnLogin.Layer.CornerRadius = 30;
			this.NavigationItem.SetHidesBackButton (true, true);

			txtEmail.Layer.CornerRadius = 15;
			txtPassword.Layer.CornerRadius = 15;

			txtPassword.Layer.BorderColor = UIColor.White.CGColor;
			txtPassword.Layer.BorderWidth = 1;
			txtEmail.Layer.BorderColor = UIColor.White.CGColor;
			txtEmail.Layer.BorderWidth = 1;


			if (ParseUser.CurrentUser != null)
			{
				// navigate to the welcome page, 
				var Tab = Storyboard.InstantiateViewController("TabBarController") as UITabBarController;
				NavigationController.PushViewController (Tab, true);
			}

			base.ViewDidLoad ();
			btnLogin.TouchUpInside += (object sender, EventArgs e) => { 
				string Emil = txtEmail.Text; 
				string Password = txtPassword.Text;

			};

			txtEmail.ShouldReturn = delegate
			{
				// Changed this slightly to move the text entry to the next field.
				txtEmail.BecomeFirstResponder();
				return true;
			};

			txtPassword.ShouldReturn = delegate
			{
				txtPassword.ResignFirstResponder();
				return true;
			};
		}
		async partial void BtnLogin_TouchUpInside (UIButton sender)
		{
			// to prevent the user from clicking on the button multiple times, 
			// I will hide my login button when it is clicked on till all the processing is complete
			btnLogin.Hidden = true;
			var email = txtEmail.Text;
			var password = txtPassword.Text;
			var error = "Enter a valid E-mail Address and Password";

			var alert = new UIAlertView();

			// if email and password is not provided don't make the Parse call
			if ((string.IsNullOrEmpty(email)) || (string.IsNullOrEmpty(password)))
			{
				alert = new UIAlertView("Login Failed", error, null, "OK");
				alert.Show();
			}
			else
			{
				try
				{
					// you only need this one line to authenticate the user against Parse
					ParseUser myUser = await ParseUser.LogInAsync(email, password);

					// navigate to the welcome page, 
					// note: "home" is the StoryBoard ID of the HomeController
					var Tab = Storyboard.InstantiateViewController("TabBarController") as UITabBarController;
					NavigationController.PushViewController (Tab, true);
				}
				catch (ParseException f)
				{
					alert = new UIAlertView("Login Failed", error, null, "OK");
					alert.Show();
				}
				catch (Exception f)
				{
					alert = new UIAlertView("Login Failed", 
						"Check your network access! Or try again later", null, "OK");
					alert.Show();
				}
			}
			// now I will display my login button
			btnLogin.Hidden = false;
		}

		partial void BtnSignUp_TouchUpInside (UIButton sender)
		{
			
	}
}
}

	