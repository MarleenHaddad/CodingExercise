using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HotelPricingInfo
/// Purpose : Present hotel pricing object in JSON
/// Owner : Marleen Haddad
/// </summary>
[Serializable]
public class HotelPricingInfo
{
    public double averagePriceValue { get; set; }
    public double totalPriceValue { get; set; }
    public double crossOutPriceValue { get; set; }
    public double originalPricePerNight { get; set; }
    public string currency { get; set; }
    public double percentSavings { get; set; }
    public bool drr { get; set; }
}