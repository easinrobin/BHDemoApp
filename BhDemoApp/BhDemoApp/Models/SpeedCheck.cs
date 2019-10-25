using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BhDemoApp.Models
{
    [Serializable]
    public class SpeedCheck
    {
        public string CarName;
        public string CarRegistration;

        public List<double> speedList = new List<double>();

        public double GetMaxSpeed()
        {
            double maxSpeed = speedList.Max();
            return maxSpeed;
        }

        public double GetAverageSpeed()
        {
            double avgSpeed = speedList.Average();
            return avgSpeed;
        }

        public double GetMinimumSpeed()
        {
            double minSpeed = speedList.Min();
            return minSpeed;
        }
    }
}