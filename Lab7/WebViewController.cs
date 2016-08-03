using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace Lab7
{
	partial class WebViewController : UIViewController
	{
		public WebViewController (IntPtr handle) : base (handle)
		{
		}

		public string keyword;

		public override void ViewDidLoad ()
		{
		base.ViewDidLoad ();


			//TODO: read this recipe: https://developer.xamarin.com/recipes/ios/content_controls/web_view/load_a_web_page/

//	if (string.IsNullOrEmpty (keyword))
			//				keyword = txtisbn.Text;

			var url = "https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=" + keyword ;
			webviewSite.LoadRequest (new NSUrlRequest (new NSUrl (url)));
			webviewSite.ScalesPageToFit = true;
		}


		partial void BtnAmaback_TouchUpInside(UIButton sender)
		{
			var Upload = Storyboard.InstantiateViewController("Book") as UploadABook;
			NavigationController.PushViewController(Upload, true);
		}
	}
}
