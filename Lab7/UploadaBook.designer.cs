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
	[Register ("UploadaBook")]
	partial class UploadaBook
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIButton btnbook { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIImageView imgbook { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel lblauthor { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel lblbookname { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel lblbookprice { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel lbldescription { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel lbledition { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel lblisbn { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITextField txtauthor { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITextField txtbookprice { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITextField txtdesc { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITextField txtedition { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITextField txtisbn { get; set; }

		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UITextField txtname { get; set; }

		[Action ("Btnbook_TouchUpInside:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void Btnbook_TouchUpInside (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
			if (btnbook != null) {
				btnbook.Dispose ();
				btnbook = null;
			}
			if (imgbook != null) {
				imgbook.Dispose ();
				imgbook = null;
			}
			if (lblauthor != null) {
				lblauthor.Dispose ();
				lblauthor = null;
			}
			if (lblbookname != null) {
				lblbookname.Dispose ();
				lblbookname = null;
			}
			if (lblbookprice != null) {
				lblbookprice.Dispose ();
				lblbookprice = null;
			}
			if (lbldescription != null) {
				lbldescription.Dispose ();
				lbldescription = null;
			}
			if (lbledition != null) {
				lbledition.Dispose ();
				lbledition = null;
			}
			if (lblisbn != null) {
				lblisbn.Dispose ();
				lblisbn = null;
			}
			if (txtauthor != null) {
				txtauthor.Dispose ();
				txtauthor = null;
			}
			if (txtbookprice != null) {
				txtbookprice.Dispose ();
				txtbookprice = null;
			}
			if (txtdesc != null) {
				txtdesc.Dispose ();
				txtdesc = null;
			}
			if (txtedition != null) {
				txtedition.Dispose ();
				txtedition = null;
			}
			if (txtisbn != null) {
				txtisbn.Dispose ();
				txtisbn = null;
			}
			if (txtname != null) {
				txtname.Dispose ();
				txtname = null;
			}
		}
	}
}
