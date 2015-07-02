<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelOffers.aspx.cs" Inherits="TravelOffers" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Pride Coupons : Travel Offers: :</title>
</head>
<body>
    <form id="form1" runat="server">
      <div width="100%" class="bg">
        <ajx:ToolkitScriptManager ID="tv" runat="server"></ajx:ToolkitScriptManager>

          <table width="100%" align="center">
               <tr>
                  <td>
                     <topcontrol:Top ID="top1" runat="server"></topcontrol:Top>
                  </td>
              </tr>

               <tr>
                  <td align="center">
                    <h2> <i> Travel  Offers </i></h2>
                  </td>
              </tr>

                <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 90%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image24" ImageUrl="~/Images/goibibo.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Hotel Sale – Flat 55% Off On Domestic Hotel Booking
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton63" runat="server"  ImageUrl="~/Images/getdeal.png" />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  
                                   <td width="2%" >
                                                    &nbsp;
                                  </td>

                   <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop" >
                                  <asp:Image runat="server" ID="Image25" ImageUrl="~/Images/yatra.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                              Rs.300 To Rs.1000 eCash Cashback On Flight Bookings
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton64" runat="server"  ImageUrl="~/Images/getoffer.png" />
                              </td>
                          </tr>
                      </table>
                  </td>

                    <td  width="2%">
                      &nbsp;
                  </td>

                   <td class="cattd">
                       <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image26" ImageUrl="~/Images/oyorooms.png" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Flat Rs.300 Off On All Hotel Bookings
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton65" runat="server"  ImageUrl="~/Images/getdeal.png" />
                              </td>
                          </tr>
                      </table>
                  </td>

                   <td width="2%" >
                      &nbsp;
                  </td>

                   <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image27" ImageUrl="~/Images/travelguru.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                               Flat Rs.1000 Off On Rs.6000 On All Hotel Bookings
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton66" runat="server"  ImageUrl="~/Images/getoffer.png" />
                              </td>
                          </tr>
                      </table>
                  </td>

                   <td  width="2%">
                      &nbsp;
                   </td>

                              </tr>
                          </table>
                      </td>
            
              </tr>

               <tr>
                  <td>
                      <bottomcontrol:Top ID="bottom" runat="server" />
                  </td>
              </tr>
          </table>
             
       </div>
    </form>
</body>
</html>
