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
    [Register ("HomeController")]
    partial class HomeController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnEditProfile { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnlogout { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnuploadbook { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imgProfilePhoto { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblEmail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblName { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISearchDisplayController searchDisplayController { get; set; }


        [Action ("Btnlogout_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btnlogout_TouchUpInside (UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (btnEditProfile != null) {
                btnEditProfile.Dispose ();
                btnEditProfile = null;
            }

            if (btnlogout != null) {
                btnlogout.Dispose ();
                btnlogout = null;
            }

            if (btnuploadbook != null) {
                btnuploadbook.Dispose ();
                btnuploadbook = null;
            }

            if (imgProfilePhoto != null) {
                imgProfilePhoto.Dispose ();
                imgProfilePhoto = null;
            }

            if (lblEmail != null) {
                lblEmail.Dispose ();
                lblEmail = null;
            }

            if (lblName != null) {
                lblName.Dispose ();
                lblName = null;
            }

            if (searchDisplayController != null) {
                searchDisplayController.Dispose ();
                searchDisplayController = null;
            }
        }
    }
}