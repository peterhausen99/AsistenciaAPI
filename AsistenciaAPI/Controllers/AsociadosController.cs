using AsistenciaAPI.Data;
using AsistenciaAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AsistenciaAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AsociadosController : ControllerBase
    {
        private readonly AsistenciaContext _context;

        public AsociadosController(AsistenciaContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult ObtenerAsociados()
        {
            var asociados = _context.Asociados.ToList();
            return Ok(asociados);
        }

        [HttpGet("{id}")]
        public IActionResult ObtenerAsociadoPorId(int id)
        {
            var asociado = _context.Asociados.Find(id);
            if (asociado == null)
            {
                return NotFound(new { mensaje = "Asociado no encontrado" });
            }
            return Ok(asociado);
        }

        [HttpPost]
        public IActionResult AgregarAsociado([FromBody] Asociado nuevoAsociado)
        {
            if (nuevoAsociado == null)
            {
                return BadRequest(new { mensaje = "Datos inválidos" });
            }

            _context.Asociados.Add(nuevoAsociado);
            _context.SaveChanges();
            return CreatedAtAction(nameof(ObtenerAsociadoPorId), new { id = nuevoAsociado.Id }, nuevoAsociado);
        }

        [HttpPut("{id}")]
        public IActionResult ActualizarAsociado(int id, [FromBody] Asociado datosActualizados)
        {
            var asociado = _context.Asociados.Find(id);
            if (asociado == null)
            {
                return NotFound(new { mensaje = "Asociado no encontrado" });
            }

            asociado.Nombre = datosActualizados.Nombre;
            asociado.NumeroCedula = datosActualizados.NumeroCedula;
            asociado.Estatus1 = datosActualizados.Estatus1;
            asociado.Estado2 = datosActualizados.Estado2;
            asociado.Correo = datosActualizados.Correo;
            asociado.Telefono = datosActualizados.Telefono;

            _context.SaveChanges();
            return Ok(asociado);
        }

        [HttpDelete("{id}")]
        public IActionResult EliminarAsociado(string id)
        {
            var asociado = _context.Asociados.Find(id);
            if (asociado == null)
            {
                return NotFound(new { mensaje = "Asociado no encontrado" });
            }

            _context.Asociados.Remove(asociado);
            _context.SaveChanges();
            return Ok(new { mensaje = "Asociado eliminado correctamente" });
        }
    }
}