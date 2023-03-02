using Dapper;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Logging;
using Microsoft.IdentityModel.Tokens;
using MySql.Data.MySqlClient;
using System.Data;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using workoutapicore.Model;

namespace workoutapicore.Controllers
{
    [ApiController]
    [Route("work")]
    [EnableCors]
    [Authorize]
    public class ExerciseController : Controller
    {
        private IConfiguration _config;
        public ExerciseController(IConfiguration config)
        {
            _config = config;
        }

        [HttpGet("getUsers")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [EnableCors]
        public async Task<List<object>> getUsers()
        {
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                var output = connection.Query("SELECT * FROM `User` LIMIT 1").ToList();
                return output;
            }
        }

        [HttpPost("exerciseSet")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [EnableCors]
        public async Task<List<object>> exerciseSet(WorkoutSetClass workout)
        {
            string Id = User.FindFirstValue("Id");
            string AuthId = User.FindFirstValue("AuthId");
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                var output = connection.Query(@$"insert into db.ExerciseSet (AuthUserId, WorkoutId, ExerciseId, Weight,
                    Reps, MetricType) values ({Id}, {1},
                    {workout.ExerciseId}, {workout.Weight}, {workout.Reps}, {workout.MetricType})").ToList();
                return output;
            }
        }

        [HttpGet("getExercises")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [EnableCors]
        public async Task<List<object>> getExercises()
        {
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                var output = connection.Query(@$"Select Id as `key`, Name as value FROM db.ExerciseType").ToList();
                return output;
            }
        }

        [HttpGet("getUserExerciseSetByWorkout")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [EnableCors]
        public async Task<List<object>> getUserExerciseSets(int? ExerciseId, int? Reps, decimal? Weight, int? MetricType, string? CreateTime)
        {
            string Id = User.FindFirstValue("Id");
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                string WhereClause = "";
                if (ExerciseId != null){
                    WhereClause += @$" AND ExerciseId = {ExerciseId} ";
                }
                if (Reps != null){
                    WhereClause += @$" AND Reps = {Reps} ";
                }
                if (Weight != null){
                    WhereClause += @$" AND Weight = {Weight} ";
                }
                if (MetricType != null){
                    WhereClause += @$" AND MetricType = {MetricType} ";
                }
                if (CreateTime != null){
                    WhereClause += @$" AND DATE_FORMAT(CreateTime,  '%Y-%m-%d') = {CreateTime.Replace("'", "")} ";
                }
                var output = connection.Query(@$"Select et.Name, es.Reps, es.Weight, es.MetricType, es.CreateTime, 
                DATE_FORMAT(es.CreateTime,  '%Y%m%d') as Date, DATE_FORMAT(es.CreateTime,  '%Y')
                as Year FROM db.ExerciseSet es
                LEFT JOIN db.ExerciseType et on et.Id = es.ExerciseId
                where AuthUserId = {Id} " + WhereClause).ToList();
                return output;
            }
        }

        // [HttpGet("getExerciseSetByExercise")]
        // [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        // [EnableCors]
        // public async Task<List<object>> getExerciseSetByExercise(int ExerciseId)
        // {
        //     using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
        //     {
        //         var output = connection.Query(@$"Select * FROM db.ExerciseSet where ExerciseId = {ExerciseId}").ToList();
        //         return output;
        //     }
        // }

    }
}
