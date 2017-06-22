<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebServiceONGC.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            
    <script type="text/javascript" lang="javascipt">

        function alwayscall() {
            document.getElementById("ID").value = document.getElementById("ID1").value;
        }

        function change_table() {
            var tb = document.getElementById("TABLE_NAME").value;
            if (tb == "BOREHOLE")
                top.location.href = 'WebForm3.aspx';
            else if (tb == 'select')
                alert("Select a name before proceed");
            
        }

        function home() {
            top.location.href = 'WebForm1.aspx';
        }

        function GetDataById() {
           
            var id1 = document.getElementById("ID").value;
            WebServiceONGC.DataFetchService.GetDataById(id1,"FIELD", GetDataByIdSuccessCallback);//,GetDataByIdFailedCallback);
        }

        function GetDataByIdSuccessCallback(result) {

            if (result["INSERT_DATE"] == null) {
                alert("INVALID USER (please enter correct id to view 'field details')");
                document.getElementById("INSERT_DATE").value = result["INSERT_DATE"];
                document.getElementById("INSERT_USER").value = result["INSERT_USER"];
                document.getElementById("PRODUCED_BY").value = result["PRODUCED_BY"];
                document.getElementById("SDAT_LABEL").value = result["SDAT_LABEL"];
                document.getElementById("UPDATE_DATE").value = result["UPDATE_DATE"];
                document.getElementById("UPDATE_USER").value = result["UPDATE_USER"];
                document.getElementById("EXISTENCE_KIND").value = result["EXISTENCE_KIND"];
                document.getElementById("GUID").value = result["GUID"];
                document.getElementById("VERSION").value = result["VERSION"];
                document.getElementById("NAME").value = result["NAME"];
                document.getElementById("ORIGINAL_SOURCE").value = result["ORIGINAL_SOURCE"];
                document.getElementById("REMARKS").value = result["REMARKS"];
                document.getElementById("SOURCE").value = result["SOURCE"];
                document.getElementById("BASIN_ID").value = result["BASIN_ID"];
                document.getElementById("BOUNDARY_AREA_ID").value = result["BOUNDARY_AREA_ID"];
                document.getElementById("DISCOVERY_DATE").value = result["DISCOVERY_DATE"];
                document.getElementById("DISCOVERY_TYPE").value = result["DISCOVERY_TYPE"];
                document.getElementById("DISCOVERY_WELL_ID").value = result["DISCOVERY_WELL_ID"];
                document.getElementById("FIELD_TYPE").value = result["FIELD_TYPE"];
                document.getElementById("LOCATION_ID").value = result["LOCATION_ID"];
                document.getElementById("PARENT_FIELD_ID").value = result["PARENT_FIELD_ID"];
                document.getElementById("PROJECT").value = result["PROJECT"];
            }
            else {
                
                document.getElementById("INSERT_DATE").value = result["INSERT_DATE"];
                document.getElementById("INSERT_USER").value = result["INSERT_USER"];
                document.getElementById("PRODUCED_BY").value = result["PRODUCED_BY"];
                document.getElementById("SDAT_LABEL").value = result["SDAT_LABEL"];
                document.getElementById("UPDATE_DATE").value = result["UPDATE_DATE"];
                document.getElementById("UPDATE_USER").value = result["UPDATE_USER"];
                document.getElementById("EXISTENCE_KIND").value = result["EXISTENCE_KIND"];
                document.getElementById("GUID").value = result["GUID"];
                document.getElementById("VERSION").value = result["VERSION"];
                document.getElementById("NAME").value = result["NAME"];
                document.getElementById("ORIGINAL_SOURCE").value = result["ORIGINAL_SOURCE"];
                document.getElementById("REMARKS").value = result["REMARKS"];
                document.getElementById("SOURCE").value = result["SOURCE"];
                document.getElementById("BASIN_ID").value = result["BASIN_ID"];
                document.getElementById("BOUNDARY_AREA_ID").value = result["BOUNDARY_AREA_ID"];
                document.getElementById("DISCOVERY_DATE").value = result["DISCOVERY_DATE"];
                document.getElementById("DISCOVERY_TYPE").value = result["DISCOVERY_TYPE"];
                document.getElementById("DISCOVERY_WELL_ID").value = result["DISCOVERY_WELL_ID"];
                document.getElementById("FIELD_TYPE").value = result["FIELD_TYPE"];
                document.getElementById("LOCATION_ID").value = result["LOCATION_ID"];
                document.getElementById("PARENT_FIELD_ID").value = result["PARENT_FIELD_ID"];
                document.getElementById("PROJECT").value = result["PROJECT"];
            }
        }
        /*
       function GetDataByIdFailedCallback(errors) {
            alert(errors.get_message());
        }
        */
    </script>

    <style>
        body{
            text-align:center;
            /*padding:5px;
            */
        }
        table{
            margin:0px auto;
        }
       
    </style>

