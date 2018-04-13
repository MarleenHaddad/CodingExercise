using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

/// <summary>
/// Summary description for HotelBookingSite
/// Purpose : Represent JSON API in a Object 
/// Owner : Marleen Haddad
/// </summary>
public class HotelBookingSite
{
    public OfferInfo offerInfo { get; set; }
    public UserInfo userInfo { get; set; }
    public Offers offers { get; set; }
  
}