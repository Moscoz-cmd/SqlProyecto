using Microsoft.Data.SqlClient;
using Dapper;
namespace SqlProyecto.Models;

public static class BD
{
private static string stringConexion = @"Server=localhost; Database=SqlProyecto; Intregrated Security=True; TrustServerCertificate=True;";




public static int Login(string email, string contraseña)
{
    int id;
    using(SqlConnection connection = new SqlConnection(stringConexion))
    {
    
    string query= "Select Id from Usuarios where contraseña = @pcontraseña";

     id = connection.QueryFirstOrDefault<int>(query);
    }
    if(id!=null){
    return id;

    }else{return -1;}
        
    
}
public static Usuario GetUsuario(int id)
{
    Usuario usuario = new Usuario();
    using (SqlConnection connection = new SqlConnection(stringConexion))
    {
        string query = "SELECT * FROM Usuarios WHERE Id = @p id";

        usuario = connection.QueryFirstOrDefault<Usuario>(query, new { id });

        
    }
    return usuario; 
}
public static List<DatoFamiliar> GetDatoFamiliar(int id)
{  List<DatoFamiliar> familiares= new List<DatoFamiliar>();
    using (SqlConnection connection = new SqlConnection(stringConexion))
    {
        string query = "SELECT * FROM DatoFamiliar WHERE IdUsuario = @id";

        familiares = connection.Query<DatoFamiliar>(query, new { id }).ToList();

        
    }
    return familiares;
}
public static List<DatoInteres> GetDatoInteres(int id)
{
    List<DatoInteres> intereses = new List<DatoInteres>();
    using (SqlConnection connection = new SqlConnection(stringConexion))
    {
        string query = "SELECT * FROM DatoInteres WHERE IdUsuario = @pId";
        intereses = connection.Query<DatoInteres>(query, new { pId = id }).ToList();

        
    }
    return intereses;
}




}