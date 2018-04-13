using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace ExpediaCodingExercise
{
    public partial class _Default : System.Web.UI.Page
    {
        #region "Parameters"

        private HotelBookingSite HotelBookingSite = JsonConvert.DeserializeObject<HotelBookingSite>(HotelDeals.GetJSONString());

        #endregion

        #region "Events"
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                fillDestinantionDll();

            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string[] tripDatefrom = TripDateFrom.Value.Split('/');
            string[] tripDateTo = TripDateTo.Value.Split('/');

            DateTime DateFrom = new DateTime(int.Parse(tripDatefrom[2]), int.Parse(tripDatefrom[0]), int.Parse(tripDatefrom[1]));
            DateTime DateTo = new DateTime(int.Parse(tripDateTo[2]), int.Parse(tripDateTo[0]), int.Parse(tripDateTo[1]));
            var result = from hotel in HotelBookingSite.offers.Hotel
                         where hotel.destination.regionID.Equals(ddlDestination.SelectedValue)
                            && hotel.offerDateRange.lengthOfStay == int.Parse(txtLengthOfStay.Value)
                            && double.Parse(hotel.hotelInfo.hotelStarRating) >= double.Parse(ddlMinStarRating.SelectedValue)
                            && new DateTime(hotel.offerDateRange.travelStartDate[0], hotel.offerDateRange.travelStartDate[1], hotel.offerDateRange.travelStartDate[2]).Date >= DateFrom.Date
                             && new DateTime(hotel.offerDateRange.travelEndDate[0], hotel.offerDateRange.travelEndDate[1], hotel.offerDateRange.travelEndDate[2]).Date <= DateTo.Date
                            && double.Parse(hotel.hotelInfo.hotelStarRating) <= double.Parse(ddlMaxStarRating.SelectedValue)
                            && hotel.hotelInfo.hotelGuestReviewRating >= double.Parse(ddlMinGuestRating.SelectedValue)
                            && hotel.hotelInfo.hotelGuestReviewRating <= double.Parse(ddlMaxGuestRating.SelectedValue)
                            && hotel.hotelInfo.hotelReviewTotal >= int.Parse(ddlMinTotalRating.SelectedValue)
                            && hotel.hotelInfo.hotelReviewTotal <= int.Parse(ddlMaxTotalRating.SelectedValue)
                         select hotel;

            fillTableData(result);

        }
        protected void btnShowAll_Click(object sender, EventArgs e)
        {

            var result = from hotel in HotelBookingSite.offers.Hotel
                         select hotel;

            fillTableData(result);
        }
        protected void dgvHotels_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvHotels.PageIndex = e.NewPageIndex;
            dgvHotels.DataSource = ViewState["dtHotels"];
            dgvHotels.DataBind();
        }

        #endregion

        #region "methods"

        private void fillTableData(IEnumerable<Hotel> Hotels)
        {
            dgvHotels.DataSource = Hotels.ToList();
            dgvHotels.DataBind();
            ViewState["dtHotels"] = Hotels.ToList();
        }
        private void fillDestinantionDll()
        {
            DestinationCollection.GetDestinantions().Clear();
            // get list of hotels in JSON object
            var Hotels = (JArray)HotelDeals.GetJSON()["offers"]["Hotel"];

            //itrate each hotel to get destination and put it in list
            foreach (var item in Hotels)
            {
                string js = JsonConvert.SerializeObject(item.SelectToken("destination"));
                DestinationCollection.addDestination(JsonConvert.DeserializeObject<Destination>(js));
            }
            ddlDestination.DataSource = DestinationCollection.GetDestinantions();
            ddlDestination.DataValueField = "regionID";
            ddlDestination.DataTextField = "city";
            ddlDestination.DataBind();
        }

      
        #endregion
    }
}
