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
    [Register ("BookDetailController")]
    partial class BookDetailController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnCompare { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btndetail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btndetailback { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnexchange { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imgbook { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblAuthor { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lbldetailauthor { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lbldetailedition { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblemail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblISBN { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblName { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblopedition { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblPrice { get; set; }

        [Action ("BtnCompare_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BtnCompare_TouchUpInside (UIKit.UIButton sender);

        [Action ("Btndetail_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btndetail_TouchUpInside (UIKit.UIButton sender);

        [Action ("Btndetailback_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btndetailback_TouchUpInside (UIKit.UIButton sender);

        [Action ("Btnexchange_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btnexchange_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (btnCompare != null) {
                btnCompare.Dispose ();
                btnCompare = null;
            }

            if (btndetail != null) {
                btndetail.Dispose ();
                btndetail = null;
            }

            if (btndetailback != null) {
                btndetailback.Dispose ();
                btndetailback = null;
            }

            if (btnexchange != null) {
                btnexchange.Dispose ();
                btnexchange = null;
            }

            if (imgbook != null) {
                imgbook.Dispose ();
                imgbook = null;
            }

            if (lblAuthor != null) {
                lblAuthor.Dispose ();
                lblAuthor = null;
            }

            if (lbldetailauthor != null) {
                lbldetailauthor.Dispose ();
                lbldetailauthor = null;
            }

            if (lbldetailedition != null) {
                lbldetailedition.Dispose ();
                lbldetailedition = null;
            }

            if (lblemail != null) {
                lblemail.Dispose ();
                lblemail = null;
            }

            if (lblISBN != null) {
                lblISBN.Dispose ();
                lblISBN = null;
            }

            if (lblName != null) {
                lblName.Dispose ();
                lblName = null;
            }

            if (lblopedition != null) {
                lblopedition.Dispose ();
                lblopedition = null;
            }

            if (lblPrice != null) {
                lblPrice.Dispose ();
                lblPrice = null;
            }
        }
    }
}