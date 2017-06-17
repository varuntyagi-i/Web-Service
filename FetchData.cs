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

        public static implicit operator FetchData(bool v)
        {
            throw new NotImplementedException();
        }
    }
}