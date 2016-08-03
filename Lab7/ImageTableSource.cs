﻿using System;
using UIKit;
using System.Collections.Generic;
using System.Linq;
using Foundation;

namespace Lab7
{
	public class ImageTableSource : UITableViewSource 
	{
		protected string cellIdentifier = "TableCell1";

		Dictionary<string, List<TableItem>> indexedTableItems;
		string[] keys;

		UIViewController parentController;

		public ImageTableSource (List<TableItem> items ,UIViewController pController)
		{
			this.parentController = pController;

			indexedTableItems = new Dictionary<string, List<TableItem>>();
			foreach (var t in items) {
				if (indexedTableItems.ContainsKey (t.SubHeading)) {
					indexedTableItems[t.SubHeading].Add(t);
				}  else {
					indexedTableItems.Add (t.SubHeading, new List<TableItem>() {t});
				}
			}
			keys = indexedTableItems.Keys.ToArray ();
		}

		/// <summary>
		/// Called by the TableView to determine how many sections(groups) there are.
		/// </summary>
		public override nint NumberOfSections (UITableView tableView)
		{
			return keys.Length;
		}

		/// <summary>
		/// Determines how many cells to create for that particular section.
		/// </summary>
		public override nint RowsInSection (UITableView tableview, nint section)
		{
			return indexedTableItems[keys[section]].Count;
		}

		/// <summary>
		/// The string value to show in the section header
		/// </summary>
		public override string TitleForHeader (UITableView tableView, nint section)
		{
			return null; // to re-enable footer: keys[section];
		}

		/// <summary>
		/// The string to show in the section footer
		/// </summary>
		public override string TitleForFooter (UITableView tableView, nint section)
		{
			return null; //indexedTableItems[keys[section]].Count + " items";
		}

		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
//			new UIAlertView("Row Selected"
//				, indexedTableItems[keys[indexPath.Section]][indexPath.Row].Heading
//				, null, "OK", null).Show();

			var textBook = indexedTableItems [keys [indexPath.Section]] [indexPath.Row];

			HomeMainController mainController = (HomeMainController)parentController;

			// TODO: write code to navigate to next screen
				var Detail = parentController.Storyboard.InstantiateViewController("Detail") as BookDetailController;

			Detail.detailedTextbook = textBook;

				parentController.NavigationController.PushViewController (Detail, true);
			//tableView.DeselectRow (indexPath, true);
		}

		/// <summary>
		/// Gets the actual UITableViewCell to render for the particular section and row
		/// </summary>
		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			//---- declare vars
			UITableViewCell cell = tableView.DequeueReusableCell (cellIdentifier);
			TableItem item = indexedTableItems[keys[indexPath.Section]][indexPath.Row];

			if (cell == null)
			{  
				// use a Subtitle cell style here
				cell = new UITableViewCell (UITableViewCellStyle.Subtitle, cellIdentifier); 
			}

			//---- set the item text, subtitle and image/icon
			cell.TextLabel.Text = item.Heading;
			cell.DetailTextLabel.Text = item.SubHeading;
			cell.ImageView.Image = this.LoadImage(item.ImageUrl); 

			// if the item is marked as a favorite, use the CheckMark cell accessory
			// otherwise (i.e. when false) use the disclosure cell accessory
			if (item.IsFavorite) {
				cell.Accessory = UITableViewCellAccessory.Checkmark;
			}  else {
				cell.Accessory = UITableViewCellAccessory.DisclosureIndicator;
			}
			return cell;
		}

		/// <summary>
		/// Loads the remote image from a URL.
		/// </summary>
		/// <returns>The image.</returns>
		/// <param name="uri">URI.</param>
		public UIImage LoadImage (string uri)
		{
			using (var url = new NSUrl (uri))
			using (var data = NSData.FromUrl (url))
				return UIImage.LoadFromData (data);
		}

	}
}