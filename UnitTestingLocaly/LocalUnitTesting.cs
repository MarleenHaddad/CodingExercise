using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Newtonsoft.Json.Linq;


namespace UnitTest
{
    /// <summary>
    /// Summary description for UnitTest
    /// Purpose : Testing 
    /// Owner : Marleen Haddad
    /// </summary>
    [TestClass]
    public class UnitTes
    {
        /// Testing if the class can consume JSON API
        [TestMethod]
        public void CanConsumeJSONAPI()
        {
            //Arrange       
            JObject Offers = null;

            //Act 
            Offers = HotelDeals.GetJSON();

            //Assert
            Assert.AreNotEqual(Offers, null);

        }
        /// Testing if the class can get  distinantions from JSON API
        [TestMethod]
        public void canGetDistinantions()
        {
            //Arrange
            JArray Destinations = null;

            //Act
            Destinations = (JArray)HotelDeals.GetJSON()["offers"]["Hotel"];
            foreach (var item in Destinations)
            {
                string js = JsonConvert.SerializeObject(item.SelectToken("destination"));
                DestinationCollection.addDestination(JsonConvert.DeserializeObject<Destination>(js));
            }

            //Assert
            Assert.AreNotEqual(DestinationCollection.GetDestinantions().Count(), 0);

        }
    }
}
