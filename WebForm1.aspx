<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebServiceONGC.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" lang="javascipt">
        var tb_name,id;
        function GetDataById() {
            
            id = document.getElementById("ID").value;
            if (id == "") {
                alert("All Fields are necessary before proceeding");
            }
            tb_name = document.getElementById("TABLE_NAME").value;
            
            WebServiceONGC.DataFetchService.GetDataById(id, tb_name, GetDataByIdSuccessCallback);//,GetDataByIdFailedCallback);
        }
        function GetDataByIdSuccessCallback(result) {
                if (tb_name == 'select')
                    alert("Select a name before proceed");
                else if (tb_name == "FIELD" && id != "") {
                    if (result["INSERT_DATE"] == null)
                        alert("Wrong ID");
                    else
                        top.location.href = 'WebForm2.aspx?id=' + id;
                }
                else if (tb_name == "BOREHOLE" && id != "") {
                    if (result["INSERT_DATE"] == null)
                        alert("Wrong ID");
                    else
                        top.location.href = 'WebForm3.aspx?id=' + id;
                }
           
        }
            
    </script>
    <style>
        body{
            text-align:center;
            padding:100px;
            
        }
        table{
            margin:0px auto;
        }
       
    </style>
</head>
<body >
    <form id="form1" runat="server">
       
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/DataFetchService.asmx" />
            </Services>
        </asp:ScriptManager>
        
        <h3 style="background-color:deepskyblue">Enter ID and TABLE NAME</h3>
        
        <table style="font-family: Arial; border: 1px solid black">
            <tr>
                <td><b>ID</b></td>
                <td>
                    <asp:TextBox ID="ID" runat="server">
                    </asp:TextBox>
                </td>
                <td><b>TABLE NAME</b></td>
                <td>
                    <select id="TABLE_NAME">
                            <option value="select"></option>
                            <option value="FIELD">FIELD</option>
                            <option value="BOREHOLE">BOREHOLE</option>
                    </select>
                </td>
                <td>
                    <input id="Button1" type="button" value="GET VALUES" onclick="GetDataById()" />
                  
                </td>
            </tr>                  
        </table>
            
        <asp:Label ID="lblPageTime" runat="server"></asp:Label>
        <p id="demo"></p>

    </form>
</body>
</html>
