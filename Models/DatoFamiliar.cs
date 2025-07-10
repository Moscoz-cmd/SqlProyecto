namespace SqlProyecto.Models;

public class DatoFamiliar
{
public int Id{ get; private set; }
public int IdUsuario{ get; private set; }
public int TipoInteres{ get; private set; }
//Hobby Serie Amigo Gusto
public string Interes { get; private set; }


public DatoFamiliar(int id, int IdUsuario, int TipoInteres)
{
 this.Id= id;
 this.IdUsuario=IdUsuario;
 this.TipoInteres= TipoInteres;

}
public DatoFamiliar()
{

}

}
