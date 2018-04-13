using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OfferDateRange
/// Purpose : Present offer date range object in JSON
/// Owner : Marleen Haddad
/// </summary>
[Serializable]
public class OfferDateRange
{
    //DateTime d = new DateTime(
    public List<int> travelStartDate { get; set; }
   // public DateTime travelStartDate { get; set; }
    public List<int> travelEndDate { get; set; }
    public int lengthOfStay { get; set; }
}