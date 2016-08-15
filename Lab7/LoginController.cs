using Parse;
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;
using CoreGraphics;

namespace Lab7
{
	public class LoadingOverlay : UIView
	{
		// control declarations
		UIActivityIndicatorView activitySpinner;
		UILabel loadingLabel;

		public LoadingOverlay(CGRect frame) : base(frame)
		{
			// configurable bits
			BackgroundColor = UIColor.Black;
			Alpha = 0.75f;
			AutoresizingMask = UIViewAutoresizing.All;

			nfloat labelHeight = 22;
			nfloat labelWidth = Frame.Width - 20;

			// derive the center x and y
			nfloat centerX = Frame.Width / 2;
			nfloat centerY = Frame.Height / 2;

			// create the activity spinner, center it horizontall and put it 5 points above center x
			activitySpinner = new UIActivityIndicatorView(UIActivityIndicatorViewStyle.WhiteLarge);
			activitySpinner.Frame = new CGRect(
				centerX - (activitySpinner.Frame.Width / 2),
				centerY - activitySpinner.Frame.Height - 20,
				activitySpinner.Frame.Width,
				activitySpinner.Frame.Height);
			activitySpinner.AutoresizingMask = UIViewAutoresizing.All;
			AddSubview(activitySpinner);
			activitySpinner.StartAnimating();

			// create and configure the "Loading Data" label
			loadingLabel = new UILabel(new CGRect(
				centerX - (labelWidth / 2),
				centerY + 20,
				labelWidth,
				labelHeight
				));
			loadingLabel.BackgroundColor = UIColor.Clear;
			loadingLabel.TextColor = UIColor.White;
			loadingLabel.Text = "Loading Data...";
			loadingLabel.TextAlignment = UITextAlignment.Center;
			loadingLabel.AutoresizingMask = UIViewAutoresizing.All;
			AddSubview(loadingLabel);

		}

		/// <summary>
		/// Fades out the control and then removes it from the super view
		/// </summary>
		public void Hide()
		{
			UIView.Animate(
				0.5, // duration
				() => { Alpha = 0; },
				() => { RemoveFromSuperview(); }
			);
		}
	}


	partial class LoginController : UIViewController
	{
		LoadingOverlay loadingOverlay;

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
				txtEmail.ResignFirstResponder();
				return true;
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
			var bounds = UIScreen.MainScreen.Bounds;

			// show the loading overlay on the UI thread using the correct orientation sizing
			loadingOverlay = new LoadingOverlay(bounds);
			View.Add(loadingOverlay);

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

			loadingOverlay.Hide();

		}

		partial void BtnSignUp_TouchUpInside (UIButton sender)
		{
			
	}
}
}

	