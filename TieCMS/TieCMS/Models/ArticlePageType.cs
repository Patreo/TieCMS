using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Tie.Attributes;
using Tie.PropertyTypes;

namespace TieCMS.Models
{
    [PageType("Article", "Articles", "~/Templates/Pages/Home.aspx")]
    public class ArticlePageType : Tie.Web.Page
    {
        [Property("Title")]
        public StringProperty Title
        {
            get;
            set;
        }

        [Property("Resume")]
        public TextProperty Resume
        {
            get;
            set;
        }

        [Property("Body")]
        public HtmlProperty Body 
        {
            get;
            set; 
        }
    }
}