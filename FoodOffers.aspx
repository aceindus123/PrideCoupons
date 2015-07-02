<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FoodOffers.aspx.cs" Inherits="FoodOffers" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Pride Coupons : Food Offers : : </title>
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
                    <h2> <i> Food Offers </i></h2>
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
                  <td>
                      <bottomcontrol:Top ID="bottom" runat="server" />
                  </td>
              </tr>
          </table>
             
       </div>
    </form>
</body>
</html>
