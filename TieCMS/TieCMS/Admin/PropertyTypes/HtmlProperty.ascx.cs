using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TieCMS.Admin.PropertyTypes
{
    public partial class HtmlProperty : Tie.Web.UserProperty
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override string Name
        {
            get
            {
                return base.Name;
            }
            set
            {
                base.Name = value;
            }
        }

        public override string Value
        {
            get { return TextBox1.Text;  }
            set { TextBox1.Text = value; }
        }
    }
}