using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OfferInfo
/// Purpose : Present offer object in JSON
/// Owner : Marleen Haddad
/// </summary>

    public class OfferInfo
    {
        public string siteID { get; set; }
        public string language { get; set; }
        public string currency { get; set; }
        public string userSelectedCurrency { get; set; }
    }
