namespace AsistenciaAPI.Models
{
    public class Asociado
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string NumeroCedula { get; set; }
        public string Estatus1 { get; set; }  // Ejemplo: "Activo"
        public string Estado2 { get; set; }   // Ejemplo: "Confirmado"
        public string Correo { get; set; }
        public string Telefono { get; set; }

    }
}
