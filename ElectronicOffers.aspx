<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ElectronicOffers.aspx.cs" Inherits="ElectronicOffers" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>

<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Pride Coupons: Electronic Offers : : </title>
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
                    <h2> <i> Electronics Offers </i></h2>
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
                  <td>
                      <bottomcontrol:Top ID="bottom" runat="server" />
                  </td>
              </tr>
          </table>
             
       </div>
    </form>
</body>
</html>
