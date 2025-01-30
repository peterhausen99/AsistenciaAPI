using Microsoft.EntityFrameworkCore;
using AsistenciaAPI.Models;
namespace AsistenciaAPI.Data
{
    public class AsistenciaContext:DbContext
    {
        public AsistenciaContext(DbContextOptions<AsistenciaContext> options) : base(options)
        {
        }

        // Representa la tabla de Asociados en la base de datos
        public DbSet<Asociado> Asociados { get; set; }
    }
}