</head>
<body onload="alwayscall()">
    <form id="form1" runat="server">
        
         <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/DataFetchService.asmx" />
            </Services>
        </asp:ScriptManager>
        
        <h1>FIELD VIEW</h1>
        <input type="hidden" id="ID1" value="<%=Request.QueryString["id"]%>" />  
        <table style="font-family: Arial; border: 1px solid black">
            <tr>
                <td><b>ID</b></td>
                <td>
                    <asp:TextBox ID="ID" runat="server"></asp:TextBox>            
                </td>
                <td>
                     <input id="Button1" type="button" value="GET VALUES" onclick="GetDataById()" />
                </td>
            </tr>
        </table>

       <h3 style="background-color:greenyellow">To get to know information about FIELD_VIEW press [GET VALUES]</h3>
        
       <table style="font-family: Arial; border: 1px solid black">
            <tr>
                <td><b>INSERT_DATE</b></td>
                <td>
                    <asp:TextBox ID="INSERT_DATE" runat="server"></asp:TextBox>
                </td>
                <td><b>INSERT_USER</b></td>
                <td>
                    <asp:TextBox ID="INSERT_USER" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>PRODUCED_BY</b></td>
                <td>
                    <asp:TextBox ID="PRODUCED_BY" runat="server"></asp:TextBox>
                </td>
                <td><b>SDAT_LABEL</b></td>
                <td>
                    <asp:TextBox ID="SDAT_LABEL" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>UPDATE_DATE</b></td>
                <td>
                    <asp:TextBox ID="UPDATE_DATE" runat="server"></asp:TextBox>
                </td>
                <td><b>UPDATE_USER</b></td>
                <td>
                    <asp:TextBox ID="UPDATE_USER" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>EXISTENCE_KIND</b></td>
                <td>
                    <asp:TextBox ID="EXISTENCE_KIND" runat="server"></asp:TextBox>
                </td>
                <td><b>GUID</b></td>
                <td>
                    <asp:TextBox ID="GUID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>VERSION</b></td>
                <td>
                    <asp:TextBox ID="VERSION" runat="server"></asp:TextBox>
                </td>
                <td><b>NAME</b></td>
                <td>
                    <asp:TextBox ID="NAME" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>ORIGINAL_SOURCE</b></td>
                <td>
                    <asp:TextBox ID="ORIGINAL_SOURCE" runat="server"></asp:TextBox>
                </td>
                <td><b>REMARKS</b></td>
                <td>
                    <asp:TextBox ID="REMARKS" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>SOURCE</b></td>
                <td>
                    <asp:TextBox ID="SOURCE" runat="server"></asp:TextBox>
                </td>
                <td><b>BASIN_ID</b></td>
                <td>
                    <asp:TextBox ID="BASIN_ID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>BOUNDARY_AREA_ID</b></td>
                <td>
                    <asp:TextBox ID="BOUNDARY_AREA_ID" runat="server"></asp:TextBox>
                </td>
                <td><b>DISCOVERY_DATE</b></td>
                <td>
                    <asp:TextBox ID="DISCOVERY_DATE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>DISCOVERY_TYPE</b></td>
                <td>
                    <asp:TextBox ID="DISCOVERY_TYPE" runat="server"></asp:TextBox>
                </td>
                <td><b>DISCOVERY_WELL_ID</b></td>
                <td>
                    <asp:TextBox ID="DISCOVERY_WELL_ID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>FIELD_TYPE</b></td>
                <td>
                    <asp:TextBox ID="FIELD_TYPE" runat="server"></asp:TextBox>
                </td>
                <td><b>LOCATION_ID</b></td>
                <td>
                    <asp:TextBox ID="LOCATION_ID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>PARENT_FIELD_ID</b></td>
                <td>
                    <asp:TextBox ID="PARENT_FIELD_ID" runat="server"></asp:TextBox>
                </td>
                <td><b>PROJECT</b></td>
                <td>
                    <asp:TextBox ID="PROJECT" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        
        <asp:Label ID="lblPageTime" runat="server"></asp:Label>
        <p id="demo"></p>

        <h4 style="background-color:violet">To change table, select from [TABLE NAME] and press [CHANGE TABLE] </h4>
        <table>
            <tr>
                <td><b>TABLE NAME</b></td>
                <td>
                    <select id="TABLE_NAME">
                            <option value="select"></option>
                            <option value="BOREHOLE">BOREHOLE</option>
                    </select>
                </td>
                <td>
                    <input id="Button2" type="button" value="CHANGE TABLE" onclick="change_table()" />
                </td>
            </tr>            
        </table>
        <br />
        <br />
        <input id="Button3" type="button" value="HOME" onclick="home()" />
    </form>
</body>
</html>
