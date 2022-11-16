namespace workoutapicore.Model
{
    public class UserModel
    {
        public int Id { get; set; }
        public int AuthId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Email { get; set; }
        public string Bio { get; set; }
        public string Twitter { get; set; }
        public string Instagram { get; set; }
        public string Facebook { get; set; }
        public string Youtube { get; set; }
        public DateTime CreateTime { get; set; }
    }
}
