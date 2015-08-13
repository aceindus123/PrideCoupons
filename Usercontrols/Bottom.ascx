<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Bottom.ascx.cs" Inherits="Usercontrols_Bottom" %>

<div>
    <table width="100%">
          <tr>
                  <td align="center" style="height:50px; background-repeat:repeat-x;padding-top:10px;" colspan="4">
                      <table align="center" width="90%">
                           <tr>
                                <td align="center"   >
                                  <asp:LinkButton ID="lnkabout" runat="server" Text="About Us" Font-Underline="false" Font-Bold="true" 
                                      PostBackUrl="~/AboutUs.aspx"></asp:LinkButton>
                    &nbsp; &nbsp; &nbsp;                <asp:LinkButton ID="LinkButton1" runat="server" Text="Contact Us" Font-Underline="false" Font-Bold="true" ></asp:LinkButton>
                      &nbsp; &nbsp; &nbsp;              <asp:LinkButton ID="LinkButton2" runat="server" Text="All Stores" Font-Underline="false" Font-Bold="true" ></asp:LinkButton>
                      &nbsp; &nbsp; &nbsp;              <asp:LinkButton ID="LinkButton3" runat="server" Text="Terms & Conditions" Font-Underline="false" Font-Bold="true" ></asp:LinkButton>
                               </td>

                               <td align="right">

                                   <table>
                                       <tr>
                                           <td>
                                               <h4> Follow US On :    </h4> 
                                           </td>
                                           <td>
                                                <asp:ImageButton ID="social1" runat="server" ImageUrl="~/Images/facebook.jpg"  Height="40px" Width="50px" OnClick="social1_Click"/>
                               <%--    <asp:ImageButton ID="ImageButton75" runat="server" ImageUrl="~/Images/google.png" Height="40px" Width="50px" />--%>
                                   <asp:ImageButton ID="ImageButton76" runat="server" ImageUrl="~/Images/twitter.png"  Height="40px" Width="50px"/>
                                           </td>
                                       </tr>
                                   </table>
                            

                               </td>
                          </tr>

                          <tr>
                              <td align="right" >
                                  <span class="copy">Copy Right © 2015 Pride Coupons. All Rights Reserved 
                                  </span>
                              </td>
                         </tr>
                      </table>
                  </td>
              </tr>
    </table>
</div>