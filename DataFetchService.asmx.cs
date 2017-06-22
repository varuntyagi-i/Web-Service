using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebServiceONGC
{
    /// <summary>
    /// Summary description for DataFetchService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class DataFetchService : System.Web.Services.WebService
    {
        
   /*     [WebMethod]
        public FetchData GetDataById(string ID)
        {
           string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetDataByID1", con);
                string TABLE_NAME = "FIELD";
     */           
        [WebMethod]
        public FetchData GetDataById(string ID,string TABLE_NAME)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                string str;
                if (TABLE_NAME == "FIELD")
                    str = "spGetDataByID1";
                else if (TABLE_NAME == "BOREHOLE")
                    str = "spGetDataByID2";
                else
                {
                    str = "";
                }

                SqlCommand cmd = new SqlCommand(str, con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@ID", ID);
                cmd.Parameters.Add(parameter);
                FetchData fetchdata = new FetchData();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (TABLE_NAME == "FIELD")
                {
                    while (reader.Read())
                    {
                        fetchdata.INSERT_DATE = reader["INSERT_DATE"].ToString();
                        fetchdata.INSERT_USER = reader["INSERT_USER"].ToString();
                        fetchdata.PRODUCED_BY = reader["PRODUCED_BY"].ToString();
                        fetchdata.SDAT_LABEL = reader["SDAT_LABEL"].ToString();
                        fetchdata.UPDATE_DATE = reader["UPDATE_DATE"].ToString();
                        fetchdata.UPDATE_USER = reader["UPDATE_USER"].ToString();
                        fetchdata.EXISTENCE_KIND = reader["EXISTENCE_KIND"].ToString();
                        fetchdata.GUID = reader["GUID"].ToString();
                        fetchdata.ID = reader["ID"].ToString();
                        fetchdata.VERSION = reader["VERSION"].ToString();
                        fetchdata.NAME = reader["NAME"].ToString();
                        fetchdata.ORIGINAL_SOURCE = reader["ORIGINAL_SOURCE"].ToString();
                        fetchdata.REMARKS = reader["REMARKS"].ToString();
                        fetchdata.SOURCE = reader["SOURCE"].ToString();
                        fetchdata.BASIN_ID = reader["BASIN_ID"].ToString();
                        fetchdata.BOUNDARY_AREA_ID = reader["BOUNDARY_AREA_ID"].ToString();
                        fetchdata.DISCOVERY_DATE = reader["DISCOVERY_DATE"].ToString();
                        fetchdata.DISCOVERY_TYPE = reader["DISCOVERY_TYPE"].ToString();
                        fetchdata.DISCOVERY_WELL_ID = reader["DISCOVERY_WELL_ID"].ToString();
                        fetchdata.FIELD_TYPE = reader["FIELD_TYPE"].ToString();
                        fetchdata.LOCATION_ID = reader["LOCATION_ID"].ToString();
                        fetchdata.PARENT_FIELD_ID = reader["PARENT_FIELD_ID"].ToString();
                        fetchdata.PROJECT = reader["PROJECT"].ToString();
                    }
                }

                else if(TABLE_NAME == "BOREHOLE")
                {
                    while (reader.Read())
                    {
                        fetchdata.INSERT_DATE = reader["INSERT_DATE"].ToString();
                        fetchdata.INSERT_USER = reader["INSERT_USER"].ToString();
                        fetchdata.PRODUCED_BY = reader["PRODUCED_BY"].ToString();
                        fetchdata.SDAT_LABEL = reader["SDAT_LABEL"].ToString();
                        fetchdata.UPDATE_DATE = reader["UPDATE_DATE"].ToString();
                        fetchdata.UPDATE_USER = reader["UPDATE_USER"].ToString();
                        fetchdata.EXISTENCE_KIND = reader["EXISTENCE_KIND"].ToString();
                        fetchdata.GUID = reader["GUID"].ToString();
                        fetchdata.ID = reader["ID"].ToString();
                        fetchdata.VERSION = reader["VERSION"].ToString();
                        fetchdata.NAME = reader["NAME"].ToString();
                        fetchdata.ORIGINAL_SOURCE = reader["ORIGINAL_SOURCE"].ToString();
                        fetchdata.REMARKS = reader["REMARKS"].ToString();
                        fetchdata.SOURCE = reader["SOURCE"].ToString();
                        fetchdata.ACTUAL_HOLE_COST = reader["ACTUAL_HOLE_COST"].ToString();
                        fetchdata.BOREHOLE_NUMBER = reader["BOREHOLE_NUMBER"].ToString();
                        fetchdata.BOREHOLE_REASON = reader["BOREHOLE_REASON"].ToString();
                        fetchdata.BOREHOLE_SHAPE = reader["BOREHOLE_SHAPE"].ToString();
                        fetchdata.BOREHOLE_TYPE = reader["BOREHOLE_TYPE"].ToString();
                        fetchdata.BOTTOM_LOCATION_ID = reader["BOTTOM_LOCATION_ID"].ToString();
                        fetchdata.COST_CURRENCY = reader["COST_CURRENCY"].ToString();
                        fetchdata.CURRENT_STATUS = reader["CURRENT_STATUS"].ToString();
                        fetchdata.CURRENT_STATUS_DATE = reader["CURRENT_STATUS_DATE"].ToString();
                        fetchdata.DRILLER_PBTD = reader["DRILLER_PBTD"].ToString();
                        fetchdata.DRILLER_TD_MD = reader["DRILLER_TD_MD"].ToString();
                        fetchdata.DRILLER_TD_TVD = reader["DRILLER_TD_TVD"].ToString();
                        fetchdata.FINAL_DRILL_DATE = reader["FINAL_DRILL_DATE"].ToString();
                        fetchdata.FINAL_RIG_RELEASE_DATE = reader["FINAL_RIG_RELEASE_DATE"].ToString();
                        fetchdata.FORMATION_AT_TD = reader["FORMATION_AT_TD"].ToString();
                        fetchdata.HOLE_CONDITION = reader["HOLE_CONDITION"].ToString();
                        fetchdata.INITIAL_COMPLETION_DATE = reader["INITIAL_COMPLETION_DATE"].ToString();
                        fetchdata.INITIAL_LAHEE_CLASS = reader["INITIAL_LAHEE_CLASS"].ToString();
                        fetchdata.INJECTION_DATE = reader["INJECTION_DATE"].ToString();
                        fetchdata.KICKOFF_METHOD = reader["KICKOFF_METHOD"].ToString();
                        fetchdata.LAHEE_CLASS = reader["LAHEE_CLASS"].ToString();
                        fetchdata.LEGAL_SURVEY_ID = reader["LEGAL_SURVEY_ID"].ToString();
                        fetchdata.LOGGER_PBTD = reader["LOGGER_PBTD"].ToString();
                        fetchdata.LOGGER_TD_MD = reader["LOGGER_TD_MD"].ToString();
                        fetchdata.LOGGER_TD_TVD = reader["LOGGER_TD_TVD"].ToString();
                        fetchdata.NOMINAL_PROD_MATERIAL = reader["NOMINAL_PROD_MATERIAL"].ToString();
                        fetchdata.PLAN_HOLE_COST = reader["PLAN_HOLE_COST"].ToString();
                        fetchdata.PREFERRED_SURVEY_ID = reader["PREFERRED_SURVEY_ID"].ToString();
                        fetchdata.PRODUCTION_DATE = reader["PRODUCTION_DATE"].ToString();
                        fetchdata.SPUD_DATE = reader["SPUD_DATE"].ToString();
                        fetchdata.TIE_IN_BOREHOLE_ID = reader["TIE_IN_BOREHOLE_ID"].ToString();
                        fetchdata.TOTAL_DEPTH_DATE = reader["TOTAL_DEPTH_DATE"].ToString();
                        fetchdata.UBHI = reader["UBHI"].ToString();
                        fetchdata.WELL_ID = reader["WELL_ID"].ToString();
                        fetchdata.WHIPSTOCK_DEPTH = reader["WHIPSTOCK_DEPTH"].ToString();
                        fetchdata.WORKING_COORD_SYSTEM_ID = reader["WORKING_COORD_SYSTEM_ID"].ToString();
                        fetchdata.HERM_TEST_DATE = reader["HERM_TEST_DATE"].ToString();
                        fetchdata.TARGET_DEPTH = reader["TARGET_DEPTH"].ToString();


                    }
                }

                con.Close();
                return fetchdata;
                
             }   
        }
    }
}
