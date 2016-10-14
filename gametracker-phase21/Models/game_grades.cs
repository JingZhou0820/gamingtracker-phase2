namespace gametracker_phase21.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class game_grades
    {
        [Key]
        public int Sports_ID { get; set; }

        [Required]
        [StringLength(50)]
        public string Team_Name { get; set; }

        [Required]
        [StringLength(50)]
        public string Sports_category { get; set; }

        public int Week { get; set; }

        public int Point { get; set; }
    }
}
