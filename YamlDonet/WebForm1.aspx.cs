using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using YamlDotNet.Serialization;
using YamlDotNet.Serialization.NamingConventions;

namespace YamlDonet
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			var address = new
			{
				street = "TornadoAlley",
				city = "EastWestville",
				state = "KS"
			};

			var receipt = new
			{
				receipt = "Yaml",
				date = new DateTime(2007, 8, 6),
				customer = new
				{
					given = "Dorothy",
					family = "Gale"
				},
				items = new[]
				{
					new
					{
						part_no = "A4786",
						price = 1.47M,
						quantity = 4
					},
					new
					{
						part_no = "E1628",
						price = 100.27M,
						quantity = 1
					}
				},
				bill_to = address
			};

			var serializer = new Serializer();
			string s = serializer.Serialize(receipt);
			Response.Write(s);
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			 string Document = @"
 result: output 
 receipt: Devin123
 date: 2007-08-06
 customer:
   given: Dorothy
   family: Gale";

			//var input = new StringReader(Document);
			var deserializer = new Deserializer(namingConvention: new CamelCaseNamingConvention());
			var order = deserializer.Deserialize<Order>(Document);
			Response.Write(string.Format("receipt:{0},result:{1},date:{2}",order.Receipt, order.Result,order.Date));
		}
		public class Order
		{
			public string Receipt { get; set; }
			public DateTime Date { get; set; }
			public Customer Customer { get; set; }
			public string Result { get; set; }
		}

		public class Customer
		{
			public string Given { get; set; }
			public string Family { get; set; }
		}
	}
}