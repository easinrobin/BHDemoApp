using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BhDemoApp.Models;

namespace BhDemoApp
{
    public partial class _Default : Page
    {
        SpeedCheck aSpeedCheck = new SpeedCheck();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void createButton_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrWhiteSpace(inputVehicleName.Value) == false && String.IsNullOrWhiteSpace(inputRegNo.Value) == false)
            {
                aSpeedCheck.CarName = inputVehicleName.Value;
                aSpeedCheck.CarRegistration = inputRegNo.Value;
                ViewState["CarNames"] = aSpeedCheck;

                carAddLabel.Text = "Car Added Successfully";
                carAddLabel.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                carAddLabel.Text = "Enter Correct Input";
                carAddLabel.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void enterButton_Click(object sender, EventArgs e)
        {
            if (ViewState["CarNames"] != null && String.IsNullOrWhiteSpace(inputSpeed.Value) == false)
            {
                SpeedCheck bSpeedCheck = (SpeedCheck)ViewState["CarNames"];
                bSpeedCheck.speedList.Add(Double.Parse(inputSpeed.Value));
                ViewState["CarNames"] = bSpeedCheck;
                inputSpeed.Value = string.Empty;

                speedLabel.Text = "Speed Added Successfully";
                speedLabel.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                speedLabel.Text = "Fill the blank field properly";
                speedLabel.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void checkButton_Click(object sender, EventArgs e)
        {
            SpeedCheck cSpeedCheck = (SpeedCheck)ViewState["CarNames"];
            if (ViewState["CarNames"] != null)
            {
                double maxSpeed = cSpeedCheck.GetMaxSpeed();
                double minSpeed = cSpeedCheck.GetMinimumSpeed();
                double avgSpeed = cSpeedCheck.GetAverageSpeed();
                maxSpeedLabel.Text = maxSpeed.ToString();
                minSpeedLabel.Text = minSpeed.ToString();
                avgSpeedLabel.Text = avgSpeed.ToString();
                inputVehicleName.Value = string.Empty;
                inputRegNo.Value = string.Empty;
                carAddLabel.Text = string.Empty;
                inputSpeed.Value = string.Empty;
                speedLabel.Text = string.Empty;
            }
        }
    }
}