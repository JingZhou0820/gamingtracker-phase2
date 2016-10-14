using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using gametracker_phase21.Models;
using System.Web.ModelBinding;
namespace gametracker_phase21
{

    public partial class departments : System.Web.UI.Page
    {
        int weekNumber;
        string category;

        protected void Page_Load(object sender, EventArgs e)
        {
            sportsCategory.Attributes.Add("class", "form-control");
            week.Attributes.Add("class", "form-control");
        }

        protected void updateGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int selectedRow = e.RowIndex;
                int SportsID = Convert.ToInt32(deleteGridView.DataKeys[selectedRow].Values["Sports_ID"]);
                using (GameContext db = new GameContext())
                {
                    game_grades deleteRecord = (from s in db.game_grades
                                                where s.Sports_ID == SportsID
                                                select s).FirstOrDefault();
                    db.game_grades.Remove(deleteRecord);
                    db.SaveChanges();
                }
                showDataafterselecting();
            }
            catch (Exception exception)
            {

                errorInformation.Text = "Invalid operation, fail to delete";
            }

        }

        protected void selectButton_Click(object sender, EventArgs e)
        {
            errorInformation.Text = "";
            showDataafterselecting();
        }
        protected void showDataafterselecting()
        {
            detailInformation.Style.Add("display", "display");
            category = sportsCategory.Value;
            weekNumber = Convert.ToInt32(week.Value);
            GameContext db = new GameContext();
            var gameInformation = (from s in db.game_grades
                                   where s.Sports_category == category && s.Week == weekNumber
                                   select s).ToList();
            deleteGridView.DataSource = gameInformation;
            deleteGridView.DataBind();
        }
    }
}