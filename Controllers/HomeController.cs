using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using SqlProyecto.Models;

namespace SqlProyecto.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

  public IActionResult Index()
    {
        
        return View();
    }
    public IActionResult Integrantes(int id)
    {
        
        return View("DatosPersonales");
    }
    public IActionResult MostrarDatosFamiliares(int dni)
    {
        
        return View("infoDatosFamiliares");
    }
    public IActionResult MostrarDatosIntereses(int dni)
    {
        
        return View("infoDatosInteres");
    }


}
