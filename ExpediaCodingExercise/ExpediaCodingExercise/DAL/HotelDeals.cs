using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using Newtonsoft.Json.Linq;

/// <summary>
/// Summary description for HotelDeals
/// Purpose : Consume JSON API in a JObject 
/// Design : Single Ton
/// Owner : Marleen Haddad
/// </summary>
public class HotelDeals
{
    private static HotelDeals hotelDeals = new HotelDeals();
    private WebClient webClient;
    private String json;
    private JObject Jobj;
    private HotelDeals()
    {
        webClient = new WebClient();
        json = webClient.DownloadString("https://offersvc.expedia.com/offers/v2/getOffers?scenario=deal-finder&page=foo&uid=foo&productType=Hotel");
        Jobj = JObject.Parse(json);
    }
   

    public static JObject GetJSON()
    {
        return hotelDeals.Jobj;
    }

    public static String GetJSONString()
    {
        return hotelDeals.json;
    }
    
}