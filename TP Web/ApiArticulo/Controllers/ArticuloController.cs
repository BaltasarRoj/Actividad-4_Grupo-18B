using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Dominio;
using Negocio;
using ApiArticulo.Models;

namespace ApiArticulo.Controllers
{
    public class ArticuloController : ApiController
    {
        // GET: api/Articulo/ LISTA TODOS
        public IEnumerable<Articulo> Get()
        {
            ArticuloNegocio negocio = new ArticuloNegocio();    
            return negocio.listar();
        }

        // GET: api/Articulo/5/ TRAE UNO POR ID
        public Articulo Get(int id)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            List<Articulo> lista = negocio.listar();
            return lista.Find(x => x.id == id);
        }

        // POST: api/Articulo/CREA UNO
        public void Post([FromBody]ArticuloDTO articulo)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            Articulo nuevo = new Articulo();
            nuevo.codigoArticulo = articulo.codigoArticulo;
            nuevo.nombre = articulo.nombre;
            nuevo.Marca = new Marca {Id = articulo.IdMarca};
            nuevo.tipo = new Categoria { Id = articulo.IdCategoria};
            nuevo.descripcion = articulo.descripcion;
            nuevo.UrlImagen = articulo.UrlImagen;

            negocio.agregarArticulo(nuevo);
        }

        // PUT: api/Articulo/5/ACTUALIZA UNO POR ID
        public void Put(int id, [FromBody] ArticuloDTO articulo)
        {
           
                ArticuloNegocio negocio = new ArticuloNegocio();
                Articulo nuevo = new Articulo();
                nuevo.codigoArticulo = articulo.codigoArticulo;
                nuevo.nombre = articulo.nombre;
                nuevo.Marca = new Marca { Id = articulo.IdMarca };
                nuevo.tipo = new Categoria { Id = articulo.IdCategoria };
                nuevo.descripcion = articulo.descripcion;
                nuevo.UrlImagen = articulo.UrlImagen;
                nuevo.id = id;
                
                negocio.modificar(nuevo, "", "");

        }

        // DELETE: api/Articulo/5/ELIMINA UNO POR ID
        public void Delete(int id)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            negocio.EliminarArticulo(id);
        }
    }
}
