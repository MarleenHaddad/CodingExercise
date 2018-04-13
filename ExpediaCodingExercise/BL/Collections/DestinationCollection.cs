using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DestinationCollection
/// Purpose : Get list of destinations in the JSON API
/// Owner : Marleen Haddad
/// </summary>
public class DestinationCollection
{
    private static List<Destination> destinations = new List<Destination>();
	public static void addDestination(Destination destination){
        destinations.Add(destination);
    }
    public static List<Destination> GetDestinantions() {     
        return destinations;      
    }
}