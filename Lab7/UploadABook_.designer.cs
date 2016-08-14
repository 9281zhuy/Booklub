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
    [Register ("UploadABook")]
    partial class UploadABook
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton AmazonPrice { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnbook { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnbookback { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnuploadabook { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imgpic { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtauthor { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtbookprice { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtdescription { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtedition { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtemail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtisbn { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtname { get; set; }

        [Action ("AmazonPrice_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void AmazonPrice_TouchUpInside (UIKit.UIButton sender);

        [Action ("Btnbook_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btnbook_TouchUpInside (UIKit.UIButton sender);

        [Action ("Btnbookback_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btnbookback_TouchUpInside (UIKit.UIButton sender);

        [Action ("Btnuploadabook_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btnuploadabook_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (AmazonPrice != null) {
                AmazonPrice.Dispose ();
                AmazonPrice = null;
            }

            if (btnbook != null) {
                btnbook.Dispose ();
                btnbook = null;
            }

            if (btnbookback != null) {
                btnbookback.Dispose ();
                btnbookback = null;
            }

            if (btnuploadabook != null) {
                btnuploadabook.Dispose ();
                btnuploadabook = null;
            }

            if (imgpic != null) {
                imgpic.Dispose ();
                imgpic = null;
            }

            if (txtauthor != null) {
                txtauthor.Dispose ();
                txtauthor = null;
            }

            if (txtbookprice != null) {
                txtbookprice.Dispose ();
                txtbookprice = null;
            }

            if (txtdescription != null) {
                txtdescription.Dispose ();
                txtdescription = null;
            }

            if (txtedition != null) {
                txtedition.Dispose ();
                txtedition = null;
            }

            if (txtemail != null) {
                txtemail.Dispose ();
                txtemail = null;
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