namespace SqlProyecto;
public class DatoInteres{
public int Id{ get; private set; }
public int IdUsuario { get; private set; }
public string Nombre { get; private set; }
public string Apellido{ get; private set; }
public string Parentesco{ get; private set; }
public string Descripción{ get; private set; }

public DatoInteres(int Id, int IdUsuario, string Nombre, string Apellido, string Parentesco, string Descripcion)
{
 this.Id= Id;
 this.IdUsuario=IdUsuario;
 this.Nombre=Nombre;
 this.Apellido=Apellido;
 this.Parentesco=Parentesco;
 this.Descripción=Descripcion;

}

}