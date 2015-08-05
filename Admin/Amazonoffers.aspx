<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Amazonoffers.aspx.cs" Inherits="Admin_Amazonoffers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>: : Admin : Home Page : : </title>
    <link href="../Css/adminstyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <div class="adminlogo" align="center">
           <img src="../Images/adminlogo.jpg" />
         </div>
        <br />
      
       
    <div align="center" width="60%">
         <table  width="60%"  >
               <tr><td>  <br /></td></tr>
             <tr>
                 <td colspan="3" align="center">
                          <asp:LinkButton ID="lnkoffers" runat="server" PostBackUrl="~/Admin/Admin-Homepage.aspx" Text="Home" Font-Underline="false" Font-Size="18px"></asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td colspan="3" align="center">
                      <h2>
                            Upload Details 
                     </h2>
                 </td>
             </tr>
             <tr><td>  <br /></td></tr>

           
             <tr>
                 <td  align="right" class="upload">
                     <asp:Label ID="lbl1" runat="server" Text="Select Category"></asp:Label>
                 </td>
                 <td><b>&nbsp;&nbsp;:&nbsp;&nbsp;</b></td>
                 <td class="upload1">
                     <asp:DropDownList ID="ddcategory" runat="server" AutoPostBack="true" Width="180px" OnSelectedIndexChanged="ddcategory_SelectedIndexChanged">
        <%--                 <asp:ListItem>Select</asp:ListItem>
                         <asp:ListItem>Mobiles & Electronics</asp:ListItem>
                         <asp:ListItem>Fashions</asp:ListItem>
                         <asp:ListItem>Travels & Hotels</asp:ListItem>
                         <asp:ListItem>Food Items</asp:ListItem>
                         <asp:ListItem>Home & Furniture</asp:ListItem>--%>
                     </asp:DropDownList>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddcategory" ValidationGroup="submit" ForeColor="Red"
                  InitialValue="Select"         ErrorMessage="Select Category"></asp:RequiredFieldValidator>
                 </td>
             </tr>
               <tr>
                 <td  align="right" class="upload">
                     <asp:Label ID="Label1" runat="server" Text="Select Sub Category"></asp:Label>
                 </td>
                 <td><b>&nbsp;&nbsp;:&nbsp;&nbsp;</b></td>
                 <td class="upload1">
                     <asp:DropDownList ID="ddsub" runat="server" AutoPostBack="true" Width="180px" >
                     </asp:DropDownList>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddsub" ValidationGroup="submit" ForeColor="Red"
                  InitialValue="Select"         ErrorMessage="Select Sub Category"></asp:RequiredFieldValidator>
                 </td>
             </tr>
               <tr>
                 <td  align="right" class="upload">
                     <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                 </td>
                 <td><b>&nbsp;&nbsp;:&nbsp;&nbsp;</b></td>
                 <td class="upload1">
                    <asp:TextBox ID="txtdes" runat="server" TextMode="MultiLine" Width="178px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="re1" runat="server" ControlToValidate="txtdes" ValidationGroup="submit" ForeColor="Red"
                          ErrorMessage="Enter Description"></asp:RequiredFieldValidator>
                 </td>
             </tr>

             <tr>
                 <td  align="right" class="upload">
                     <asp:Label ID="Label6" runat="server" Text="Domain Link"></asp:Label>
                 </td>
                 <td><b>&nbsp;&nbsp;:&nbsp;&nbsp;</b></td>
                 <td class="upload1">
                    <asp:TextBox ID="txttag" runat="server" TextMode="MultiLine" Width="178px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttag"
                         ForeColor="Red"  ValidationGroup="submit" ErrorMessage="Enter Url"></asp:RequiredFieldValidator>

                 </td>
             </tr>
               <tr><td>  <br /></td></tr>

             <tr>
                 <td>&nbsp;</td><td>&nbsp;</td>
                 <td >
                     <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" ValidationGroup="submit" />
                       <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" />
                 </td>
             </tr>
         </table>
    </div>
    </form>
</body>