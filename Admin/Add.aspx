<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Admin_Add" %>

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
             <tr>
                 <td colspan="3" align="center">
                          <asp:LinkButton ID="lnkoffers" runat="server" PostBackUrl="~/Admin/Admin-Homepage.aspx" Text="Home" Font-Underline="false" Font-Size="18px"></asp:LinkButton>
                 </td>
             </tr>
               <tr><td>  <br /></td></tr>

             <tr>
                 <td>
                          <asp:LinkButton ID="lnkcat" runat="server"  Text="Catagory" Font-Underline="false" Font-Size="18px" OnClick="lnkcat_Click"></asp:LinkButton>
                 </td>
                   <td  align="center">
                          <asp:LinkButton ID="lnksubcat" runat="server"  Text="Sub Catagory" Font-Underline="false" Font-Size="18px" OnClick="lnksubcat_Click"></asp:LinkButton>
                 </td>
                   <td>
                          <asp:LinkButton ID="lnkcompany" runat="server"  Text="Company" Font-Underline="false" Font-Size="18px" OnClick="lnkcompany_Click"></asp:LinkButton>
                 </td>

                 </tr>
             </table>
          <br />
          <table width="40%">
              <tr id="cat" runat="server" >
                  <td>
                      Add Catagory
                  </td>
                  <td><b>:</b></td>
                  <td>
                      <asp:TextBox ID="txtcat" runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Catogory" ValidationGroup="cat1" 
                          ControlToValidate="txtcat" ForeColor="Red" ></asp:RequiredFieldValidator>
                  </td>
                  <td>
                      <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" ValidationGroup="cat1" />
                  </td>
              </tr>
              <tr id="subcat1" runat="server">
                  <td>
                      Select Catagory
                  </td>
                  <td><b>:</b></td>
                   <td>
                      <asp:DropDownList ID="ddcat" runat="server">
                          <asp:ListItem>Select</asp:ListItem>
                      </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Catogory" ValidationGroup="cat" 
                          ControlToValidate="ddcat" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr id="subcat" runat="server">
                 
                  <td>
                      Add Sub Catagory
                  </td>
                  <td><b>:</b></td>
                  <td>
                      <asp:TextBox ID="txtsub" runat="server" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Enter Sub Catogory" ValidationGroup="cat" 
                          ControlToValidate="txtsub" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  <td>
                      <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="cat"  />
                  </td>
              </tr>

              <tr id="comp" runat="server">
                  <td>
                      Add Company

                  </td>

                  <td><b>:</b></td>
                  <td>
                      <asp:TextBox ID="txtcomp" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Company" ValidationGroup="cat2" 
                          ControlToValidate="txtcomp" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  <td>
                      <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" ValidationGroup="cat2" />
                  </td>
              </tr>

          </table>
        </div>
    </form>
</body>
</html>
