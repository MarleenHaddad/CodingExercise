using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Hotel
/// Purpose : Present hotel object in JSON
/// Owner : Marleen Haddad
/// </summary>
[Serializable]
public class Hotel
{
    public OfferDateRange offerDateRange { get; set; }
    public Destination destination { get; set; }
    public HotelInfo hotelInfo { get; set; }
    public HotelPricingInfo hotelPricingInfo { get; set; }
    public HotelUrls hotelUrls { get; set; }
}