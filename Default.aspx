<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Coupons : :</title>
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
	background: url(green_bg_Tab.gif) repeat-x;
	cursor:pointer;
}
.fancy-green .ajax__tab_hover .ajax__tab_outer, .fancy-green .ajax__tab_active .ajax__tab_outer
{
	background: url(green_left_Tab.gif) no-repeat left top;
}
.fancy-green .ajax__tab_hover .ajax__tab_inner, .fancy-green .ajax__tab_active .ajax__tab_inner
{
	background: url(green_right_Tab.gif) no-repeat right top;
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
    <div width="100%">
        <ajx:ToolkitScriptManager ID="tv" runat="server"></ajx:ToolkitScriptManager>

          <table width="100%" align="center">
              <tr>
                  <td >
                      <asp:ImageButton ID="homelogobtn" runat="server" ImageUrl="~/Images/Logo.png" PostBackUrl="~/Default.aspx" />
                  </td>
                  <td  >
                      &nbsp;
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
                                                             <asp:ImageButton ID="img1" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Images/flipkart-coupon-codes1.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
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
                                                             <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/Images/amazon-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
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
                                                             <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton22" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton23" runat="server" ImageUrl="~/Images/indiatimesshopping-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
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
                                                             <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton25" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton26" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton27" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton28" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton29" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton30" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton31" runat="server" ImageUrl="~/Images/goibibo-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
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
                                                             <asp:ImageButton ID="ImageButton32" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton33" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg" Height="50px" Width="125px" />&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton34" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton35" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton36" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton37" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton38" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
                                                             <asp:ImageButton ID="ImageButton39" runat="server" ImageUrl="~/Images/foodpanda-coupon-codes.jpg"  Height="50px" Width="125px"/>&nbsp;&nbsp;
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

                  <tr class="bg">
                      <td align="center" width="95%" colspan="9" >
                          <table align="center" style="width: 100%; " >
                              <tr>
                                   <td  width="5%">
                      &nbsp;
                  </td>
                    <td style="background-color:white; border:1px solid #EFFBF5;" width="20%" align="center">
                      <table >
                          <tr>
                              <td>
                                  <asp:Image runat="server" ID="cimg1" ImageUrl="~/Images/paytm-coupon-codes.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject">  
                                Electronics Sale – Upto Rs.10,000 
                                <br />Cashback On Mobiles & Electronics 
                            </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button ID="cbn1" runat="server" Text="GET THIS DEAL" CssClass="catbutton" />
                              </td>
                          </tr>
                      </table>
                  </td><td width="5%" >
                      &nbsp;
                  </td>

                   <td style="background-color:white; border:1px solid #EFFBF5;" width="20%" align="center">
                      <table >
                          <tr>
                              <td>
                                  <asp:Image runat="server" ID="Image1" ImageUrl="~/Images/paytm-coupon-codes.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject">  
                                Electronics Sale – Upto Rs.10,000 
                                <br />Cashback On Mobiles & Electronics 
                            </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button ID="Button1" runat="server" Text="GET THIS DEAL" CssClass="catbutton" />
                              </td>
                          </tr>
                      </table>
                  </td>
                                  <td  width="5%">
                      &nbsp;
                  </td>
                   <td style="background-color:white; border:1px solid #EFFBF5;" width="20%" align="center">
                      <table >
                          <tr>
                              <td>
                                  <asp:Image runat="server" ID="Image2" ImageUrl="~/Images/paytm-coupon-codes.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject">  
                                Electronics Sale – Upto Rs.10,000 
                                <br />Cashback On Mobiles & Electronics 
                            </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button ID="Button2" runat="server" Text="GET THIS DEAL" CssClass="catbutton" />
                              </td>
                          </tr>
                      </table>
                  </td><td width="5%" >
                      &nbsp;
                  </td>
                   <td style="background-color:white; border:1px solid #EFFBF5;" width="20%" align="center">
                      <table >
                          <tr>
                              <td>
                                  <asp:Image runat="server" ID="Image3" ImageUrl="~/Images/paytm-coupon-codes.jpg" Height="50px" Width="125px"/>
                              </td>
                          </tr>
                          <tr>
                            <td class="catsubject">  
                                Electronics Sale – Upto Rs.10,000 
                                <br />Cashback On Mobiles & Electronics 
                            </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button ID="Button3" runat="server" Text="GET THIS DEAL" CssClass="catbutton" />
                              </td>
                          </tr>
                      </table>
                  </td>
                                   <td  width="10%">
                      &nbsp;
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
