using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using gametracker_phase21.Models;
namespace gametracker_phase21
{
    public partial class courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sportsCategory.Attributes.Add("class", "form-control");
            week.Attributes.Add("class", "form-control");
        }


        protected void updateGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void selectButton_Click(object sender, EventArgs e)
        {
            string category = sportsCategory.Value;
            int weekNumber = Convert.ToInt32(week.Value);
            GameContext db = new GameContext();
            var gameInformation = (from s in db.game_grades
                                   where s.Sports_category == category && s.Week == weekNumber
                                   select s).ToList();
            updateGridView.DataSource = gameInformation;
            updateGridView.DataBind();


        }

        protected void updateGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}