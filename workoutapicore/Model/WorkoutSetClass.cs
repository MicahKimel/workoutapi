using System;
namespace workoutapicore.Model
{
    public class WorkoutSetClass
    {
        //(Id, AuthUserId, WorkoutId, ExerciseId, Weight, Sets, Reps, StartTime, EndTime, MetricType)
        //public int Id { get; set; }
        //public string AuthUserId { get; set; }
        //public int WorkoutId { get; set; }
        public int ExerciseId { get; set; }
        public decimal Weight { get; set; }
        //public int Sets { get; set; }
        public int Reps { get; set; }
        //public DateTime StartTime { get; set; }
        //public DateTime EndTime { get; set; }
        public int MetricType { get; set; }

    }
}

