using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Destination
/// Purpose : Present destination object in JSON
/// Owner : Marleen Haddad
/// </summary>
[Serializable]
public class Destination
{
    public string regionID { get; set; }
    public string associatedMultiCityRegionId { get; set; }
    public string longName { get; set; }
    public string shortName { get; set; }
    public string country { get; set; }
    public string province { get; set; }
    public string city { get; set; }
    public string tla { get; set; }
    public string nonLocalizedCity { get; set; }
}