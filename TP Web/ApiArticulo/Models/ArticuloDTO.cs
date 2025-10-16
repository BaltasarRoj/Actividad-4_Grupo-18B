using Dominio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace ApiArticulo.Models
{
    public class ArticuloDTO
    {       
        public string codigoArticulo { get; set; }
        public string nombre { get; set; }
        public int IdMarca { get; set; }
        public int IdCategoria { get; set; }
        public string descripcion { get; set; }
        public string UrlImagen { get; set; }
    }
    
}
