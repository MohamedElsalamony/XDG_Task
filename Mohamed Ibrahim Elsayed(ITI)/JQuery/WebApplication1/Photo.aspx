<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photo.aspx.cs" Inherits="WebApplication1.Photo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #newimage {
            display:none;
            /*margin-left:500px;*/
            
            
        }

       
    </style>
    
    <script src="jquery-1.9.0.min.js"></script>
    <script>
        function MaxImg()
            {
            $("#max").css({ "width": "800px", "height": "400px" });
            $("#sky").css({ "margin-left": "50px" });
            $("#newimage").css({ "width": "800px", "height": "400px", "display": "block" });
            $("#image").css({ "display": "none" });
            $("#image").css({ "position": "absolute" });
            $("#max").css({ "position": "absolute" });
            $("#newimage").css({ "border-style": "solid" });
            $("#newimage").css({ "border-width": "10px" });
            $("#newimage").css({ "border-color": "black" });
            $("#newimage").animate({left:'250px',opacity:'0.5',height:'150px',width:'150px' })



            }
        

    </script>
    
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <div id ="sky">
                        <img alt=""  src="Images/1.jpg" style="height: 189px; width: 345px" id="image" onclick="MaxImg()" />       </div>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><div id="newimage"> <img src="Images/1.jpg" id="max"  />  </div> </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
