<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uploadflip.aspx.cs" Inherits="Admin_Uploadflip" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>: : Pride Coupons : Admin : :</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <div class="adminlogo" align="center">
           <img src="../Images/adminlogo.jpg" />
         </div>
        <br />

    
           <div align="center" width="60%">
         <table  width="60%"  >
               <tr>
                 <td colspan="3" align="center">
                          <asp:LinkButton ID="lnkoffers" runat="server" PostBackUrl="~/Admin/Admin-Homepage.aspx" Text="Home" Font-Underline="false" Font-Size="18px"></asp:LinkButton>
                 </td>
                    <td  align="center">
                          <asp:LinkButton ID="LinkButton1" runat="server"  Text="Delete Old Data" Font-Underline="false" Font-Size="18px" OnClick="LinkButton1_Click"></asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td colspan="3" align="center">
                      <h2>
                            Upload File 
                     </h2>
                 </td>
             </tr>
             <tr><td>  <br /></td></tr>
     

              <tr>
                 <td  align="right" class="upload">
                     <asp:Label ID="Label5" runat="server" Text="Upload XML File"></asp:Label>
                 </td>
                 <td><b>&nbsp;&nbsp;:&nbsp;&nbsp;</b></td>
                 <td class="upload1">
                   <asp:FileUpload ID="uploadfile"  runat="server" Width="180px"/>
                 </td>
             </tr>

               <tr><td>  <br /></td></tr>

             <tr>
                 <td>&nbsp;</td><td>&nbsp;</td>
                 <td >
                     <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click"  />
                     <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" />
                 </td>
             </tr>
         </table>
    </div>
    </div>
    </form>
</body>
</html>
