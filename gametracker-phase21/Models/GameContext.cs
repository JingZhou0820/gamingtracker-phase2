namespace gametracker_phase21.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class GameContext : DbContext
    {
        public GameContext()
            : base("name=GameConnection")
        {
        }

        public virtual DbSet<game_grades> game_grades { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
