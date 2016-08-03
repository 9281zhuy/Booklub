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
	[Register ("HomeMainController")]
	partial class HomeMainController
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIButton btnSearch { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITableView tblContacts { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITextField txtSearch { get; set; }

		[Action ("BtnSearch_TouchUpInside:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void BtnSearch_TouchUpInside (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
			if (btnSearch != null) {
				btnSearch.Dispose ();
				btnSearch = null;
			}
			if (tblContacts != null) {
				tblContacts.Dispose ();
				tblContacts = null;
			}
			if (txtSearch != null) {
				txtSearch.Dispose ();
				txtSearch = null;
			}
		}
	}
}
