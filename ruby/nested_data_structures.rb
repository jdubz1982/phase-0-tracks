#create hash with list of exercises for each body part

muscle_groups = {
    chest: {
            pectoralis_major: {
              exercises: ["bench press", "decline bench press", "incline bench press"]
            },

            pectoralis_minor: {
              exercises: ["dips", "dumbbell fly"]
              },

            serratus_anterior: {
              exercises: ["dumbbell pullover"]
            }
    },

    back: {
            erector_spinae: {
              exercises: ["deadlift", "back extensions"]
              },

            latissimus_dorsi: {
              exercises: ["pull ups, chin ups"]
              },

            teres_major: {
              exercises: ["cable rows", "bent over rows"]
            }
        
    },

    legs: {
        
            hamstring: {
              exercises: ["deadlift", "leg curls"]
              },

            quadriceps: {
              exercises: ["back squat", "leg press"]
              },

            glutes: {
              exercises: ["back squat", "dumbbell lunge"]
            }
    }
}

#print latissimus dorsi exercises
p muscle_groups[:back][:latissimus_dorsi][:exercises]

#find last exercise listed for for pectoralis_major
p muscle_groups[:chest][:pectoralis_major][:exercises].last

#add romanian deadlift to hamstring exercises
muscle_groups[:legs][:hamstring][:exercises].push("romanian deadlift")
p muscle_groups[:legs][:hamstring][:exercises]
