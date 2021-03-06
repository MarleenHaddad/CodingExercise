﻿using NUnit.Framework;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace UnitTesting
{

    /// <summary>
    /// Summary description for UnitTest
    /// Purpose : Testing 
    /// Owner : Marleen Haddad
    /// </summary>

    [TestFixture]
    class TestClass
    {
        /// Testing if the class can consume JSON API
        [Test]
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
        [Test]
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
            Assert.AreNotEqual(DestinationCollection.GetDestinantions().Count, 0);

        }
    }
}
