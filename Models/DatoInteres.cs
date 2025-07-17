using Dapper;
namespace SqlProyecto.Models;

public class DatoInteres
{
public int Id{ get; private set; }
public int IdUsuario{ get; private set; }
public int TipoInteres{ get; private set; }
//Hobby Serie Amigo Gusto
public string Interes { get; private set; }


public DatoInteres(int id, int IdUsuario, int TipoInteres, string Interes)
{
 this.Id= id;
 this.IdUsuario=IdUsuario;
 this.TipoInteres= TipoInteres;
this.Interes = Interes;
}


}
