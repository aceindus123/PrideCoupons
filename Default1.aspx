<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="Default1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>: : Pride Coupons1 : :</title>
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
                         <h4> Mobiles & Electronic Offers</h4>
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
                      <asp:ImageButton ID="ImageButton74" runat="server" ImageUrl="~/Images/allelectronic.png" OnClick="ImageButton74_Click" />
                  </td>
              </tr>



                  <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Home & Kitchen</h4>
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
                      <asp:ImageButton ID="ImageButton73" runat="server" ImageUrl="~/Images/allcooking.png" OnClick="ImageButton73_Click" />
                  </td>
              </tr>

                    <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                     <%--  <asp:Image ID="imgcloth" runat="server" ImageUrl="~/Images/person.png" Width="80px" Height="50px" />--%>  <h4> Clothing & Footwear Offers</h4>
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
                      <asp:ImageButton ID="ImageButton72" runat="server" ImageUrl="~/Images/allfashion.png" OnClick="ImageButton72_Click" />
                  </td>
              </tr>

                      <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Flights & Hotel Offers</h4>
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
                  <td align="center" class="allcat" colspan="7">
                      <asp:ImageButton ID="ImageButton71" runat="server" ImageUrl="~/Images/alltravel.png" OnClick="ImageButton71_Click" />
                  </td>
              </tr>

                <tr class="bg">
                      <td align="center" colspan="2" class="h2head">
                         <h4> Online Food Order Offers</h4>
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
                      <asp:ImageButton ID="imgall" runat="server" ImageUrl="~/Images/allfood.png" OnClick="imgall_Click" />
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
                  <td>
                      <bottomcontrol:Top ID="bottom" runat="server" />
                  </td>
              </tr>

          </table>
    </div>
    </form>
</body></html>
