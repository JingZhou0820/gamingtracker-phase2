using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using statement require to connect enity framwork database
using gametracker_phase21.Models;
//using System.Web.ModelBinding;
using System.Diagnostics;
using gametracker_phase21.Models;
using System.Web.ModelBinding;

namespace gametracker_phase21
{
    public partial class students : System.Web.UI.Page
    {
        public static int week = 40;
        public String weekStr = week.ToString();
        int scoreOfBharat;
        int scoreOfFalcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            weekNumber.Text = week.ToString();
            getScore();

        }
        private void getScore()
        {
            GameContext db = new GameContext();

            try
            {
                scoreOfBharat = (from s in db.game_grades
                                 where s.Week == week && s.Team_Name == "Bharat Cricket"
                                 select s.Point).Sum();
                bharatScore.Text = scoreOfBharat.ToString();
            }
            catch (Exception exception)
            {

                bharatScore.Text = "0";
            }


            try
            {
                scoreOfFalcon = (from s in db.game_grades
                                 where s.Week == week && s.Team_Name == "Falcon-A"
                                 select s.Point).Sum();
                falconScore.Text = scoreOfFalcon.ToString();
            }
            catch (Exception exception)
            {

                falconScore.Text = scoreOfFalcon.ToString();
            }

        }

        protected void rightArrow_Click(object sender, ImageClickEventArgs e)
        {
            week = week + 1;
            if (week == 44)
            {
                week = 43;
            }

            weekNumber.Text = week.ToString();
            getScore();
            cricketdatasourceCommandChange();

        }

        protected void leftArrow_Click(object sender, ImageClickEventArgs e)
        {
            week = week - 1;
            if (week == 39)
            {
                week = 40;
            }

            weekNumber.Text = week.ToString();
            getScore();
            cricketdatasourceCommandChange();

        }

        protected void cricketdatasourceCommandChange()
        {
            switch (week)
            {
                case 40:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=40 GROUP BY Team_Name";
                    break;
                case 41:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=41 GROUP BY Team_Name";
                    break;
                case 42:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=42 GROUP BY Team_Name";
                    break;
                case 43:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=43 GROUP BY Team_Name";
                    break;
                default:
                    break;
            }

        }

    }
}