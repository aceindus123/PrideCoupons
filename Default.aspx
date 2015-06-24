<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Pride Coupons : :</title>
<%--    <link rel="stylesheet" type="text/css" href="http://w2ui.com/src/w2ui-1.4.min.css" />--%>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://w2ui.com/src/w2ui-1.4.min.js"></script>
    <link href="Css/StyleSheet.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.myMenu > li').bind('mouseover', openSubMenu);
            $('.myMenu > li').bind('mouseout', closeSubMenu);

            function openSubMenu() {
                $(this).find('ul').css('visibility', 'visible');
            };

            function closeSubMenu() {
                $(this).find('ul').css('visibility', 'hidden');
            };

        });
</script>

    <style type="text/css">
.fancy-green .ajax__tab_header
{
	background: url(images/green_bg_Tab.gif) repeat-x;
	cursor:pointer;
}
.fancy-green .ajax__tab_hover .ajax__tab_outer, .fancy-green .ajax__tab_active .ajax__tab_outer
{
	background: url(images/green_left_Tab.gif) no-repeat left top;
}
.fancy-green .ajax__tab_hover .ajax__tab_inner, .fancy-green .ajax__tab_active .ajax__tab_inner
{
	background: url(images/green_right_Tab.gif) no-repeat right top;
}
.fancy .ajax__tab_header
{
	font-size: 15px;
	font-weight: bold;
	color: #000;
	font-family: sans-serif;
}
.fancy .ajax__tab_active .ajax__tab_outer, .fancy .ajax__tab_header .ajax__tab_outer, .fancy .ajax__tab_hover .ajax__tab_outer
{
	height: 46px;
}
.fancy .ajax__tab_active .ajax__tab_inner, .fancy .ajax__tab_header .ajax__tab_inner, .fancy .ajax__tab_hover .ajax__tab_inner
{
	height: 46px;
	margin-left: 16px; /* offset the width of the left image */
}
.fancy .ajax__tab_active .ajax__tab_tab, .fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_header .ajax__tab_tab
{
	margin: 16px 16px 0px 0px;
}
.fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_active .ajax__tab_tab
{
	color: #fff;
}
.fancy .ajax__tab_body
{
	font-family: Arial;
	font-size: 12pt;
	border-top: 0;
	border:1px solid #999999;
	padding: 15px;
	background-color: #B4DFED;
}

        .auto-style1 {
            width: 31%;
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div width="100%" class="bg">
        <ajx:ToolkitScriptManager ID="tv" runat="server"></ajx:ToolkitScriptManager>

          <table width="100%" align="center">
              <tr>
                  <td width="98%"  colspan="2">
                      <table width="100%" background="images/Logo1.png">
                          <tr>
                              <td width="40%">
                                <%-- <asp:ImageButton ID="homelogobtn" runat="server" ImageUrl="~/Images/Logo.png" PostBackUrl="~/Default.aspx" />--%>
                              </td>
                              <td align="center" width="60%">
                                  <asp:ImageButton ID="ImageButton77" runat="server" ImageUrl="~/Images/bnner.gif" PostBackUrl="~/Default.aspx" Width="800px" Height="100px" />
                              </td>
                          </tr>
                      </table>
                  </td>
                 
              </tr>

              <tr class="menustyle"  >
                  <td >
                                   <ul class="myMenu">
	                                      <li><a href="#">Shopping</a>
                                                       <ul>
        	                                                <li><a href="#">Electronics</a> </li>
                                                            <li><a href="#">Fashions</a></li>
                                                            <li><a href="#">Home & Kitchen</a></li>
                                                            <li><a href="#">Other Categories</a></li>
                                                        </ul>
                                         	</li>
                                        <li><a href="#">Travel </a>
    	                                    <ul>
        	                                    <li><a href="#">Domestic Flights</a></li>
                                                <li><a href="#">International Flights</a></li>
                                                <li><a href="#">Hotel Booking</a></li>
                                                <li><a href="#">Bus Tickets</a></li>
                                            </ul>
                                        </li>
                                            <li><a href="#">Bank</a>
                                               <ul>
        	                                        <li><a href="#">Sbi Card Offers</a></li>
                                                    <li><a href="#">Icici Card Offers</a></li>
                                                    <li><a href="#">Hdfc Card Offers</a></li>
                                                    <li><a href="#">Axis Card Offers</a></li>
                                                </ul>
                                            </li>
                                             <li><a href="#">Food</a></li>
                                             <li><a href="#">Top Deals</a></li>
                                             <li><a href="#">All Stores</a></li>

                                      </ul>
                  </td>
                  <td  width="40%" >
                      <table>
                          <tr>
                              <td>
                      <asp:TextBox ID="txtserch" runat="server" Height="35px" Width="430px" Font-Size="16px" ></asp:TextBox>
                                  <ajx:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtserch" WatermarkText="Search For Your Favourite Store " />
 
                   
                              </td>
                              <td>
                      <asp:ImageButton ID="serchimgbtn" runat="server" ImageUrl="~/Images/images.jpg" Height="40px" />

                              </td>
                          </tr>
                      </table>
                  </td>
              </tr> 

                          <tr>
                              <td colspan="4" align="center" >

                                  <ajx:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green">

                                            <ajx:TabPanel ID="tbpnluser" runat="server" >
                                            <HeaderTemplate>
                                               Top Online Stores
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                             <asp:Panel ID="UserReg" runat="server">
                                                 <%-- Top Online Stores data--%>
                                                 <table>
                                                     <tr>
                                                         <td >
                                                             <asp:ImageButton ID="img1" runat="server" ImageUrl="~/Images/flipkart.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/amazon.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/ebay.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/snapdeal.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/shopclues.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/indiatimesshopping.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Images/jabong.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Images/yatra.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                         </td>
                                                     </tr>
                                                 </table>
                                              </asp:Panel>
                                             </ContentTemplate>
                                            </ajx:TabPanel>

                                            <ajx:TabPanel ID="tbpnlusrdetails" runat="server" >
                                            <HeaderTemplate>
                                                 Mobile & Electronics
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                            <asp:Panel ID="Panel1" runat="server">
                                                <%-- Mobile & Electronics  data--%>
                                                   <table>
                                                     <tr>
                                                         <td >
                                                             <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/amazon.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Images/flipkart.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Images/snapdeal.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Images/infibeam.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Images/jabong.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Images/shopclues.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Images/ebay.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/Images/indiatimesshopping.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                         </td>
                                                     </tr>
                                                 </table>
                                            </asp:Panel>
                                            </ContentTemplate>
                                            </ajx:TabPanel>

                                            <ajx:TabPanel ID="tbpnljobdetails" runat="server" >
                                            <HeaderTemplate>
                                            Clothing & Shoes
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                            <asp:Panel ID="Panel2" runat="server"> 
                                               <%-- Clothing & Shoes Data--%>
                                                       <table>
                                                     <tr>
                                                         <td >
                                                             <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/Images/indiatimesshopping.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/Images/yepme.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="~/Images/fashionara.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="~/Images/shopclues.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="~/Images/jabong.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="~/Images/amazon.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton22" runat="server" ImageUrl="~/Images/flipkart.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton23" runat="server" ImageUrl="~/Images/snapdeal.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                         </td>
                                                     </tr>
                                                 </table>
                                            </asp:Panel>
                                            </ContentTemplate>
                                            </ajx:TabPanel>

                                            <ajx:TabPanel ID="TabPanel1" runat="server" >
                                            <HeaderTemplate>
                                            Flights & Hotels
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                            <asp:Panel ID="Panel3" runat="server"> 
                                                <%--Flights & Hotels Data--%>
                                                       <table>
                                                     <tr>
                                                         <td >
                                                             <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="~/Images/goibibo.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton25" runat="server" ImageUrl="~/Images/yatra.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton26" runat="server" ImageUrl="~/Images/oyorooms.png"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton27" runat="server" ImageUrl="~/Images/travelguru.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton28" runat="server" ImageUrl="~/Images/thomascook.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton29" runat="server" ImageUrl="~/Images/makemytrips.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton30" runat="server" ImageUrl="~/Images/expedia.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton31" runat="server" ImageUrl="~/Images/booking.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                         </td>
                                                     </tr>
                                                 </table>
                                            </asp:Panel>
                                            </ContentTemplate>
                                            </ajx:TabPanel>

                                            <ajx:TabPanel ID="TabPanel2" runat="server" >
                                            <HeaderTemplate>
                                            Online Food Orders
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                            <asp:Panel ID="Panel4" runat="server"> 
                                             <%--   Online Food Orders Data--%>
                                                       <table>
                                                     <tr>
                                                         <td >
                                                             <asp:ImageButton ID="ImageButton32" runat="server" ImageUrl="~/Images/foodpanda.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton33" runat="server" ImageUrl="~/Images/kfc.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton34" runat="server" ImageUrl="~/Images/dominos.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton35" runat="server" ImageUrl="~/Images/justeat.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton36" runat="server" ImageUrl="~/Images/pizzahut.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton37" runat="server" ImageUrl="~/Images/tastykhana.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton38" runat="server" ImageUrl="~/Images/mcdonalds.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton39" runat="server" ImageUrl="~/Images/groupon.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                         </td>
                                                     </tr>
                                                 </table>
                                            </asp:Panel>
                                            </ContentTemplate>
                                            </ajx:TabPanel>

                                 </ajx:TabContainer>
                              </td>
                          </tr>

              <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Hot Coupons & Offers Of The Day</h4>
                      </td>
              </tr>

                  <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="cimg1" ImageUrl="~/Images/paytm.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Electronics Sale – Upto Rs.10,000 
                                Cashback On Mobiles & Electronics 
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton40" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image1" ImageUrl="~/Images/flipkart.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                               App Only – Big App Shopping Days – Upto 80% Off
                                 New Offers + Extra 10% Off For SBI Users
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="Button1" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                                  <asp:Image runat="server" ID="Image2" ImageUrl="~/Images/amazon.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Super Deal – Wide Range Of Footwear Below Rs.499 
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton41" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image3" ImageUrl="~/Images/travelguru.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                                Flat 8% Extra Off On Hotel Bookings – No Min Purchase
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton42" runat="server"  ImageUrl="~/Images/getoffer.png" />
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

                 <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image12" ImageUrl="~/Images/jabong.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Minimum 30% To 70% Off On Wide Range Of Products 
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton51" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image13" ImageUrl="~/Images/goibibo.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                              Mobile App Offer – Rs.1000 Go Cash On Downloading The App
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton52" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                                  <asp:Image runat="server" ID="Image14" ImageUrl="~/Images/snapdeal.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Accessories Sale – Upto 80% Off On Electronics & Fashion
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton53" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image15" ImageUrl="~/Images/shopclues.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                                
Upto 85% + Flat 14% Off On All Non-Electronics Products
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton54" runat="server"  ImageUrl="~/Images/getoffer.png" />
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

                <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image16" ImageUrl="~/Images/ebay.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Upto 50% + Extra 9% Off On Non Electronics – No Min Purchase
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton55" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image17" ImageUrl="~/Images/yepme.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                               Buy 1 Get 1 Free + Extra 10% Off Across Site – No Min Purchase
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton56" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                                  <asp:Image runat="server" ID="Image18" ImageUrl="~/Images/indiatimesshopping.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Upto 85% + Extra 10% Off On Select Apparels
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton57" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image19" ImageUrl="~/Images/foodpanda.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                                Flat 40% Off + Extra 25% Cash Back On Using PayUmoney
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton58" runat="server"  ImageUrl="~/Images/getoffer.png" />
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

                  <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Mobiles & Electronic Offers</h4>
                      </td>
              </tr>
              <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image4" ImageUrl="~/Images/paytm.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Upto Rs.10,000 Extra Cash Back On All Mobile Phones
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton43" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image5" ImageUrl="~/Images/flipkart.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                               App Only Offer – Moto G 2nd Gen At Flat Rs.9,999
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton44" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                                  <asp:Image runat="server" ID="Image6" ImageUrl="~/Images/amazon.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               20% To 50% Off Offers On Mobiles & Electronics
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton45" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image7" ImageUrl="~/Images/snapdeal.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                                Accessories Sale – Upto 40% Off On Electronics & Fashion
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton46" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                  <td align="center" class="allcat" colspan="7">
                      <asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/Images/allelectronic.png" />
                  </td>
              </tr>



                  <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Home & Kitchen</h4>
                      </td>
              </tr>

                <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image8" ImageUrl="~/Images/shopclues.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Upto 85% + Flat 14% Off On All Non-Electronics Products
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton47" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image9" ImageUrl="~/Images/snapdeal.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                               Upto 50% Off On Home & Personal Appliances
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton48" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                                  <asp:Image runat="server" ID="Image10" ImageUrl="~/Images/flipkart.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Electronics Sale – Upto Rs.10,000 
                                Cashback On Mobiles & Electronics 
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton49" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image11" ImageUrl="~/Images/amazon.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                                Laptops – Upto 25% On Best Selling Laptops
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton50" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                  <td align="center" class="allcat" colspan="7">
                      <asp:ImageButton ID="ImageButton73" runat="server" ImageUrl="~/Images/allcooking.png" />
                  </td>
              </tr>

                    <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Clothing & Footwear Offers</h4>
                      </td>
              </tr>

                <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image20" ImageUrl="~/Images/yepme.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Buy 1 Get 1 Free + Extra 10% Off Across Site – No Min Purchase
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton59" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image21" ImageUrl="~/Images/jabong.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                               Flat 20% Extra Off On Selected Top Brands
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton60" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                                  <asp:Image runat="server" ID="Image22" ImageUrl="~/Images/fashionara.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Exclusive – Upto 70% + Extra 10% Off Across Site – No Min Purchase
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton61" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image23" ImageUrl="~/Images/shoppersstop.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                                Flat 20% Off On Rs.4000 – Across Website
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton62" runat="server"  ImageUrl="~/Images/getoffer.png" />
                              </td>
                          </tr>
                      </table>
                  </td>

                   <td  width="4%">
                      &nbsp;
                   </td>

                              </tr>
                          </table>
                      </td>
            
              </tr>
                <tr>
                  <td align="center" class="allcat" colspan="7">
                      <asp:ImageButton ID="ImageButton72" runat="server" ImageUrl="~/Images/allfashion.png" />
                  </td>
              </tr>

                      <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Flights & Hotel Offers</h4>
                      </td>
              </tr>

                <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
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
                  <td align="center" class="allcat" colspan="7">
                      <asp:ImageButton ID="ImageButton71" runat="server" ImageUrl="~/Images/alltravel.png" />
                  </td>
              </tr>

                <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Online Food Order Offers</h4>
                      </td>
              </tr>

                <tr >
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="90%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image28" ImageUrl="~/Images/foodpanda.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Flat 40% Off + Extra 25% Cash Back On Using PayUmoney
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton67" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image29" ImageUrl="~/Images/justeat.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                             Flat 25% Off On All Food Orders – Across Website
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton68" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                                  <asp:Image runat="server" ID="Image30" ImageUrl="~/Images/kfc.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                               Flat 50% Off On Dips Bucket
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                    <asp:ImageButton ID="ImageButton69" runat="server"  ImageUrl="~/Images/getdeal.png" />
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
                                  <asp:Image runat="server" ID="Image31" ImageUrl="~/Images/dominos.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"   >  
                               Flat 20% Off On Rs.350 & Above
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>

                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton70" runat="server"  ImageUrl="~/Images/getoffer.png" />
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
                  <td align="center" class="allcat"  colspan="7">
                      <asp:ImageButton ID="imgall" runat="server" ImageUrl="~/Images/allfood.png" />
                  </td>
              </tr>
          

              <tr>
                  <td colspan="5">
                      <table width="100%">
                          <tr> <td  width="2%">
                      &nbsp;
                   </td>
                                <td  width="27%">
                      <b>What Kind Of Coupons Are Available?</b>
                      <p style="text-align:justify;font:15px Arial;">
                          We help online shoppers to get coupons, deals and offers for all online shopping websites in India at one place.
                           You can call us Coupon & Deals aggregators. We have become a one stop free shop to get all latest, working and genuine coupon
                           codes, promo deals and discount offers in India.
                      </p>
                  </td>
                               <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%" >
                      <b>How to use Coupon Codes?</b>
                      <p style="text-align:justify;font:15px Arial;">
                          We help online shoppers to get coupons, deals and offers for all online shopping websites in India at one place.
                           You can call us Coupon & Deals aggregators. We have become a one stop free shop to get all latest, working and genuine coupon
                           codes, promo deals and discount offers in India.
                      </p>
                  </td>
                               <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%">
                      <b>What we do?</b>
                      <p style="text-align:justify;font:15px Arial;">
                          We help online shoppers to get coupons, deals and offers for all online shopping websites in India at one place.
                           You can call us Coupon & Deals aggregators. We have become a one stop free shop to get all latest, working and genuine coupon
                           codes, promo deals and discount offers in India. 
                      </p>
                  </td>
                  
                          </tr>
                      </table>
                  </td>
                
              </tr>


              <tr>
                  <td align="center" style="height:50px; background-repeat:repeat-x;padding-top:10px;" colspan="4">
                      <table align="center" width="90%">
                           <tr>
                                <td align="center"   >
                                  <asp:LinkButton ID="lnkabout" runat="server" Text="About Us" Font-Underline="false" Font-Bold="true" 
                                      PostBackUrl="~/AboutUs.aspx"></asp:LinkButton>
                    &nbsp; &nbsp; &nbsp;                <asp:LinkButton ID="LinkButton1" runat="server" Text="Contact Us" Font-Underline="false" Font-Bold="true" ></asp:LinkButton>
                      &nbsp; &nbsp; &nbsp;              <asp:LinkButton ID="LinkButton2" runat="server" Text="All Sites" Font-Underline="false" Font-Bold="true" ></asp:LinkButton>
                      &nbsp; &nbsp; &nbsp;              <asp:LinkButton ID="LinkButton3" runat="server" Text="Terms & Conditions" Font-Underline="false" Font-Bold="true" ></asp:LinkButton>
                               </td>

                               <td align="right">

                                   <table>
                                       <tr>
                                           <td>
                                               <h4> Follow US On :    </h4> 
                                           </td>
                                           <td>
                                                <asp:ImageButton ID="social1" runat="server" ImageUrl="~/Images/facebook.jpg" />
                                   <asp:ImageButton ID="ImageButton75" runat="server" ImageUrl="~/Images/google.png" />
                                   <asp:ImageButton ID="ImageButton76" runat="server" ImageUrl="~/Images/twitter.png" />
                                           </td>
                                       </tr>
                                   </table>
                            

                               </td>
                          </tr>

                          <tr>
                              <td align="right" >
                                  <span class="copy">Copy Right © 2015 Pride Coupons. All Rights Reserved 
                                  </span>
                              </td>
                         </tr>
                      </table>
                  </td>
              </tr>
          </table>
    </div>
    </form>
</body>
</html>
