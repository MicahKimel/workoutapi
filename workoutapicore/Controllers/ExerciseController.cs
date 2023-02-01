using Dapper;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using System.Data;
using workoutapicore.Model;

namespace workoutapicore.Controllers
{
    [ApiController]
    [Route("work")]
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
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                var output = connection.Query(@$"insert into db.ExerciseSet (Id, AuthUserId, WorkoutId, ExerciseId, Weight, Sets, Reps,
                    StartTime, EndTime, MetricType) values ({workout.Id}, {workout.AuthUserId}, {workout.Id}, {workout.ExerciseId}, {workout.Weight},
                    {workout.Sets}, {workout.Reps}, {workout.StartTime}, {workout.EndTime}, {workout.MetricType})").ToList();
                return output;
            }
        }

        [HttpGet("getExerciseSetByWorkout")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [EnableCors]
        public async Task<List<object>> getExerciseSetByWorkout(int workoutId)
        {
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                var output = connection.Query(@$"Select * FROM db.ExerciseSet where WorkoutId = {workoutId}").ToList();
                return output;
            }
        }

        [HttpGet("getExerciseSetByExercise")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [EnableCors]
        public async Task<List<object>> getExerciseSetByExercise(int ExerciseId)
        {
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                var output = connection.Query(@$"Select * FROM db.ExerciseSet where ExerciseId = {ExerciseId}").ToList();
                return output;
            }
        }

    }
}
