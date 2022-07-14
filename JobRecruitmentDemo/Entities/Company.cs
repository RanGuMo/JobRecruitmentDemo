using System;
using System.Collections.Generic;

namespace JobRecruitmentDemo.Entities
{
    public partial class Company
    {
        public Company()
        {
            Jobs = new HashSet<Job>();
        }

        public int Id { get; set; }
        public string? CompanyName { get; set; }
        public string? CompanyNature { get; set; }
        public string? CompanySize { get; set; }
        public string? IndustryType { get; set; }
        public string? CompanyAddress { get; set; }
        public string? CompanyIntroduce { get; set; }

        public virtual ICollection<Job> Jobs { get; set; }
    }
}
