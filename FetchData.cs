using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebServiceONGC
{
    public class FetchData
    {
        public string INSERT_DATE { get; set; }
        public string INSERT_USER { get; set; }
        public string PRODUCED_BY { get; set; }
        public string SDAT_LABEL { get; set; }
        public string UPDATE_DATE { get; set; }
        public string UPDATE_USER { get; set; }
        public string EXISTENCE_KIND { get; set; }
        public string GUID { get; set; }
        public string ID { get; set; }
        public string VERSION { get; set; }
        public string NAME { get; set; }
        public string ORIGINAL_SOURCE { get; set; }
        public string REMARKS { get; set; }
        public string SOURCE { get; set; }
        public string BASIN_ID { get; set; }
        public string BOUNDARY_AREA_ID { get; set; }
        public string DISCOVERY_DATE { get; set; }
        public string DISCOVERY_TYPE { get; set; }
        public string DISCOVERY_WELL_ID { get; set; }
        public string FIELD_TYPE { get; set; }
        public string LOCATION_ID { get; set; }
        public string PARENT_FIELD_ID { get; set; }
        public string PROJECT { get; set; }


        public string ACTUAL_HOLE_COST { get; set; }
        public string BOREHOLE_NUMBER { get; set; }
        public string BOREHOLE_REASON { get; set; }
        public string BOREHOLE_SHAPE { get; set; }
        public string BOREHOLE_TYPE { get; set; }
        public string BOTTOM_LOCATION_ID { get; set; }
        public string COST_CURRENCY { get; set; }
        public string CURRENT_STATUS { get; set; }
        public string CURRENT_STATUS_DATE { get; set; }
        public string DRILLER_PBTD { get; set; }
        public string DRILLER_TD_MD { get; set; }
        public string DRILLER_TD_TVD { get; set; }
        public string FINAL_DRILL_DATE { get; set; }
        public string FINAL_RIG_RELEASE_DATE { get; set; }
        public string FORMATION_AT_TD { get; set; }
        public string HOLE_CONDITION { get; set; }
        public string INITIAL_COMPLETION_DATE { get; set; }
        public string INITIAL_LAHEE_CLASS { get; set; }
        public string INJECTION_DATE { get; set; }
        public string KICKOFF_METHOD { get; set; }
        public string LAHEE_CLASS { get; set; }
        public string LEGAL_SURVEY_ID { get; set; }
        public string LOGGER_PBTD { get; set; }
        public string LOGGER_TD_MD { get; set; }
        public string LOGGER_TD_TVD { get; set; }
        public string NOMINAL_PROD_MATERIAL { get; set; }
        public string PLAN_HOLE_COST { get; set; }
        public string PREFERRED_SURVEY_ID { get; set; }
        public string PRODUCTION_DATE { get; set; }
        public string SPUD_DATE { get; set; }
        public string TIE_IN_BOREHOLE_ID { get; set; }
        public string TOTAL_DEPTH_DATE { get; set; }
        public string UBHI { get; set; }
        public string WELL_ID { get; set; }
        public string WHIPSTOCK_DEPTH { get; set; }
        public string WORKING_COORD_SYSTEM_ID { get; set; }
        public string HERM_TEST_DATE { get; set; }
        public string TARGET_DEPTH { get; set; }


        public static implicit operator FetchData(bool v)
        {
            throw new NotImplementedException();
        }
    }
}