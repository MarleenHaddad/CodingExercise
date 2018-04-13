using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HotelInfo
/// Purpose : Present hotel info object in JSON
/// Owner : Marleen Haddad
/// </summary>
[Serializable]
public class HotelInfo
{
    public string hotelId { get; set; }
    public string hotelName { get; set; }
    public string localizedHotelName { get; set; }
    public string hotelDestination { get; set; }
    public string hotelDestinationRegionID { get; set; }
    public string hotelLongDestination { get; set; }
    public string hotelStreetAddress { get; set; }
    public string hotelCity { get; set; }
    public string hotelProvince { get; set; }
    public string hotelCountryCode { get; set; }
    public double hotelLatitude { get; set; }
    public double hotelLongitude { get; set; }
    public string hotelStarRating { get; set; }
    public double hotelGuestReviewRating { get; set; }
    public int hotelReviewTotal { get; set; }
    public string hotelImageUrl { get; set; }
    public bool vipAccess { get; set; }
    public bool isOfficialRating { get; set; }
}