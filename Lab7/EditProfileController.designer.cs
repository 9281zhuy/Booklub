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
    [Register ("EditProfileController")]
    partial class EditProfileController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnprofileback { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnprofilesave { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnuploadprofile { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imgprofile { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblprofileemail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblprofilename { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIView ProfileEditPageController { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtchangeemail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtchangename { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtContInfo { get; set; }


        [Action ("Btnprofileback_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btnprofileback_TouchUpInside (UIButton sender);


        [Action ("Btnuploadprofile_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void Btnuploadprofile_TouchUpInside (UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (btnprofileback != null) {
                btnprofileback.Dispose ();
                btnprofileback = null;
            }

            if (btnprofilesave != null) {
                btnprofilesave.Dispose ();
                btnprofilesave = null;
            }

            if (btnuploadprofile != null) {
                btnuploadprofile.Dispose ();
                btnuploadprofile = null;
            }

            if (imgprofile != null) {
                imgprofile.Dispose ();
                imgprofile = null;
            }

            if (lblprofileemail != null) {
                lblprofileemail.Dispose ();
                lblprofileemail = null;
            }

            if (lblprofilename != null) {
                lblprofilename.Dispose ();
                lblprofilename = null;
            }

            if (ProfileEditPageController != null) {
                ProfileEditPageController.Dispose ();
                ProfileEditPageController = null;
            }

            if (txtchangeemail != null) {
                txtchangeemail.Dispose ();
                txtchangeemail = null;
            }

            if (txtchangename != null) {
                txtchangename.Dispose ();
                txtchangename = null;
            }

            if (txtContInfo != null) {
                txtContInfo.Dispose ();
                txtContInfo = null;
            }
        }
    }
}