using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NutritionPlan
{
    public partial class _Default : Page
    {
        double height, weight, age;  //Entered  Values
        double malebmr, femalebmr, calories, Gender, ActivityLevel, GoalLevel;     
        double bmrcalc, goalcalc;



        protected void Page_Load(object sender, EventArgs e)
        {
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                //get personal information
                height = Convert.ToDouble(TextBoxHeight.Text);
                weight = Convert.ToDouble(TextBoxWeight.Text);
                age = Convert.ToDouble(TextBoxAge.Text);
                Gender = GenderList.SelectedIndex;
                ActivityLevel = ActivityList.SelectedIndex;
                GoalLevel = GoalList.SelectedIndex;



                // choose ActivityLevel
                if (ActivityLevel == 1)
                {
                    bmrcalc = 1;
                }
                else if (ActivityLevel == 2)
                {
                    bmrcalc = 1.375;
                }
                else if (ActivityLevel == 3)
                {
                    bmrcalc = 1.55;
                }
                else if (ActivityLevel == 4)
                {
                    bmrcalc = 1.725;
                }
                else if (ActivityLevel == 5)
                {
                    bmrcalc = 1.9;
                }

                // chooseGoal

                if (GoalLevel == 1)
                {
                    goalcalc = -1000;
                }
                else if (GoalLevel == 2)
                {
                    goalcalc = -750;
                }
                else if (GoalLevel == 3)
                {
                    goalcalc = -500;
                }
                else if (GoalLevel == 4)
                {
                    goalcalc = -250;
                }
                else if (GoalLevel == 5)
                {
                    goalcalc = 0;
                }
                else if (GoalLevel == 6)
                {
                    goalcalc = 250;
                }
                else if (GoalLevel == 7)
                {
                    goalcalc = 500;
                }
                else if (GoalLevel == 8)
                {
                    goalcalc = 750;
                }
                else if (GoalLevel == 9)
                {
                    goalcalc = 1000;
                }

                //select Gender and perform calculations

                if (Gender == 1)
                {

                    malebmr = (66.5 + ((13.75 * weight) + (5.003 * height) - (6.755 * age)));
                    calories = malebmr * bmrcalc + goalcalc;
                    LabelCalculate.Text = ("Your Estimated Daily Calories: " + (Math.Round(calories).ToString()));

                }

                else if (Gender == 2)
                {
                    femalebmr = (655.1 + ((9.563 * weight) + (1.850 * height) - (4.676 * age)));
                    calories = femalebmr * bmrcalc + goalcalc;
                    LabelCalculate.Text = ("Your Estimated Daily Calories: " + (Math.Round(calories).ToString()));
                }


            }
        }

        protected void Button1_Reset_Click(object sender, EventArgs e)
        {
            Session["ViewState"] = null;
            Response.Redirect("/NutritionalPlanner.aspx", false);
        }

    }
}