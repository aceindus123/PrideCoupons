<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>
<%@ Register Src="Usercontrols/Top.ascx" TagName="Top" TagPrefix="topcontrol" %>
<%@ Register Src="Usercontrols/Bottom.ascx" TagName="Top" TagPrefix="bottomcontrol" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>: : Pride Coupons : About Us : : </title>
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
                   <td  colspan="2"  >
                      <b>About Us</b>
                      <p style="text-align:justify;font:15px Arial;">
                         Pride Coupons is a premium online coupons provider, with a sole objective to serve the best discount coupons for all our valued customers. With keen interest and devotion towards this wonderful platform, we want to serve all our customers by offering the best coupon offers for a variety of categories. We have meticulously planned the layout of our website, so that a customer can easily browse from a number of categories in an easy manner. We will be providing only the best offers, by which a customer can save their money. We are tied up with the leading Ecommerce merchants such as Flip kart, Snap deal, Amazon, Jabong, Food panda etc.,. Customer loyalty and satisfaction is utmost important to us, and hence we encourage our customers to provide us their valuable feedback as and when required.  
                      </p>
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
