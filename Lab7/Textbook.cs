using Parse;
using System;

namespace Lab7
{
	public class Textbook 
	{ 
		public Textbook () {} 

		public string Name { get; set;}
		public string Description { get; set;}
		public ParseFile Photo { get; set;}
		public bool IsFavorite { get; set;}
		public string ObjectID { get; set;}
		public string Price { get; set;}
		public string ISBN { get; set;}
		public string Edition { get; set;}
		public string Author { get; set;}
	}

}

