using Microsoft.EntityFrameworkCore;
using BloodDonorAPI.Models;

namespace BloodDonorAPI.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Donor> Donors { get; set; }
    }
}
