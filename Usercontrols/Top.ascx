﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Top.ascx.cs" Inherits="Usercontrols_Top" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
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
<div width="100%">
    <table width="100%" align="center">
               <tr>
                  <td width="98%"  colspan="2">
                      <table width="100%" background="images/Logo.png">
                          <tr>
                              <td width="40%">
                                 <%--<asp:ImageButton ID="homelogobtn" runat="server" ImageUrl="~/Images/Logo.png" PostBackUrl="~/Default.aspx" />--%>
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
                               <%--         <li><a href="Default.aspx">Home</a>
                          
                                         	</li>--%>

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

                                          <ajx:TabPanel ID="TabPanel3" runat="server" >
                                            <HeaderTemplate>
                                              Home
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                             <asp:Panel ID="Panel5" runat="server">
                                                 <%-- Top Online Stores data--%>
                                                 <table>
                                                     <tr>
                                                         <td >
                                                             <asp:ImageButton ID="ImageButton40" runat="server" ImageUrl="~/Images/home.png" Height="50px" Width="125px" PostBackUrl="~/Default.aspx" />&nbsp;&nbsp;
                                                         </td>
                                                     </tr>
                                                 </table>
                                              </asp:Panel>
                                             </ContentTemplate>
                                            </ajx:TabPanel>

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
    </table>
</div>