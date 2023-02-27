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
using APIDATAManagerCore.Code;

namespace workoutapicore.Controllers
{
    [ApiController]
    [Route("api")]
    [EnableCors]
    public class AccountController : ControllerBase
    {
        private IConfiguration _config;
        public AccountController(IConfiguration config)
        {
            _config = config;
        }

        //add create account endpt
        [AllowAnonymous]
        [Route("CreateAccount")]
        [HttpPost]
        public IActionResult CreateAccount(Login login)
        {
            IActionResult response = Unauthorized();
            // SET UP A REAL PASSWORD AND MAKE ENV
            //string getEnv = Environment.GetEnvironmentVariable("envVar");
            //System.Console.WriteLine(getEnv);
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                try
                {
                    // abstract this out with method and make stored procedure
                    // update sql to not send some of this data
                    connection.Execute(@$"insert into db.User (AuthUserId, Username, Password, 
                    Firstname, Lastname, Email, Bio, Twitter, Instagram, Facebook, Youtube) 
                    values('3', '{login.username.Replace("'", "")}', '{Hasher.Hash(login.password.Replace("'", ""))}',
                    'kimel', 'password', 'email', 'bio', 
                    'twitter', 'instagram', 'facebook', 'youtube')");
                }
                catch (Exception ex)
                {
                    return response;
                }
            }
            response = Ok();

            return response;
        }

        [AllowAnonymous]
        [Route("Login")]
        [HttpPost]
        public IActionResult Login(Login login)
        {
            IActionResult response = Unauthorized();
            UserModel output = new UserModel();
            string getEnv = Environment.GetEnvironmentVariable("envVar");
            System.Console.WriteLine(getEnv);
            using (IDbConnection connection = new MySqlConnection("server=127.0.0.1;uid=root;pwd=password;database=db"))
            {
                string pass = Hasher.Hash(login.password.Replace("'", ""));
                try
                {
                    // abstract this out with method and make stored procedure
                    output = connection.Query<UserModel>($"SELECT * FROM `User` WHERE Username = '{login.username.Replace("'", "")}'").First();
                }
                catch (Exception ex)
                {
                    return response;
                }
            }

            if (output.AuthId != null && Hasher.Verify(login.password, output.Password))
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
                new Claim("AuthId", userInfo.AuthId.ToString()),
                new Claim("Id", userInfo.Id.ToString()),
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