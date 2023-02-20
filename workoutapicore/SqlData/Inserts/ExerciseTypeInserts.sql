--INSERTS into db.Categegory
INSERT INTO db.Category(Name) VALUES ("chest")
INSERT INTO db.Category(Name) VALUES ("shoulder")
INSERT INTO db.Category(Name) VALUES ("bicep")
INSERT INTO db.Category(Name) VALUES ("tricep")
INSERT INTO db.Category(Name) VALUES ("leg")
INSERT INTO db.Category(Name) VALUES ("back")
INSERT INTO db.Category(Name) VALUES ("glute")
INSERT INTO db.Category(Name) VALUES ("ab")
INSERT INTO db.Category(Name) VALUES ("calves")
INSERT INTO db.Category(Name) VALUES ("forearm/grip")

--INSERTS into db.EerciseType
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Bar Dip", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Chest Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Close-Grip Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Close-Grip Feet-Up Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Decline Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Chest Fly", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Chest Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Decline Chest Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Floor Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Pullover", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Feet-Up Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Floor Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Incline Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Incline Dumbbell Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Incline Push-Up", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Kneeling Incline Push-Up", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Kneeling Push-Up", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Machine Chest Fly", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Machine Chest Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Pec Deck", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Push-Up", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Push-Up Against Wall", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Push-Ups With Feet in Rings", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Resistance Band Chest Fly", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Smith Machine Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Smith Machine Incline Bench Press", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Standing Cable Chest Fly", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Standing Resistance Band Chest Fly", SELECT Id FROM db.Category WHERE name IN "chest");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Band External Shoulder Rotation", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Band Internal Shoulder Rotation", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Band Pull-Apart", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Front Raise", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Rear Delt Row", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Upright Row", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Behind the Neck Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Lateral Raise", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Rear Delt Row", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Front Raise", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Horizontal Internal Shoulder Rotation", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Horizontal External Shoulder Rotation", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Lateral Raise", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Rear Delt Row", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Shoulder Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Face Pull", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Front Hold", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lying Dumbbell External Shoulder Rotation", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lying Dumbbell Internal Shoulder Rotation", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Machine Lateral Raise", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Machine Shoulder Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Monkey Row", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Overhead Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Plate Front Raise", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Power Jerk", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Push Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Reverse Dumbbell Flyes", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Reverse Machine Fly", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Seated Dumbbell Shoulder Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Seated Barbell Overhead Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Seated Smith Machine Shoulder Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Snatch Grip Behind the Neck Press", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Squat Jerk", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Split Jerk", SELECT Id FROM db.Category WHERE name IN "shoulder");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Preacher Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Bodyweight Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Curl With Bar", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Curl With Rope", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Concentration Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Preacher Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hammer Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Incline Dumbbell Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Machine Bicep Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Spider Curl", SELECT Id FROM db.Category WHERE name IN "bicep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Standing Triceps Extension", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Lying Triceps Extension", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Bench Dip", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Close-Grip Push-Up", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Lying Triceps Extension", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Standing Triceps Extension", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Overhead Cable Triceps Extension", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Tricep Bodyweight Extension", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Tricep Pushdown With Bar", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Tricep Pushdown With Rope", SELECT Id FROM db.Category WHERE name IN "tricep");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Air Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Hack Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Lunge", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Walking Lunge", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Belt Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Body Weight Lunge", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Box Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Bulgarian Split Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Chair Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Lunge", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Front Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Goblet Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hack Squat Machine", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Half Air Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hip Adduction Machine", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Landmine Hack Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Landmine Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Leg Extension", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Leg Press", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lying Leg Curl", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Pause Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Romanian Deadlift", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Safety Bar Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Seated Leg Curl", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Shallow Body Weight Lunge", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Side Lunges (Bodyweight)", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Smith Machine Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Squat", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Step Up", SELECT Id FROM db.Category WHERE name IN "leg");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Back Extension", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Shrug", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Block Snatch", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Close Grip Seated Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Wide Grip Seated Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Chin-Up", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Clean", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Clean and Jerk", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Deadlift", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Deficit Deadlift", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Deadlift", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Shrug", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Floor Back Extension", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Good Morning", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hang Clean", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hang Power Clean", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hang Power Snatch", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hang Snatch", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Inverted Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Inverted Row with Underhand Grip", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Kettlebell Swing", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lat Pulldown With Pronated Grip", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lat Pulldown With Supinated Grip", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("One-Handed Cable Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("One-Handed Lat Pulldown", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Pause Deadlift", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Pendlay Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Power Clean", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Power Snatch", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Pull-Up", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Rack Pull", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Seal Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Seated Machine Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Snatch", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Snatch Grip Deadlift", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Stiff-Legged Deadlift", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Straight Arm Lat Pulldown", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Sumo Deadlift", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("T-Bar Row", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Trap Bar Deadlift With High Handles", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Trap Bar Deadlift With Low Handles", SELECT Id FROM db.Category WHERE name IN "back");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Banded Side Kicks", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Pull Through", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Clamshells", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Romanian Deadlift", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Frog Pumps", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Fire Hydrants", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Frog Pumps", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Glute Bridge", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hip Abduction Against Band", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hip Abduction Machine", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hip Thrust", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hip Thrust Machine", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hip Thrust With Band Around Knees", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lateral Walk With Band", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Machine Glute Kickbacks", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("One-Legged Glute Bridge", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("One-Legged Hip Thrust", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Romanian Deadlift", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Single Leg Romanian Deadlift", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Standing Glute Kickback in Machine", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Step Up", SELECT Id FROM db.Category WHERE name IN "glute");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Cable Crunch", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Crunch", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dead Bug", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hanging Leg Raise", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hanging Knee Raise", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Hanging Sit-Up", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("High to Low Wood Chop with Band", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Horizontal Wood Chop with Band", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Kneeling Ab Wheel Roll-Out", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Kneeling Plank", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Kneeling Side Plank", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lying Leg Raise", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lying Windshield Wiper", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Lying Windshield Wiper with Bent Knees", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Machine Crunch", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Mountain Climbers", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Oblique Crunch", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Oblique Sit-Up", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Plank", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Side Plank", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Sit-Up", SELECT Id FROM db.Category WHERE name IN "ab");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Eccentric Heel Drop", SELECT Id FROM db.Category WHERE name IN "calves");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Heel Raise", SELECT Id FROM db.Category WHERE name IN "calves");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Seated Calf Raise", SELECT Id FROM db.Category WHERE name IN "calves");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Standing Calf Raise", SELECT Id FROM db.Category WHERE name IN "calves");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Wrist Curl", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Barbell Wrist Curl Behind the Back", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Bar Hang", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Dumbbell Wrist Curl", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Farmers Walk", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Fat Bar Deadlift", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Gripper", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("One-Handed Bar Hang", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Plate Pinch", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Plate Wrist Curl", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
INSERT INTO db.ExerciseType(Name, CategoryId) VALUES ("Towel Pull-Up", SELECT Id FROM db.Category WHERE name IN "forearm/grip");
