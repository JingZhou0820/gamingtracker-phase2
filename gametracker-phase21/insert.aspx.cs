using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using gametracker_phase21.Models;
using System.Web.ModelBinding;
using System.Diagnostics;

namespace gametracker_phase21
{
    public partial class enrollments : System.Web.UI.Page
    {
        int weekNumber;
        string category;
        protected void Page_Load(object sender, EventArgs e)
        {
            sportsCategory.Attributes.Add("class", "form-control");
            week.Attributes.Add("class", "form-control");
        }

        protected void selectButton_Click(object sender, EventArgs e)
        {
            weekNumber = Convert.ToInt32(week.Value);
            category = sportsCategory.Value;
            categoryandweekLabel.Text = category.ToUpper() + "    Week " + weekNumber.ToString();

            detailAddform.Style.Add("display", "block");

            string[] options = new string[2];

            switch (category)
            {
                case "cricket":
                    options[0] = "Bharat Cricket"; options[1] = "Falcon-A";
                    break;

                default:
                    break;
            }
            teamnameTextBox.Items.Clear();
            for (int i = 0; i < options.Length; i++)
            {

                teamnameTextBox.Items.Add(options[i]);
            }

            week.Disabled = true;
            sportsCategory.Disabled = true;
            selectButton.Enabled = false;
            reminderInformation.Text = "";
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            try
            {
                GameContext db = new GameContext();
                game_grades newrecord = new game_grades();
                newrecord.Week = Convert.ToInt32(week.Value);

                newrecord.Sports_category = sportsCategory.Value;

                newrecord.Team_Name = teamnameTextBox.Value;

                newrecord.Point = Convert.ToInt32(scoreBox.Text);

                db.game_grades.Add(newrecord);
                db.SaveChanges();

                week.Disabled = false;
                sportsCategory.Disabled = false;
                selectButton.Enabled = true;

                scoreBox.Text = "";

                detailAddform.Style.Add("display", "none");
                reminderInformation.Text = "Add sucessfully";
            }
            catch (Exception exception)
            {

                reminderInformation.Text = "Invalid data, fail to add";
            }

        }

        protected void CancelButoon_Click(object sender, EventArgs e)
        {
            week.Disabled = false;
            sportsCategory.Disabled = false;
            selectButton.Enabled = true;

            scoreBox.Text = "";

            detailAddform.Style.Add("display", "none");
            reminderInformation.Text = "";
        }
    }


}
