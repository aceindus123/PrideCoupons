<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>: : Pride Coupons : :</title>
<%--    <link rel="stylesheet" type="text/css" href="http://w2ui.com/src/w2ui-1.4.min.css" />--%>
    <link href="Css/StyleSheet.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


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

              <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Hot Coupons & Offers Of The Day</h4>
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
                      <table width="100%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="cimg1" ImageUrl="~/Images/paytm.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject"  >  
                                Electronics Sale – Upto Rs.8,000 
                                Cashback On Mobiles & Electronics 
                            </td>
                          </tr>
                          <tr><td>&nbsp;</td></tr>
                          <tr>
                              <td align="center" class="tablebottom">
                                  <asp:ImageButton ID="ImageButton40" runat="server"  ImageUrl="~/Images/getdeal.png" PostBackUrl="https://paytm.com/shop/h/electronics"
                                      OnClientClick="form1.target ='_blank';"    />
                                   <asp:Image ID="paytmcoupon" runat="server"  ImageUrl="~/Images/flip.png"  Visible="false"
                                        />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  
                                   <td width="2%" >
                                                    &nbsp;
                                  </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="Button1" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="Button1_Click" OnClientClick="form1.target ='_blank';"  />
                              </td>
                          </tr>
                      </table>
                  </td>

                    <td  width="2%">
                      &nbsp;
                  </td>

                   <td class="cattd">
                       <table width="100%">
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
                                    <asp:ImageButton ID="ImageButton41" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton41_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                   <td width="2%" >
                      &nbsp;
                  </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton42" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton42_Click"  OnClientClick="form1.target ='_blank';" />
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
                          <table align="center" style="width: 90%; " >
                              <tr>
                    <td  width="2%">
                      &nbsp;
                  </td>

                            <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton51" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton51_Click" OnClientClick="form1.target ='_blank';"  />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  
                                   <td width="2%" >
                                                    &nbsp;
                                  </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton52" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton52_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                    <td  width="2%">
                      &nbsp;
                  </td>

                   <td class="cattd">
                       <table width="100%">
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
                                    <asp:ImageButton ID="ImageButton53" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton53_Click" OnClientClick="form1.target ='_blank';"  />
                              </td>
                          </tr>
                      </table>
                  </td>

                   <td width="2%" >
                      &nbsp;
                  </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton54" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton54_Click" OnClientClick="form1.target ='_blank';"  />
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
                              <br />
                          </td>
                      </tr>
     


          <tr>
              <td  align="left">
                       <table align="left" >
                                 <tr>

                                    <td style="padding-left:20px;" valign="top"  id="wrapperclass" width="16%">
                                        <table align="left" style="width: 180px" >   
                                            <tr><td><h2><span style="color:#F5A9F2">Categories</span></h2></td></tr>    
                                                    
                                             <tr>
                       <td height="35" align="left" valign="top" style="background:url(images/nav_line_strip.png); background-repeat:no-repeat; 
