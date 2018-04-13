using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace ExpediaCodingExercise
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        #region "Parameters"

        private HotelBookingSite HotelBookingSite = JsonConvert.DeserializeObject<HotelBookingSite>(HotelDeals.GetJSONString());

        #endregion

        #region "Events"
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLanguage.Text = HotelBookingSite.offerInfo.language;
            lblCurrency.Text = HotelBookingSite.offerInfo.currency;
            lblUserName.Text = "User Name : " + HotelBookingSite.userInfo.userId + ";" + HotelBookingSite.userInfo.persona.personaType;
        }

        #endregion
    }
}
