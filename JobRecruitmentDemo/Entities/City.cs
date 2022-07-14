using System;
using System.Collections.Generic;

namespace JobRecruitmentDemo.Entities
{
    public partial class City
    {
        public City()
        {
            Jobs = new HashSet<Job>();
        }

        public int Id { get; set; }
        public string? CityName { get; set; }
        public int? AdministrativeLevel { get; set; }

        public virtual ICollection<Job> Jobs { get; set; }
    }
}
