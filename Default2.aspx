<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>: : Pride Coupons : :</title>
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

              <tr >
                      <td align="center" colspan="2" class="h2head">
                         <h4> Hot Coupons & Offers Of The Day</h4>
                      </td>
              </tr>

              <tr>
                     <td align="center"  width="100%">
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
                                              CommandName="coupon" CommandArgument='<%# Eval("id") %>'  />
                                          <asp:Button ID="btn1" runat="server"  Text='<%# Eval("code") %>' CssClass="btncursor" Visible="false" Enabled="false"  />
                                      </td>
                                  </tr>
                              </table>
                                 <br />
                             </ItemTemplate>
                          </asp:DataList>
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
                                         </table>
                                   </td>
                                     <td>&nbsp;</td>

                                   <td width="100%" colspan="4" runat="server" id="velectronic" >
                                     <table width="100%" >

                                             <tr class="bg">
                                                  <td align="center" colspan="2" class="h2head">
                                                     <h4> <asp:Label ID="lbltitle" runat="server" ></asp:Label></h4>
                                                  </td>
                                            </tr>
                                         <tr>
                                             <td>
                                                 <table>
                                                     <tr>
                                                         <td>
                                                                <asp:DataList ID="DataList1" runat="server" width="60%"  RepeatColumns="3"  OnItemDataBound="Item_Bound1" 
                                                                 onitemcommand="DataList1_ItemCommand2" CellPadding="8" CellSpacing="0" Height="150px">
                                                                 <ItemTemplate>
                                       
                                                                   <table width="80%"  align="center" class="cattd" >
                                                                       <tr>
                                                                          <td align="center" class="tabletop">
                                                                              <asp:Image runat="server" ID="cimg2" ImageUrl='<%# Eval("imagepath") %>' Height="60px" Width="150px"/>
                                                                          </td>
                                                                      </tr>
                                                                      <tr>
                                                                          <td class="catsubject" align="center"  >  
                                                                            <asp:Label ID="lbldesc1" runat="server" Text='<%# Eval("discription") %>'></asp:Label>
                                                                         </td>
                                                                      </tr>
                                                                      <tr><td>&nbsp;</td></tr>
                                                                      <tr>
                                                                          <td align="center" class="tablebottom">
                                                                              <asp:Button ID="dlbtn" runat="server"  Text='<%# Eval("catcode") %>' CssClass="btncursor" 
                                                                                  CommandName="dlcoupon" CommandArgument='<%# Eval("id") %>'  />
                                                                              <asp:Button ID="dlbtn1" runat="server"  Text='<%# Eval("code") %>' CssClass="btncursor" Visible="false" Enabled="false"  />
                                                                          </td>
                                                                      </tr>
                                                                  </table>
                                                                 </ItemTemplate>
                                                              </asp:DataList>
                                                          </td>
                                             <asp:Label ID="lblnorecord" runat="server" ></asp:Label>
                                                            <td align="center" valign="bottom" >
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
