using Microsoft.AspNetCore.Mvc;
using System.Data;
using Dapper;
using MySql.Data.MySqlClient;
using System.Text;
using Microsoft.IdentityModel.Tokens;
using System.Security.Claims;
using System.IdentityModel.Tokens.Jwt;
using workoutapicore.Model;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;

namespace workoutapicore.Controllers
{
    [ApiController]
    [Route("api")]
    public class AccountController : ControllerBase
    {
        private IConfiguration _config;
        public AccountController(IConfiguration config)
        {
            _config = config;
        }

        [HttpGet("getUsers")]
        [EnableCors]
        public async Task<List<object>> getUsers() {
            using (IDbConnection connection = new MySqlConnection(Environment.GetEnvironmentVariable("Connection")))
            {
                var output = connection.Query("SELECT * FROM `User` LIMIT 1").ToList();
                return output;
            }
        }

        //add create account endpt

        [AllowAnonymous]
        [Route("Login")]
        [HttpPost]
        public IActionResult Login(Login login)
        {
            IActionResult response = Unauthorized();
            UserModel output = new UserModel();
            using (IDbConnection connection = new MySqlConnection(Environment.GetEnvironmentVariable("Connection")))
            {
                try
                {
                    // abstract this out with method and make stored procedure
                    // use hasher for password
                    output = connection.Query<UserModel>($"SELECT * FROM `User` WHERE Username = '{login.username.Replace("'", "")}'" +
                        $"AND Password = '{login.password.Replace("'", "")}'").First();
                }
                catch (Exception ex)
                {
                    return response;
                }
            }

            if (output.AuthId != null)
            {
                var tokenString = GenerateJSONWebToken(output);
                response = Ok(new { token = tokenString });
            }

            return response;
        }

            private string GenerateJSONWebToken(UserModel userInfo)
            {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var claims = new[] {
                new Claim(JwtRegisteredClaimNames.Sub, userInfo.Username),
                new Claim(JwtRegisteredClaimNames.Email, userInfo.Email),
                new Claim("DateOfJoing", userInfo.CreateTime.ToString("yyyy-MM-dd")),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
            };

            var token = new JwtSecurityToken(_config["Jwt:Issuer"],
                _config["Jwt:Issuer"],
                claims,
                expires: DateTime.Now.AddMinutes(120),
                signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }
}