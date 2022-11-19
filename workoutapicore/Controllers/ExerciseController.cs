using Dapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using System.Data;

namespace workoutapicore.Controllers
{
    [ApiController]
    [Route("api")]
    [Authorize]
    public class ExerciseController : Controller
    {
        private IConfiguration _config;
        public ExerciseController(IConfiguration config)
        {
            _config = config;
        }

        [HttpGet("getUsers")]
        [Authorize]
        [EnableCors]
        public async Task<List<object>> getUsers()
        {
            using (IDbConnection connection = new MySqlConnection(Environment.GetEnvironmentVariable("Connection")))
            {
                var output = connection.Query("SELECT * FROM `User` LIMIT 1").ToList();
                return output;
            }
        }

    }
}
