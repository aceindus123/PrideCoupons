<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KitchenOffers.aspx.cs" Inherits="KitchenOffers" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Pride Coupons : Kitchen Offers : : </title>
</head>
<body>
    <form id="form1" runat="server">
  <div style="width:100%;text-align:center" >

        <ajx:ToolkitScriptManager ID="tv" runat="server"></ajx:ToolkitScriptManager>

          <table class="bg1">
               <tr>
                  <td>
                     <topcontrol:Top ID="top1" runat="server"></topcontrol:Top>
                  </td>
              </tr>

                 <tr>
                  <td align="center">
                    <h2> <i> Kitchen Offers </i></h2>
                  </td>
              </tr>

                 <tr>
                                             <td>
                                                 <table>
                                                     <tr>
                                                         <td>
                                                                <asp:DataList ID="DataList1" runat="server" width="60%"  RepeatColumns="4"  OnItemDataBound="Item_Bound1" 
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
