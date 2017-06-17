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

        [WebMethod]
        public FetchData GetDataById(string ID)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetDataByID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@ID", ID);
                cmd.Parameters.Add(parameter);
                FetchData fetchdata = new FetchData();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
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
                con.Close();
                return fetchdata;
            }
        }
    }
}
