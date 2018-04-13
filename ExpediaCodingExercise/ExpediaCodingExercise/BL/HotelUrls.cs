using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HotelUrls
/// Purpose : Present hotel urls object in JSON
/// Owner : Marleen Haddad
/// </summary>
[Serializable]
public class HotelUrls
{
    public string hotelInfositeUrl { get; set; }
    public string hotelSearchResultUrl { get; set; }
}
