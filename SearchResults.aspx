<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchResults.aspx.cs" Inherits="SearchResults" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>: : Pride Coupon More Offers : :</title>

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
      .fancy-green .ajax__tab_header {
          background: url(images/green_bg_Tab.gif) repeat-x;
          cursor: pointer;
      }

      .fancy-green .ajax__tab_hover .ajax__tab_outer, .fancy-green .ajax__tab_active .ajax__tab_outer {
          background: url(images/green_left_Tab.gif) no-repeat left top;
      }

      .fancy-green .ajax__tab_hover .ajax__tab_inner, .fancy-green .ajax__tab_active .ajax__tab_inner {
          background: url(images/green_right_Tab.gif) no-repeat right top;
      }

      .fancy .ajax__tab_header {
          font-size: 15px;
          font-weight: bold;
          color: #086584;
          font-family: sans-serif;
      }

      .fancy .ajax__tab_active .ajax__tab_outer, .fancy .ajax__tab_header .ajax__tab_outer, .fancy .ajax__tab_hover .ajax__tab_outer {
          height: 46px;
      }

      .fancy .ajax__tab_active .ajax__tab_inner, .fancy .ajax__tab_header .ajax__tab_inner, .fancy .ajax__tab_hover .ajax__tab_inner {
          height: 46px;
          margin-left: 16px; /* offset the width of the left image */
      }

      .fancy .ajax__tab_active .ajax__tab_tab, .fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_header .ajax__tab_tab {
          margin: 16px 16px 0px 0px;
      }

      .fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_active .ajax__tab_tab {
          color: #fff;
      }

      .fancy .ajax__tab_body {
          font-family: Arial;
          font-size: 12pt;
          border-top: 0;
          border: 1px solid #999999;
          padding: 15px;
          /*background-color: #B4DFED;*/
          background-color: #dddddd;
      }

      .menustyle {
          background-color: #9FC5D7;
          height: 46px;
          width: 300px;
      }

      .auto-style2 {
          width: 63%;
      }
    </style>

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

            <%--<tr  id="hot" runat="server" visible="false">
                 <td align="center" colspan="2" class="h2head">
                         <h4> Hot Coupons & Offers Of The Day</h4>
                   </td>
              </tr>--%>

        <tr  id="hot" runat="server" visible="false" >
            
                 
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> <asp:Label ID="lbltitle" runat="server" ></asp:Label></h4>
                                                  </td>
                                       
              </tr>

               <tr  id="hot1" runat="server" visible="false">
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
                  <td colspan="2">
                      <bottomcontrol:Top ID="bottom" runat="server" />
                  </td>
              </tr>
        </table>
    </div>
    </form>
</body>
</html>
