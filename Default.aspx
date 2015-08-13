﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" MaintainScrollPositionOnPostback="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>Pride Coupon Shopping | Electronics | Fashion | Mobile Accessories   </title>
<meta name="description" content="Shop online from a range of categories such as mobiles and gadgets, PC’s and laptops, clothing accessories, electronics, food and outing, Gifts at Pride Coupons" />
<meta name="keywords" content="Coupon Codes,shopclues Coupons,Promo Codes,Electronics & Computers Coupons,shopping coupons, Promotion Codes,All coupons at one place, Latest coupons,online deals for Snapdeal, Flipkart, Jabong,snapdeal,paytm,amazon online coupons,Travel & Holidays,Kids, Babies & Toys,Shoes & Bags,Fashion & Accessories" />
<meta name="googlebot" content="index, follow">
<meta name="robots" content="index, follow">
<meta name="rating" content="General" />
<meta name="distribution" content="global" />
<meta name="author" content="http://www.pridecoupons.com" />
<meta name="google-site-verification" content="tDocEzL300R0S1CjohccLYf7Y2PWlBXOLNy_rg1yNf0" />
<meta name="msvalidate.01" content="654CDD9EF1609D256B2A25552B6F947A" />
<meta name="alexaVerifyID" content="ds3zIKUROb0jws_rFGMlQKUcNdM"/> 


<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-65832231-1', 'auto');
    ga('send', 'pageview');

</script>



    <link href="Css/StyleSheet.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


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
	color: #086584;
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
	/*background-color: #B4DFED;*/
    background-color: #dddddd;
}

        .menustyle {
    /*background-color:#0489B1;*/
   /*background-color:#4B98B2;*/
  /*background-color: #BDBDBD;*/
    background-color: #9FC5D7;
     height:46px;
     width:300px;
    
}
      .auto-style2 {
          width: 63%;
      }
    </style>

   <%-- <script language="javascript">
        document.all["<%= Focus %>"].focus();
        if ("<%= ControlType %>" == "TextArea")
            document.all["<%= Focus %>"].select();
		</script>--%>


    </head>