background-position:bottom; background-position:left;">
                         <strong>
                         <asp:LinkButton ID="linkmobiles" Text="Mobiles & Electronics" CssClass="simple"
                               runat="server" OnClick="linkmobiles_Click"  ></asp:LinkButton></strong>
                        </td>
                  </tr>       
                                             
                                             <tr>
                    <td height="35" align="left" valign="top" style="background:url(images/nav_line_strip.png); background-repeat:no-repeat;">
                          <strong><asp:LinkButton ID="linkfashions" Text="Fashions" CssClass="simple"
                               runat="server" OnClick="linkfashions_Click"  ></asp:LinkButton></strong>

                        </td>
                  </tr>
                               
                                             <tr>
                    <td height="35" align="left" valign="top" style="background:url(images/nav_line_strip.png); background-repeat:no-repeat;">
                        <strong>
                        <asp:LinkButton ID="lnktravels" Text="Hotels & Travels" CssClass="simple"
                               runat="server" OnClick="lnktravels_Click"></asp:LinkButton></strong>
                        </td></tr>
                                  
                                             <tr>
                    <td height="35" align="left" valign="top" style="background:url(images/nav_line_strip.png); background-repeat:no-repeat;">
                         <strong>
                         <asp:LinkButton ID="linkkitchen" Text="Home & Kitchen" CssClass="simple"
                               runat="server" OnClick="linkkitchen_Click" ></asp:LinkButton></strong>
            </td>
                  </tr>   
                               
                                             <tr>
                    <td height="35" align="left" valign="top" style="background:url(images/nav_line_strip.png); background-repeat:no-repeat;">
                         <strong>
                         <asp:LinkButton ID="lnkfood" Text="Food Items" CssClass="simple"
                               runat="server" OnClick="lnkfood_Click" ></asp:LinkButton></strong>
            </td>
                  </tr>          
                                         </table>
                                   </td>
                                     <td>&nbsp;</td>

                                            <td width="100%" colspan="4" runat="server" id="velectronic" >
                                     <table width="100%" >

                                             <tr class="bg">
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> Mobiles & Electronic Offers</h4>
                                                  </td>
                                            </tr>

                                             <tr>
                                                <td align="center" width="95%" colspan="7" >
                                                    <table align="center" style="width: 90%; " >
                                                         <tr>
                                                            <td  width="2%">
                                                              &nbsp;
                                                           </td>

                                                            <td class="cattd">
                                                                   <table width="100%">
                                                                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image4" ImageUrl="~/Images/paytm.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                                                                         <tr>
                            <td class="catsubject"  >  
                                Upto Rs.8,000 Extra Cash Back On All Mobile Phones
                            </td>
                          </tr>
                                                                           <tr><td>&nbsp;</td></tr>
                                                                          <tr>
                                                                              <td align="center" class="tablebottom">
                                                                                  <asp:ImageButton ID="ImageButton43" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton43_Click"  OnClientClick="form1.target ='_blank';" />
                                                                              </td>
                                                                          </tr>
                                                                   </table>
                                                           </td>
                                         
                                                           <td width="2%" >
                                                                            &nbsp;
                                                          </td>

                                                           <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton44" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton44_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                                                           <td  width="2%">
                      &nbsp;
                  </td>

                                                            <td class="cattd">
                       <table width="100%">
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
                                    <asp:ImageButton ID="ImageButton45" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton45_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                                                             <td width="2%" >
                      &nbsp;
                  </td>

                                                    

                                                          <td  width="8%" valign="bottom">
                     <table width="90%">
                          <tr>
                             
                              <td align="center" >
                                   <asp:LinkButton ID="lnkmore" runat="server" Text="More ..." Font-Bold="true" Font-Underline="false" Font-Names="Arial"
                                       OnClick="ImageButton74_Click"></asp:LinkButton>  
                              </td>
                          </tr>
                      </table>
                   </td>

                              </tr>
                                                     </table>
                                               </td>
                                             </tr>

                         <tr>
                  <td   colspan="7" >
                     
                  <%--      <%--<asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/Images/allelectronic.png" OnClick="ImageButton74_Click" />--%>
                </td>
              </tr>
                  </table>
              </td>
                                            <td width="100%" colspan="4" runat="server" id="vfashions" visible="false" align="center">
                                     <table width="100%" >

                                             <tr class="bg">
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> Fashions</h4>
                                                  </td>
                                            </tr>

                                             <tr>
                                                <td align="center" width="95%" colspan="7" >
                                                    <table align="center" style="width: 90%; " >
                                                         <tr>
                                                            <td  width="2%">
                                                              &nbsp;
                                                           </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton59" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton59_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  
                                   <td width="2%" >
                                                    &nbsp;
                                  </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton60" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton60_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                    <td  width="2%">
                      &nbsp;
                  </td>

                   <td class="cattd">
                       <table width="100%">
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
                                    <asp:ImageButton ID="ImageButton61" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton61_Click"  OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                                                             <td width="2%" >
                      &nbsp;
                  </td>

                                                    

                                                          <td  width="8%" valign="bottom">
                     <table width="90%">
                          <tr>
                             
                              <td align="center" >
                                   <asp:LinkButton ID="LinkButton1" runat="server" Text="More ..." Font-Bold="true" Font-Underline="false" Font-Names="Arial"
                                       OnClick="LinkButton2_Click"></asp:LinkButton>  
                              </td>
                          </tr>
                      </table>
                   </td>

                              </tr>
                                                     </table>
                                               </td>
                                             </tr>

                         <tr>
                  <td   colspan="7" >
                     
                  <%--      <%--<asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/Images/allelectronic.png" OnClick="ImageButton74_Click" />--%>
                </td>
              </tr>
                  </table>
              </td>
                                            <td width="100%" colspan="4" runat="server" id="vtravels" visible="false">
                                     <table width="100%" >

                                             <tr class="bg">
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> Hotels & Travels</h4>
                                                  </td>
                                            </tr>

                                             <tr>
                                                <td align="center" width="95%" colspan="7" >
                                                    <table align="center" style="width: 90%; " >
                                                         <tr>
                                                            <td  width="2%">
                                                              &nbsp;
                                                           </td>

                                                                    <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton63" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton63_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  
                                   <td width="2%" >
                                                    &nbsp;
                                  </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton64" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton64_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                    <td  width="2%">
                      &nbsp;
                  </td>

                   <td class="cattd">
                       <table width="100%">
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
                                    <asp:ImageButton ID="ImageButton65" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton65_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                                                             <td width="2%" >
                      &nbsp;
                  </td>

                                                    

                                                          <td  width="8%" valign="bottom">
                     <table width="90%">
                          <tr>
                             
                              <td align="center" >
                                   <asp:LinkButton ID="LinkButton2" runat="server" Text="More ..." Font-Bold="true" Font-Underline="false" Font-Names="Arial"
                                       OnClick="LinkButton4_Click"></asp:LinkButton>  
                              </td>
                          </tr>
                      </table>
                   </td>

                              </tr>
                                                     </table>
                                               </td>
                                             </tr>

                         <tr>
                  <td   colspan="7" >
                     
                  <%--      <%--<asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/Images/allelectronic.png" OnClick="ImageButton74_Click" />--%>
                </td>
              </tr>
                  </table>
              </td>
                                            <td width="100%" colspan="4" runat="server" id="vkitchen" visible="false">
                                     <table width="100%" >

                                             <tr class="bg">
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> Home & Kitchen </h4>
                                                  </td>
                                            </tr>

                                             <tr>
                                                <td align="center" width="95%" colspan="7" >
                                                    <table align="center" style="width: 90%; " >
                                                         <tr>
                                                            <td  width="2%">
                                                              &nbsp;
                                                           </td>

                                                     <td class="cattd">
                      <table width="100%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image17" ImageUrl="~/Images/shopclues.jpg" Height="50px" Width="125px"/>
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
                                  <asp:ImageButton ID="ImageButton47" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton47_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  
                                   <td width="2%" >
                                                    &nbsp;
                                  </td>

                   <td class="cattd">
                      <table width="100%">
                          <tr>
                              <td align="center" class="tabletop" >
                                  <asp:Image runat="server" ID="Image18" ImageUrl="~/Images/snapdeal.jpg" Height="50px" Width="125px"/>
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
                                  <asp:ImageButton ID="ImageButton48" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton48_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                    <td  width="2%">
                      &nbsp;
                  </td>

                   <td class="cattd">
                       <table width="100%">
                          <tr>
                              <td align="center" class="tabletop">
                                  <asp:Image runat="server" ID="Image19" ImageUrl="~/Images/flipkart.jpg" Height="50px" Width="125px"/>
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
                                    <asp:ImageButton ID="ImageButton49" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton49_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                                                             <td width="2%" >
                      &nbsp;
                  </td>

                                                    

                                                          <td  width="8%" valign="bottom">
                     <table width="90%">
                          <tr>
                             
                              <td align="center" >
                                   <asp:LinkButton ID="LinkButton3" runat="server" Text="More ..." Font-Bold="true" Font-Underline="false" Font-Names="Arial"
                                       OnClick="LinkButton1_Click"></asp:LinkButton>  
                              </td>
                          </tr>
                      </table>
                   </td>

                              </tr>
                                                     </table>
                                               </td>
                                             </tr>

                         <tr>
                  <td   colspan="7" >
                     
                  <%--      <%--<asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/Images/allelectronic.png" OnClick="ImageButton74_Click" />--%>
                </td>
              </tr>
                  </table>
              </td>
                                            <td width="100%" colspan="4" runat="server" id="vfood" visible="false">
                                     <table width="100%" >

                                             <tr class="bg">
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> Food Items </h4>
                                                  </td>
                                            </tr>

                                             <tr>
                                                <td align="center" width="95%" colspan="7" >
                                                    <table align="center" style="width: 90%; " >
                                                         <tr>
                                                            <td  width="2%">
                                                              &nbsp;
                                                           </td>

                                                              <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton67" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton67_Click" OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  
                                   <td width="2%" >
                                                    &nbsp;
                                  </td>

                   <td class="cattd">
                      <table width="100%">
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
                                  <asp:ImageButton ID="ImageButton68" runat="server"  ImageUrl="~/Images/getoffer.png" OnClick="ImageButton68_Click"  OnClientClick="form1.target ='_blank';" />
                              </td>
                          </tr>
                      </table>
                  </td>

                    <td  width="2%">
                      &nbsp;
                  </td>

                   <td class="cattd">
                       <table width="100%">
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
                                    <asp:ImageButton ID="ImageButton69" runat="server"  ImageUrl="~/Images/getdeal.png" OnClick="ImageButton69_Click" OnClientClick="form1.target ='_blank';"  />
                              </td>
                          </tr>
                      </table>
                  </td>


                                                             <td width="2%" >
                      &nbsp;
                  </td>

                                                    

                                                          <td  width="8%" valign="bottom">
                     <table width="90%">
                          <tr>
                             
                              <td align="center" >
                                   <asp:LinkButton ID="LinkButton4" runat="server" Text="More ..." Font-Bold="true" Font-Underline="false" Font-Names="Arial"
                                       OnClick="LinkButton3_Click"></asp:LinkButton>  
                              </td>
                          </tr>
                      </table>
                   </td>

                              </tr>
                                                     </table>
                                               </td>
                                             </tr>

                         <tr>
                  <td   colspan="7" >
                     
                  <%--      <%--<asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/Images/allelectronic.png" OnClick="ImageButton74_Click" />--%>
                </td>
              </tr>
                  </table>
              </td>

                                </tr>
                         </table>
                  </td>
           </tr>


                      <tr>
                          <td>
                              <br />
                          </td>
                      </tr>

              <tr>
                  <td colspan="5">
                         <table width="100%">
                          <tr> <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%" align="center">
                      <h3><span style="color:#848484">Top 5 Stores</span></h3>
                      <table>
                          <tr>
                              <td>
                            <asp:LinkButton ID="lnks1" runat="server" Text="Future Retail" CssClass="linktop" Font-Underline="false"  OnClientClick="form1.target ='_blank';" OnClick="lnks1_Click"></asp:LinkButton>      
                              </td>
                          </tr>
                          <tr>
                              <td>
                                 <asp:LinkButton ID="LinkButton5" runat="server" Text="Trent" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton5_Click"></asp:LinkButton>   
                              </td>
                          </tr>
                          <tr>
                              <td>
                                <asp:LinkButton ID="LinkButton6" runat="server" Text="Shoppers Stop" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton6_Click"></asp:LinkButton>    
                              </td>
                          </tr>
                          <tr>
                              <td>
                               <asp:LinkButton ID="LinkButton7" runat="server" Text="Kewal Kiran" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton7_Click"> </asp:LinkButton>      
                              </td>
                          </tr>
                          <tr>
                              <td>
                                <asp:LinkButton ID="LinkButton8" runat="server" Text="Pantaloons" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton8_Click"></asp:LinkButton>    
                              </td>
                          </tr>
                      </table>
                   </td>
                    <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%" align="center">
                      <h3> <span style="color:#848484"> Top 5 Brands </span></h3>
                       <table>
                          <tr>
                              <td>
                             <asp:LinkButton ID="LinkButton9" runat="server" Text="Samsung" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton9_Click"></asp:LinkButton>      
                              </td>
                          </tr>
                          <tr>
                              <td>
                               <asp:LinkButton ID="LinkButton10" runat="server" Text="Bata" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton10_Click"></asp:LinkButton>    
                              </td>
                          </tr>
                          <tr>
                              <td>
                                 <asp:LinkButton ID="LinkButton11" runat="server" Text="Sony" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton11_Click"></asp:LinkButton>   
                              </td>
                          </tr>
                          <tr>
                              <td>
                                 <asp:LinkButton ID="LinkButton12" runat="server" Text="Reliance" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton12_Click"></asp:LinkButton>   
                              </td>
                          </tr>
                          <tr>
                              <td>
                                <asp:LinkButton ID="LinkButton13" runat="server" Text="Bajaj" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton13_Click"></asp:LinkButton>    
                              </td>
                          </tr>
                      </table>
                  </td>
                   <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%" align="center">
                      <h3><span style="color:#848484">Top 5 Distributors</span></h3>
                       <table>
                          <tr>
                              <td>
                                <asp:LinkButton ID="LinkButton14" runat="server" Text="Flipkart" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton14_Click"></asp:LinkButton>    
                              </td>
                          </tr>
                          <tr>
                              <td>
                               <asp:LinkButton ID="LinkButton15" runat="server" Text="Amazon" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton15_Click"></asp:LinkButton>    
                              </td>
                          </tr>
                          <tr>
                              <td>
                                <asp:LinkButton ID="LinkButton16" runat="server" Text="Paytm" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton16_Click"></asp:LinkButton>   
                              </td>
                          </tr>
                          <tr>
                              <td>
                               <asp:LinkButton ID="LinkButton17" runat="server" Text="Snapdeal" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton17_Click"></asp:LinkButton>    
                              </td>
                          </tr>
                          <tr>
                              <td>
                                 <asp:LinkButton ID="LinkButton18" runat="server" Text="Jabong" CssClass="linktop" Font-Underline="false" OnClientClick="form1.target ='_blank';" OnClick="LinkButton18_Click"></asp:LinkButton>  
                              </td>
                          </tr>
                      </table>
                  </td>
                  
                          </tr>
                      </table>
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
                         Our team has strived hard and has gathered online coupons for all the various categories that are very much in demand in today’s market scenario. Some of the categories for which we offer coupons are mobiles phones, computers and laptops, entertainment, women apparels, clothing accessories, kids wear, baby products, pizza and snacks, food and outing, footwear, watches, sunglasses and many more. Pride Coupons has tied-up with some of the leading online shopping websites where customers will get the best quality products and that too at a reasonable price. When it comes to online coupons, the products are discounted and you can purchase from a bevy of online shopping options. We have got some of the best Ecommerce merchants such as eBay.in, Amazon, olx, Flipkart, Snapdeal, Jabong, Food panda, Myntra, Domino’s, Pizza Hut, Paytm.Now you can happily shop online and save money too.
                      </p>
                  </td>
                               <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%" >
                      <b>How to use Coupon Codes?</b>
                      <p style="text-align:justify;font:15px Arial;">
                          At Pride Coupons, We offer coupons as well as deals to our customers. When it comes to buying coupons, then is when coupon codes come into action. Coupons codes are codes that are encoded on coupons which basically offer various products through a merchant’s website. All the products that are discounted and can be purchased through coupon codes, have their unique coupon codes. To use the coupon code, first select the item that you are interested to purchase through coupons, then click on ‘get this coupon’ and you will be redirected to the merchant (Flipkart, Snapdeal, Jabong, food panda) website which will open in a new tab through our site that is Pride coupons. Select all the items and add to your cart, come back to our site copy the coupon code and then go back to merchant’s website and paste the code. 
                      </p>
                  </td>
                               <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%">
                      <b>What we do?</b>
                      <p style="text-align:justify;font:15px Arial;">
                          We act as a hub, wherein we provide all the online shopping enthusiasts a range of best discount coupons and that too from various categories to choose from. We eventually want to provide all the online shoppers the best deals not leaving aside any online coupon offers (barring a few) that may dissatisfy our online customers. We have an experienced and skilled team who are well-versed in ecommerce business, and through rigorous research bring out the best deals and discount offers, which can enthrall our valued customers. So, if you are looking out for any discount offers or top deals for the products that you aspire to purchase, then do visit our site and grab the offers. We also strongly believe in information updates, and hence will update all the important coupon related info and best deals that might help customers in buying decisions. 
                      </p>
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
