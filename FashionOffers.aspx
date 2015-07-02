<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FashionOffers.aspx.cs" Inherits="FashionOffers" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Pride Coupons : Fashion Offers : :</title>
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
                    <h2> <i> Fashion  Offers </i></h2>
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
                  <td>
                      <bottomcontrol:Top ID="bottom" runat="server" />
                  </td>
              </tr>
          </table>
             
       </div>
    </form>
</body>
</html>