<body>
    <form id="form1" runat="server">


    <div style="width:100%;text-align:center" >
        <ajx:ToolkitScriptManager ID="tv" runat="server"></ajx:ToolkitScriptManager>

    <table width="100%" align="center" class="bg1">
        <tr>
                  <td width="98%"  align="center"  colspan="3">
                      <table width="100%" background="images/Logo.png" style="background-image:url(images/Logo.png); background-repeat:no-repeat;">
                          <tr>
                              <td width="40%">
                                 &nbsp;
                              </td>
                              <td align="center" width="40%" >
                                  <asp:ImageButton ID="ImageButton77" runat="server" ImageUrl="~/Images/bnner.gif" PostBackUrl="~/Default.aspx" Width="800px" Height="100px" />
                              </td>
                          </tr>
                      </table>
                  </td>
                  <td widtth="2%">&nbsp;</td>
              </tr>


            <tr class="menustyle"  >
                  <td style="width:60%;" >
                                   <ul class="myMenu">
                  	                                      <li><a href="#">Shopping</a>
                                                       <ul>
        	                                                <li><%--<a href="ElectronicOffers.aspx">Electronics</a> --%>
                                                                <asp:LinkButton ID="lnkshop" runat="server" Text="Electronics" OnClick="lnkshop_Click"></asp:LinkButton>
        	                                                </li>
                                                            <li><%--<a href="FashionOffers.aspx">Fashions</a>--%>
                                                                <asp:LinkButton ID="lnkshop1" runat="server" Text="Fashions" OnClick="lnkshop1_Click"></asp:LinkButton>
                                                            </li>
                                                            <li><%--<a href="KitchenOffers.aspx">Home & Kitchen</a>--%>
                                                                <asp:LinkButton ID="lnkshop2" runat="server" Text="Home & Kitchen" OnClick="lnkshop2_Click"></asp:LinkButton>
                                                            </li>
                                                            <li><%--<a href="OthersOffers.aspx">Other Categories</a>--%>
                                                                <asp:LinkButton ID="lnkshop3" runat="server" Text="Other Categories" OnClick="lnkshop3_Click"></asp:LinkButton>
                                                            </li>
                                                        </ul>
                                         	</li>
                                        <li><a href="#">Travel </a>
    	                                    <ul>
        	                                    <li><%--<a href="#">Domestic Flights</a>--%>
                                                    <asp:LinkButton ID="lnktravel" runat="server" Text="Domestic Flights" OnClick="lnktravel_Click" ></asp:LinkButton>
        	                                    </li>
                                                <li><%--<a href="#">International Flights</a>--%>
                                                       <asp:LinkButton ID="lnktravel1" runat="server" Text="International Flights" OnClick="lnktravel1_Click"></asp:LinkButton>
                                                </li>
                                                <li><%--<a href="#">Hotel Booking</a>--%>
                                                       <asp:LinkButton ID="lnktravel2" runat="server" Text="Hotel Booking" OnClick="lnktravel2_Click"></asp:LinkButton>
                                                </li>
                                                <li><%--<a href="#">Bus Tickets</a>--%>
                                                       <asp:LinkButton ID="lnktravel3" runat="server" Text="Bus Tickets" OnClick="lnktravel3_Click"></asp:LinkButton>
                                                </li>
                                            </ul>
                                        </li>
                                       <%--     <li><a href="#">Bank</a>
                                               <ul>
        	                                        <li><a href="#">Sbi Card Offers</a></li>
                                                    <li><a href="#">Icici Card Offers</a></li>
                                                    <li><a href="#">Hdfc Card Offers</a></li>
                                                    <li><a href="#">Axis Card Offers</a></li>
                                                </ul>
                                            </li>--%>
                                             <li><%--<a href="#">Food</a>--%>
                                                 <asp:LinkButton ID="lnkfood1" runat="server" Text="Food Deals" OnClick="lnkfood1_Click"></asp:LinkButton>
                                             </li>
                                             <li><%--<a href="#">Top Deals</a>--%>
                                                 <asp:LinkButton ID="lnktop" runat="server" Text="Top Deals" OnClick="lnktop_Click"></asp:LinkButton>
                                             </li>
                                             <li><%--<a href="#">All Stores</a>--%>
                                                 <asp:LinkButton ID="lnkall" runat="server" Text="All Stores" OnClick="lnkall_Click" ></asp:LinkButton>
                                             </li>

                                      </ul>
                  </td>

                  <td  width="40%"  >
                      <table width="100%">
                          <tr>
                              <td>
                      <asp:TextBox ID="txtserch" runat="server" Height="35px" Width="400px" Font-Size="16px" ></asp:TextBox>
                                <ajx:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtserch"
                                       WatermarkText="Search For Your Favourite Store " />
                 <ajx:AutoCompleteExtender ServiceMethod="GetCompletionList" MinimumPrefixLength="1"
                    CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="txtserch"
                    ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false">
                </ajx:AutoCompleteExtender>

 
                              </td>
                              <td>
                                 <asp:ImageButton ID="serchimgbtn" runat="server" ImageUrl="~/Images/images.jpg" Height="40px" OnClick="serchimgbtn_Click" />

                              </td>
                          </tr>
                      </table>
                  </td>
            </tr> 

            <tr>
                  <td  align="center" width="100%" colspan="2" >
                       <ajx:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green" ActiveTabIndex="0">

                                          <ajx:TabPanel ID="TabPanel3" runat="server" >
                                            <HeaderTemplate>
                                            <span style="color:#308EC2;">   Home</span>
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
                                             <span style="color:#308EC2;">   Top Online Stores</span>
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
                                                             <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/shopclues.jpg"  Height="50px" Width="125px"  />&nbsp;&nbsp;<%-- OnClick="ImageButton4_Click"  OnClientClick="form1.target ='_blank';"--%>
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
                                                <span style="color:#308EC2;">  Mobile & Electronics</span>
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
                                                             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Images/shopclues.jpg"  Height="50px" Width="125px" />&nbsp;&nbsp;<%--OnClick="ImageButton13_Click"  OnClientClick="form1.target ='_blank';--%>
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
                                           <span style="color:#308EC2;">  Clothing & Shoes</span>
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
                                                             <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="~/Images/shopclues.jpg"  Height="50px" Width="125px" />&nbsp;&nbsp; <%--OnClick="ImageButton19_Click"  OnClientClick="form1.target ='_blank';"--%>
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
                                            <span style="color:#308EC2;"> Flights & Hotels</span>
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
                                           <span style="color:#308EC2;"> Online Food Orders</span>
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

          <tr >
                      <td align="center" colspan="2" class="h2head">
                         <h4> Hot Coupons & Offers Of The Day</h4>
                      </td>
              </tr>

               <tr >
                     <td align="center" colspan="2">
                         <asp:DataList ID="ddtop" runat="server" width="100%"  RepeatColumns="4"  OnItemDataBound="Item_Bound" 
                             onitemcommand="DataList1_ItemCommand1" CellPadding="1" CellSpacing="0" Height="300px">
                             <ItemTemplate>
                                       
                               <table width="100%"  align="center" class="cattd" >
                                   <tr>
                                      <td align="center" class="tabletop">
                                          <asp:Image runat="server" ID="cimg1" ImageUrl='<%# Eval("imagepath") %>' Height="60px" Width="150px"/>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="catsubject" align="center"  >  
                                        <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("discription") %>'></asp:Label>
                                     </td>
                                  </tr>
                                  <tr><td>&nbsp;</td></tr>
                                  <tr>
                                      <td align="center" class="tablebottom">
                                          <asp:Button ID="btn" runat="server"  Text='<%# Eval("catcode") %>' CssClass="btncursor" 
                                              CommandName="coupon" CommandArgument='<%# Eval("id") %>'   />
                                          <asp:Button ID="btn1" runat="server"  Text='<%# Eval("code") %>' CssClass="btncursor" Visible="false" Enabled="false"  />
                                      </td>
                                  </tr>
                                   <tr>
                                      <td>
                                          <asp:TextBox  ID="txt" runat="server"  Width="0px" BorderStyle="None" Height="0px" AutoPostBack="true"></asp:TextBox>
                                      </td>
                                  </tr>
                              </table>
                                 <br />
                             </ItemTemplate>
                          </asp:DataList>
                     </td>
                 </tr>

              <tr>
                      <td class="auto-style2">
                              <br />
                      </td>
                </tr>

              <tr  id="top" runat="server" >
                 <td  align="center" colspan="2" >
                       <table width="90%"  align="center" style="border:2px solid #61380B;">
                                 <tr>

                                    <td style="padding-left:10px;" valign="top"  id="wrapperclass" width="15%">
                                        <table align="left" style="width: 200px" >   
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
                                                    <asp:LinkButton ID="lnktravels" Text="Travels & Hotels" CssClass="simple"
                                                           runat="server" OnClick="lnktravels_Click"></asp:LinkButton></strong>
                                                 </td>
                                             </tr>
                                  
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
                                             <tr>
                    <td height="35" align="left" valign="top" style="background:url(images/nav_line_strip.png); background-repeat:no-repeat;">
                         <strong>
                         <asp:LinkButton ID="LinkButton1" Text="Others" CssClass="simple"
                               runat="server" OnClick="LinkButton1_Click"  ></asp:LinkButton></strong>
            </td>
                  </tr>          
                                         </table>
                                   </td>

                                     <td width="2%">&nbsp;</td>

                                   <td width="75%" colspan="4" runat="server" id="velectronic" align="center" >
                                     <table width="100%" align="center">

                                             <tr class="bg">
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> <asp:Label ID="lbltitle" runat="server" ></asp:Label></h4>
                                                  </td>
                                            </tr>
                                         <tr>
                                             <td align="center" width="100%">
                                                 <table align="center" width="100%">
                                                     <tr>
                                                         <td width="75%" align="center">
                                                                <asp:DataList ID="DataList1" runat="server" width="50%"  RepeatColumns="3"  OnItemDataBound="Item_Bound1" 
                                                                 onitemcommand="DataList1_ItemCommand2" CellPadding="8" CellSpacing="0" Height="150px">
                                                                 <ItemTemplate>
                                       
                                                                   <table width="80%"  align="center" class="cattd1">
                                                                       <tr>
                                                                          <td align="center" class="tabletop">
                                                                              <asp:Image runat="server" ID="cimg2" ImageUrl='<%# Eval("imagepath") %>' Height="60px" Width="150px"/>
                                                                          </td>
                                                                      </tr>
                                                                      <tr>
                                                                          <td class="catsubject" align="center">  
                                                                            <asp:Label ID="lbldesc1" runat="server" Text='<%# Eval("discription") %>'></asp:Label>
                                                                         </td>
                                                                      </tr>
                                                                      <tr><td>&nbsp;</td></tr>
                                                                      <tr>
                                                                          <td align="center" class="tablebottom">
                                                                              <asp:Button ID="dlbtn" runat="server"  Text='<%# Eval("catcode") %>' CssClass="btncursor"  on
                                                                                  CommandName="dlcoupon" CommandArgument='<%# Eval("id") %>'  />
                                                                              <asp:Button ID="dlbtn1" runat="server"  Text='<%# Eval("code") %>' CssClass="btncursor" Visible="false" Enabled="false"  />
                                                                          </td>
                                                                      </tr>
                                                                       <tr>
                                      <td>
                                          <asp:TextBox  ID="txt1" runat="server"  Width="0px" BorderStyle="None" Height="0px" AutoPostBack="true"></asp:TextBox>

                                      </td>
                                  </tr>
                                                                  </table>
                                                                 </ItemTemplate>
                                                              </asp:DataList>
                                                          </td>
                                             <asp:Label ID="lblnorecord" runat="server" ></asp:Label>
                                                            <td align="center" valign="bottom" width="25%">
                                   <asp:LinkButton ID="lnkmore" runat="server" Text="More ..." Font-Bold="true" Font-Underline="false" Font-Names="Arial" OnClick="lnkmore_Click"
                                      ></asp:LinkButton>  
                              </td>
                                                    </tr>
                                                 </table>
                                             </td>
                                         </tr>
                                    </table>
                               </td>
                          
                                </tr>
                         </table>
                  </td>
            </tr>

              <tr>
                          <td class="auto-style2">
                              <br />
                          </td>
                      </tr>

                <tr  id="top1" runat="server" >
                  <td colspan="2" >
                         <table width="100%">
                          <tr> <td  width="2%">
                      &nbsp;
                   </td>
                   <td  width="27%" align="right">
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
                   <td  width="27%" align="left">
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
                  <td colspan="2" >
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
                  <td colspan="2">
                      <bottomcontrol:Top ID="bottom" runat="server" />
                  </td>
              </tr>
        </table>
    </div>
    </form>
</body>
</html>
