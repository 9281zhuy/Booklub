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
    [Register ("ShoppingCartController")]
    partial class ShoppingCartController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnCheckout { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITableView tblShoppingCart { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (btnCheckout != null) {
                btnCheckout.Dispose ();
                btnCheckout = null;
            }

            if (tblShoppingCart != null) {
                tblShoppingCart.Dispose ();
                tblShoppingCart = null;
            }
        }
    }
}