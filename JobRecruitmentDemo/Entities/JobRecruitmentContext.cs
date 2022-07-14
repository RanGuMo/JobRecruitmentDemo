using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace JobRecruitmentDemo.Entities
{
    public partial class JobRecruitmentContext : DbContext
    {
        public JobRecruitmentContext()
        {
        }

        public JobRecruitmentContext(DbContextOptions<JobRecruitmentContext> options)
            : base(options)
        {
        }

        public virtual DbSet<City> Cities { get; set; } = null!;
        public virtual DbSet<Company> Companys { get; set; } = null!;
        public virtual DbSet<Job> Jobs { get; set; } = null!;
        public virtual DbSet<Requirement> Requirements { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=127.0.0.1;database=JobRecruitment;uid=sa;pwd=123456");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<City>(entity =>
            {
                entity.Property(e => e.CityName).HasMaxLength(50);
            });

            modelBuilder.Entity<Company>(entity =>
            {
                entity.Property(e => e.CompanyAddress).HasMaxLength(100);

                entity.Property(e => e.CompanyIntroduce).HasMaxLength(500);

                entity.Property(e => e.CompanyName).HasMaxLength(50);

                entity.Property(e => e.CompanyNature).HasMaxLength(50);

                entity.Property(e => e.CompanySize).HasMaxLength(50);

                entity.Property(e => e.IndustryType).HasMaxLength(50);
            });

            modelBuilder.Entity<Job>(entity =>
            {
                entity.Property(e => e.Education).HasMaxLength(50);

                entity.Property(e => e.JobName).HasMaxLength(50);

                entity.Property(e => e.JobPay).HasMaxLength(50);

                entity.Property(e => e.PublishTime).HasColumnType("datetime");

                entity.Property(e => e.Welfare).HasMaxLength(500);

                entity.Property(e => e.WorkArea)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.WorkExperience).HasMaxLength(50);

                entity.HasOne(d => d.City)
                    .WithMany(p => p.Jobs)
                    .HasForeignKey(d => d.CityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Jobs_Cities");

                entity.HasOne(d => d.Company)
                    .WithMany(p => p.Jobs)
                    .HasForeignKey(d => d.CompanyId)
                    .HasConstraintName("FK_Jobs_Companys");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
