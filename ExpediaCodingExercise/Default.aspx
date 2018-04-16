<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ExpediaCodingExercise._Default" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            var dateFormat = "yyy-mm-dd",
      TripDateFrom = $("#<%=TripDateFrom.ClientID %>")
        .datepicker({
            defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 3
        })
        .on("change", function () {
            TripDateTo.datepicker("option", "minDate", getDate(this));
        }),
      TripDateTo = $("#<%=TripDateTo.ClientID %>").datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 3
      })
      .on("change", function () {
          TripDateFrom.datepicker("option", "maxDate", getDate(this));
      });

            function getDate(element) {
                var date;
                try {
                    date = $.datepicker.parseDate(dateFormat, element.value);
                } catch (error) {
                    date = null;
                }

                return date;
            }
        });
    </script>
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

       <table style="margin-left: auto; margin-right: auto">
        <tr>
            <td>
                <asp:Label ID="lblDestination" runat="server" > Destination </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlDestination" runat="server" Width="130px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblTripStartDateFrom" for="from" runat="server" >
                    Trip Start Date From</asp:Label>
            </td>
            <td>
                <input type="text" id="TripDateFrom" name="from" runat="server" />
                <asp:RequiredFieldValidator ID="rfvTripDateFrom" runat="server" ControlToValidate="TripDateFrom"
                    ValidationGroup="Search" ErrorMessage="Please enter date from" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lblTripStartDateTo" for="to" runat="server" >
                    to</asp:Label>
            </td>
            <td>
                <input type="text" id="TripDateTo" name="to" runat="server" />
                 <asp:RequiredFieldValidator ID="rfvTripDateTo" runat="server" ControlToValidate="TripDateTo"
                    ValidationGroup="Search" ErrorMessage="Please enter to date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lblLengthOfStay" runat="server" > Days of staying </asp:Label>
            </td>
            <td>
                <input type="text" id="txtLengthOfStay" runat="server" onkeyup="this.value=this.value.replace(/[^\d]/,'')" />
                <asp:RequiredFieldValidator ID="rfvLengthOfStay" runat="server" ControlToValidate="txtLengthOfStay"
                    ValidationGroup="Search" ErrorMessage="Please enter number of days" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMinStarRating" runat="server" > Star rating from </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMinStarRating" runat="server" Width="130px">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblMaxStarRating" runat="server" > Star rating To </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMaxStarRating" runat="server" Width="130px">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cmpStarRatingValidator" runat="server" ErrorMessage="Max star rating should be greater than min star rating"
                    Operator="GreaterThan" ControlToCompare="ddlMinStarRating" ControlToValidate="ddlMaxStarRating"
                    ValidationGroup="Search" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>
                <asp:Label ID="lblMinGusetRating" runat="server" > Guest rating from </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMinGuestRating" runat="server" Width="130px">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblMaxGusetRating" runat="server" > Guest rating To </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMaxGuestRating" runat="server" Width="130px">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cmpGusetRatingValidator" runat="server" ErrorMessage="Max guest rating should be greater than min guest rating"
                    Operator="GreaterThan" ControlToCompare="ddlMinGuestRating" ControlToValidate="ddlMaxGuestRating"
                    ValidationGroup="Search" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMinTotalRating" runat="server" > Total rating from </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMinTotalRating" runat="server" Width="130px">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>200</asp:ListItem>
                    <asp:ListItem>300</asp:ListItem>
                    <asp:ListItem>500</asp:ListItem>
                    <asp:ListItem>1000</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>3000</asp:ListItem>
                    <asp:ListItem>4000</asp:ListItem>
                    <asp:ListItem>5000</asp:ListItem>
                    <asp:ListItem>6000</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblMaxTotalRating" runat="server" > Total rating To </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlMaxTotalRating" runat="server" Width="130px">
                    <asp:ListItem>300</asp:ListItem>
                    <asp:ListItem>500</asp:ListItem>
                    <asp:ListItem>1000</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>3000</asp:ListItem>
                    <asp:ListItem>4000</asp:ListItem>
                    <asp:ListItem>5000</asp:ListItem>
                    <asp:ListItem>6000</asp:ListItem>
                    <asp:ListItem>7000</asp:ListItem>
                    <asp:ListItem>8000</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cmpTotalRatingValidator" runat="server" ErrorMessage="Max total rating should be greater than min total rating"
                    Operator="GreaterThan" ControlToCompare="ddlMinTotalRating" ControlToValidate="ddlMaxTotalRating"
                    ValidationGroup="Search" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    <table style="margin-right: 30px; margin-left: auto">
        <tr>
            <td>
                <asp:Button ID="btnSearch" runat="server"  BorderColor="#3A4F63" BackColor="#3A4F63"
                    Font-Bold="True" Font-Names="Arial Black" ForeColor="White" Text="Search" OnClick="btnSearch_Click"
                    ValidationGroup="Search" />
            </td>
            <td>
                <asp:Button ID="btnShowAll" runat="server"  BorderColor="#3A4F63" BackColor="#3A4F63"
                    Font-Bold="True" Font-Names="Arial Black" ForeColor="White" Text="Show All" OnClick="btnShowAll_Click" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="dgvHotels" runat="server" PageSize="2" ShowFooter="True" Style="margin-left: auto; 
        margin-right: auto" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="dgvHotels_PageIndexChanging">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblHotelName" runat="server" Text='<%#Eval("hotelInfo.hotelName")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("hotelInfo.hotelImageUrl")%>' />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hotel Information">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblHotelLongNameTitle" runat="server" Text="Hotel Name : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblHotelNameValue" runat="server" Text='<%#Eval("hotelInfo.localizedHotelName")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblDestination" runat="server" Text="Destination : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDestinationValue" runat="server" Text='<%#Eval("hotelInfo.hotelLongDestination")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblStreetAddress" runat="server" Text="Street Address : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblStreetAddressValue" runat="server" Text='<%#Eval("hotelInfo.hotelStreetAddress")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblLatitude" runat="server" Text="Latitude : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblLatitudeValue" runat="server" Text='<%#Eval("hotelInfo.hotelLatitude")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblLongitude" runat="server" Text="Longitude : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblLongitudeValue" runat="server" Text='<%#Eval("hotelInfo.hotelLongitude")%>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hotel Pricing Info">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblPricePerNight" runat="server" Text="Price Per Night : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPricePerNightValue" runat="server" Text='<%#Eval("hotelPricingInfo.originalPricePerNight")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCrossOutPrice" runat="server" Text="Cross Out Price : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblCrossOutPriceValue" runat="server" Text='<%#Eval("hotelPricingInfo.crossOutPriceValue")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTotalPrice" runat="server" Text="Total Price : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTotalPriceValue" runat="server" Text='<%#Eval("hotelPricingInfo.totalPriceValue")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblAveragePriceValue" runat="server" Text="Average Price Value : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblAveragePriceValueValue" runat="server" Text='<%#Eval("hotelPricingInfo.averagePriceValue")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblSavingsPercent" runat="server" Text="Savings percent : "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblSavingsPercentValue" runat="server" Text='<%#Eval("hotelPricingInfo.percentSavings")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCurrency" runat="server" Text='<%#Eval("hotelPricingInfo.currency")%>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Star Rating">
                <ItemTemplate>
                    <asp:Label ID="lblStarRating" runat="server" Text='<%#Eval("hotelInfo.hotelStarRating")%>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Guest Review Rating">
                <ItemTemplate>
                    <asp:Label ID="lblGuestReviewRating" runat="server" Text='<%#Eval("hotelInfo.hotelGuestReviewRating")%>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Reviews">
                <ItemTemplate>
                    <asp:Label ID="lblReviewTotal" runat="server" Text='<%#Eval("hotelInfo.hotelReviewTotal")%>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Has VIP Access">
                <ItemTemplate>
                    <asp:CheckBox ID="lblHasVIPAccess" runat="server" Checked='<%#Eval("hotelInfo.vipAccess")%>'
                        Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Is Official Rating">
                <ItemTemplate>
                    <asp:CheckBox ID="lblIsOfficialRating" runat="server" Checked='<%#Eval("hotelInfo.isOfficialRating")%>'
                        Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#4B6C9E" ForeColor="White" />
    </asp:GridView>
</asp:Content>
