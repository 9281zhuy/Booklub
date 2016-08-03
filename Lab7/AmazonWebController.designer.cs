// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace Lab7
{
	[Register ("AmazonWebController")]
	partial class AmazonWebController
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIButton btnbackdetail { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIWebView WebController { get; set; }

		[Action ("Btnbackdetail_TouchUpInside:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void Btnbackdetail_TouchUpInside (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
			if (btnbackdetail != null) {
				btnbackdetail.Dispose ();
				btnbackdetail = null;
			}
			if (WebController != null) {
				WebController.Dispose ();
				WebController = null;
			}
		}
	}
}
