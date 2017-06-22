<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebServiceONGC.WebForm3" %>

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
            if (tb == "FIELD")
                top.location.href = 'WebForm2.aspx';
            else if (tb == 'select')
                alert("Select a name before proceed");

        }

        function home() {
            top.location.href = 'WebForm1.aspx';
        }

        function GetDataById() {
            var id1 = document.getElementById("ID").value;
            WebServiceONGC.DataFetchService.GetDataById(id1,"BOREHOLE", GetDataByIdSuccessCallback);//,GetDataByIdFailedCallback);
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
                document.getElementById("ACTUAL_HOLE_COST").value = result["ACTUAL_HOLE_COST"];
                document.getElementById("BOREHOLE_NUMBER").value = result["BOREHOLE_NUMBER"];
                document.getElementById("BOREHOLE_REASON").value = result["BOREHOLE_REASON"];
                document.getElementById("BOREHOLE_SHAPE").value = result["BOREHOLE_SHAPE"];
                document.getElementById("BOREHOLE_TYPE").value = result["BOREHOLE_TYPE"];
                document.getElementById("BOTTOM_LOCATION_ID").value = result["BOTTOM_LOCATION_ID"];
                document.getElementById("COST_CURRENCY").value = result["COST_CURRENCY"];
                document.getElementById("CURRENT_STATUS").value = result["PARENT_FIELD_ID"];
                document.getElementById("CURRENT_STATUS_DATE").value = result["CURRENT_STATUS_DATE"];


                document.getElementById("DRILLER_PBTD").value = result["DRILLER_PBTD"];
                document.getElementById("DRILLER_TD_MD").value = result["DRILLER_TD_MD"];
                document.getElementById("DRILLER_TD_TVD").value = result["DRILLER_TD_TVD"];
                document.getElementById("FINAL_DRILL_DATE").value = result["FINAL_DRILL_DATE"];
                document.getElementById("FINAL_RIG_RELEASE_DATE").value = result["FINAL_RIG_RELEASE_DATE"];
                document.getElementById("FORMATION_AT_TD").value = result["FORMATION_AT_TD"];
                document.getElementById("HOLE_CONDITION").value = result["HOLE_CONDITION"];
                document.getElementById("INITIAL_COMPLETION_DATE").value = result["INITIAL_COMPLETION_DATE"];
                document.getElementById("INITIAL_LAHEE_CLASS").value = result["INITIAL_LAHEE_CLASS"];
                document.getElementById("INJECTION_DATE").value = result["INJECTION_DATE"];
                document.getElementById("KICKOFF_METHOD").value = result["KICKOFF_METHOD"];
                document.getElementById("LAHEE_CLASS").value = result["LAHEE_CLASS"];
                document.getElementById("LEGAL_SURVEY_ID").value = result["LEGAL_SURVEY_ID"];
                document.getElementById("LOGGER_PBTD").value = result["LOGGER_PBTD"];
                document.getElementById("LOGGER_TD_MD").value = result["LOGGER_TD_MD"];
                document.getElementById("LOGGER_TD_TVD").value = result["LOGGER_TD_TVD"];
                document.getElementById("NOMINAL_PROD_MATERIAL").value = result["NOMINAL_PROD_MATERIAL"];
                document.getElementById("PLAN_HOLE_COST").value = result["PLAN_HOLE_COST"];
                document.getElementById("PREFERRED_SURVEY_ID").value = result["PREFERRED_SURVEY_ID"];
                document.getElementById("PRODUCTION_DATE").value = result["PRODUCTION_DATE"];
                document.getElementById("SPUD_DATE").value = result["SPUD_DATE"];
                document.getElementById("TIE_IN_BOREHOLE_ID").value = result["TIE_IN_BOREHOLE_ID"];
                document.getElementById("TOTAL_DEPTH_DATE").value = result["TOTAL_DEPTH_DATE"];
                document.getElementById("UBHI").value = result["UBHI"];
                document.getElementById("WELL_ID").value = result["WELL_ID"];
                document.getElementById("WHIPSTOCK_DEPTH").value = result["WHIPSTOCK_DEPTH"];
                document.getElementById("WORKING_COORD_SYSTEM_ID").value = result["WORKING_COORD_SYSTEM_ID"];
                document.getElementById("HERM_TEST_DATE").value = result["HERM_TEST_DATE"];
                document.getElementById("TARGET_DEPTH").value = result["TARGET_DEPTH"];

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
                document.getElementById("ACTUAL_HOLE_COST").value = result["ACTUAL_HOLE_COST"];
                document.getElementById("BOREHOLE_NUMBER").value = result["BOREHOLE_NUMBER"];
                document.getElementById("BOREHOLE_REASON").value = result["BOREHOLE_REASON"];
                document.getElementById("BOREHOLE_SHAPE").value = result["BOREHOLE_SHAPE"];
                document.getElementById("BOREHOLE_TYPE").value = result["BOREHOLE_TYPE"];
                document.getElementById("BOTTOM_LOCATION_ID").value = result["BOTTOM_LOCATION_ID"];
                document.getElementById("COST_CURRENCY").value = result["COST_CURRENCY"];
                document.getElementById("CURRENT_STATUS").value = result["CURRENT_STATUS"];
                document.getElementById("CURRENT_STATUS_DATE").value = result["CURRENT_STATUS_DATE"];



                document.getElementById("DRILLER_PBTD").value = result["DRILLER_PBTD"];
                document.getElementById("DRILLER_TD_MD").value = result["DRILLER_TD_MD"];
                document.getElementById("DRILLER_TD_TVD").value = result["DRILLER_TD_TVD"];
                document.getElementById("FINAL_DRILL_DATE").value = result["FINAL_DRILL_DATE"];
                document.getElementById("FINAL_RIG_RELEASE_DATE").value = result["FINAL_RIG_RELEASE_DATE"];
                document.getElementById("FORMATION_AT_TD").value = result["FORMATION_AT_TD"];
                document.getElementById("HOLE_CONDITION").value = result["HOLE_CONDITION"];
                document.getElementById("INITIAL_COMPLETION_DATE").value = result["INITIAL_COMPLETION_DATE"];
                document.getElementById("INITIAL_LAHEE_CLASS").value = result["INITIAL_LAHEE_CLASS"];
                document.getElementById("INJECTION_DATE").value = result["INJECTION_DATE"];
                document.getElementById("KICKOFF_METHOD").value = result["KICKOFF_METHOD"];
                document.getElementById("LAHEE_CLASS").value = result["LAHEE_CLASS"];
                document.getElementById("LEGAL_SURVEY_ID").value = result["LEGAL_SURVEY_ID"];
                document.getElementById("LOGGER_PBTD").value = result["LOGGER_PBTD"];
                document.getElementById("LOGGER_TD_MD").value = result["LOGGER_TD_MD"];
                document.getElementById("LOGGER_TD_TVD").value = result["LOGGER_TD_TVD"];
                document.getElementById("NOMINAL_PROD_MATERIAL").value = result["NOMINAL_PROD_MATERIAL"];
                document.getElementById("PLAN_HOLE_COST").value = result["PLAN_HOLE_COST"];
                document.getElementById("PREFERRED_SURVEY_ID").value = result["PREFERRED_SURVEY_ID"];
                document.getElementById("PRODUCTION_DATE").value = result["PRODUCTION_DATE"];
                document.getElementById("SPUD_DATE").value = result["SPUD_DATE"];
                document.getElementById("TIE_IN_BOREHOLE_ID").value = result["TIE_IN_BOREHOLE_ID"];
                document.getElementById("TOTAL_DEPTH_DATE").value = result["TOTAL_DEPTH_DATE"];
                document.getElementById("UBHI").value = result["UBHI"];
                document.getElementById("WELL_ID").value = result["WELL_ID"];
                document.getElementById("WHIPSTOCK_DEPTH").value = result["WHIPSTOCK_DEPTH"];
                document.getElementById("WORKING_COORD_SYSTEM_ID").value = result["WORKING_COORD_SYSTEM_ID"];
                document.getElementById("HERM_TEST_DATE").value = result["HERM_TEST_DATE"];
                document.getElementById("TARGET_DEPTH").value = result["TARGET_DEPTH"];

                
            }
        }
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
        <h1>BOREHOLE</h1>
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

       <h3 style="background-color:greenyellow">To get to know information about BOREHOLE press [GET VALUES]</h3>
        
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
                <td><b>ACTUAL_HOLE_COST</b></td>
                <td>
                    <asp:TextBox ID="ACTUAL_HOLE_COST" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>BOREHOLE_NUMBER</b></td>
                <td>
                    <asp:TextBox ID="BOREHOLE_NUMBER" runat="server"></asp:TextBox>
                </td>
                <td><b>BOREHOLE_REASON</b></td>
                <td>
                    <asp:TextBox ID="BOREHOLE_REASON" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>BOREHOLE_SHAPE</b></td>
                <td>
                    <asp:TextBox ID="BOREHOLE_SHAPE" runat="server"></asp:TextBox>
                </td>
                <td><b>BOREHOLE_TYPE</b></td>
                <td>
                    <asp:TextBox ID="BOREHOLE_TYPE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>BOTTOM_LOCATION_ID</b></td>
                <td>
                    <asp:TextBox ID="BOTTOM_LOCATION_ID" runat="server"></asp:TextBox>
                </td>
                <td><b>COST_CURRENCY</b></td>
                <td>
                    <asp:TextBox ID="COST_CURRENCY" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>CURRENT_STATUS</b></td>
                <td>
                    <asp:TextBox ID="CURRENT_STATUS" runat="server"></asp:TextBox>
                </td>
                <td><b>CURRENT_STATUS_DATE</b></td>
                <td>
                    <asp:TextBox ID="CURRENT_STATUS_DATE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>DRILLER_PBTD</b></td>
                <td>
                    <asp:TextBox ID="DRILLER_PBTD" runat="server"></asp:TextBox>
                </td>
                <td><b>DRILLER_TD_MD</b></td>
                <td>
                    <asp:TextBox ID="DRILLER_TD_MD" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>DRILLER_TD_TVD</b></td>
                <td>
                    <asp:TextBox ID="DRILLER_TD_TVD" runat="server"></asp:TextBox>
                </td>
                <td><b>FINAL_DRILL_DATE</b></td>
                <td>
                    <asp:TextBox ID="FINAL_DRILL_DATE" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>FINAL_RIG_RELEASE_DATE</b></td>
                <td>
                    <asp:TextBox ID="FINAL_RIG_RELEASE_DATE" runat="server"></asp:TextBox>
                </td>
                <td><b>FORMATION_AT_TD</b></td>
                <td>
                    <asp:TextBox ID="FORMATION_AT_TD" runat="server"></asp:TextBox>
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
                            <option value="FIELD">FIELD</option>
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
