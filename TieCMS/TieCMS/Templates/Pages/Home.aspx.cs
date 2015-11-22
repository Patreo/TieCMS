using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TieCMS.Models;

namespace TieCMS.Templates.Pages
{
    public partial class Home : Tie.Web.PageTemplate<ArticlePageType>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DynamicForm1.Database = this.Database;
            DynamicForm1.DataBind();
        }
    }
}