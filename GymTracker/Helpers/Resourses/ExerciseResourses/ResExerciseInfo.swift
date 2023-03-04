//
//  ExerciseInfo.swift
//  GymTracker
//
//  Created by Максим Мельничук on 27.01.23.
//

import UIKit

enum ResExerciseInfo {
    
    static let instrucrionLabel = "Instruction's :"
    static let subtitleYouTubeLabel = "Watch on"
    static let youTubeLabel = "YouTube"
    
    enum InfoImage {
        enum Biceps{
            static var biceps_1 = UIImage(named: "bic_1_info")!
            static var biceps_2 = UIImage(named: "bic_2_info")!
            static var biceps_3 = UIImage(named: "bic_3_info")!
            static var biceps_4 = UIImage(named: "bic_4_info")!
            static var biceps_5 = UIImage(named: "bic_5_info")!
            static var biceps_6 = UIImage(named: "bic_6_info")!
            static var biceps_7 = UIImage(named: "bic_7_info")!
        }
        enum Legs {
            static var legs_1 = UIImage(named: "legs_1_info")!
            static var legs_2 = UIImage(named: "legs_2_info")!
            static var legs_3 = UIImage(named: "legs_3_info")!
            static var legs_4 = UIImage(named: "legs_4_info")!
            static var legs_5 = UIImage(named: "legs_5_info")!
            static var legs_6 = UIImage(named: "legs_6_info")!
            static var legs_7 = UIImage(named: "legs_7_info")!
            static var legs_8 = UIImage(named: "legs_8_info")!
        }
        
        enum Back {
            static var back_1 = UIImage(named: "back_1_info")!
            static var back_2 = UIImage(named: "back_2_info")!
            static var back_3 = UIImage(named: "back_3_info")!
            static var back_4 = UIImage(named: "back_4_info")!
            static var back_5 = UIImage(named: "back_5_info")!
            static var back_6 = UIImage(named: "back_6_info")!
        }
        
        enum Shoulders {
            static var shoulders_1 = UIImage(named: "shoulders_1_info")!
            static var shoulders_2 = UIImage(named: "shoulders_2_info")!
            static var shoulders_3 = UIImage(named: "shoulders_3_info")!
            static var shoulders_4 = UIImage(named: "shoulders_4_info")!
        }
        
        enum Chest {
            static var chest_1 = UIImage(named: "chest_1_info")!
            static var chest_2 = UIImage(named: "chest_2_info")!
            static var chest_3 = UIImage(named: "chest_3_info")!
            static var chest_4 = UIImage(named: "chest_4_info")!
        }
        
        enum Triceps {
            static var triceps_1 = UIImage(named: "triceps_1_info")!
            static var triceps_2 = UIImage(named: "triceps_2_info")!
            static var triceps_3 = UIImage(named: "triceps_3_info")!
            static var triceps_4 = UIImage(named: "triceps_4_info")!
        }
    }
    
    enum InfoText {
        enum Biceps {
            static var biceps_1 = """
                        1.The alternate hammer curl is a great exercise for the biceps and the forearms. Set up by grasping a set of dumbbells and standing straight up with the dumbbells by your sides.\n
                        2.You should be using a neutral grip, meaning your palms are facing your body.\n
                        3.Bend your arms slightly to keep the tension on the biceps.\n
                        4.Keeping your body fixed and elbows in at your sides, slowly curl up the dumbbell of your weakest arm (for most people this  is their left arm).\n
                        5.Squeeze the bicep at the top of the movement, and then slowly lower the weight back to the starting position.\n
                        6.Repeat the same movement for the other arm. This is one rep.
                        """
            static var biceps_2 = """
                        1.Select the desired weight from the rack, and sit in an upright position on a flat bench.\n
                        2.Hinge forward and position your elbow near the base of your knee. Place your free hand on the other knee to stabilize yourself.\n
                        3.Using a supinated (palms facing up) grip, take a deep breath and curl the dumbbell towards your shoulder.\n
                        4.Once the bicep is fully shortened, slowly lower the weight back to the starting position.\n
                        5.Repeat for the desired number of repetitions on both sides.
                        """
            static var biceps_3 = """
                        1.The standing barbell curl is the cornerstone of many bicep building routines. Grasp a barbell or Olympic bar at around shoulder width apart using an underhand grip (palms facing up).\n
                        2.Stand straight up, feet together (you may be more comfortable putting one foot back for stability), back straight, and with your arms fully extended.\n
                        3.The bar should not be touching your body.\n
                        4.Keeping your eyes facing forwards, elbows tucked in at your sides, and your body completely still, slowly curl the bar up.\n
                        5.Squeeze your biceps hard at the top of the movement, and then slowly lower it back to the starting position.\n
                        6.Repeat for desired reps
                        """
            static var biceps_4 = """
                        1.Set up for the EZ bar reverse wrist curl by selecting a light EZ bar and grasping it with a reverse grip (palms facing down) at around shoulder width apart.\n
                        2.Stand straight up, feet together (you may be more comfortable taking one foot back for stability), back straight, and with your arms fully extended. The bar should not be touching your body.\n
                        3.Keeping your eyes facing forwards, elbows tucked in at your sides, and your body completely still, slowly curl the bar up.
                        4.Do not pause, and slowly lower the weight back to the starting position.\n
                        5.Repeat for desired reps.
                        """
            static var biceps_5 = """
                        1.Position an incline bench at roughly 55-65 degrees, select the    desired weight from the rack, and sit upright with your back flat against the pad.\n
                        2.Using a supinated (palms up) grip, take a deep breath and curl both dumbbells towards your shoulders.\n
                        3.Once the biceps are fully shortened, slowly lower the weights back to the starting position.\n
                        4.Repeat for the desired number of repetitions.
                        """
            static var biceps_6 = """
                        1.Set up for the cable curl by attaching a straight bar to the low pulley cable and selecting the weight you want to use on the stack.\n
                        2.Stand facing the cable machine with your legs shoulder width apart.\n
                        3.Grasp the bar with an underhand grip (palms facing up), and your hands about shoulder width apart.\n
                        4.Keeping your elbows tucked in by your sides, slowly curl the bar up as far as possible.\n
                        5.Squeeze the biceps at the top of the movement, and then slowly lower it back to starting position.\n
                        6.Do not pause, but go straight into the next rep!
                        """
            static var biceps_7 = """
                        1.Keeping your upper arm horizontal, exhale as you flex your elbow and curl the stirrup toward your shoulder.\n
                        2.Hold for a count of two and squeeze your biceps brachii.\n
                        3.Inhale as you extend your elbow and return the stirrup to the starting position.\n
                        4.Repeat for the prescribed number of repetitions.\n
                        5.Repeat the exercise with your opposite arm.
                    """
        }
        enum Legs {
            static var legs_1 = """
                        1.The alternate hammer curl is a great exercise for the biceps and the forearms. Set up by grasping a set of dumbbells and standing straight up with the dumbbells by your sides.\n
                        2.You should be using a neutral grip, meaning your palms are facing your body.\n
                        3.Bend your arms slightly to keep the tension on the biceps.\n
                        4.Keeping your body fixed and elbows in at your sides, slowly curl up the dumbbell of your weakest arm (for most people this is their left arm).\n
                        5.Squeeze the bicep at the top of the movement, and then slowly lower the weight back to the starting position.\n
                        6.Repeat the same movement for the other arm. This is one rep.
                        """
            static var legs_2 = """
                        1.Select the desired weight from the rack, and sit in an upright position on a flat bench.\n
                        2.Hinge forward and position your elbow near the base of your knee. Place your free hand on the other knee to stabilize yourself.\n
                        3.Using a supinated (palms facing up) grip, take a deep breath and curl the dumbbell towards your shoulder.\n
                        4.Once the bicep is fully shortened, slowly lower the weight back to the starting position.\n
                        5.Repeat for the desired number of repetitions on both sides.
                        """
            static var legs_3 = """
                        1.The standing barbell curl is the cornerstone of many bicep building routines. Grasp a barbell or Olympic bar at around shoulder width apart using an underhand grip (palms facing up).\n
                        2.Stand straight up, feet together (you may be more comfortable putting one foot back for stability), back straight, and with your arms fully extended.\n
                        3.The bar should not be touching your body.\n
                        4.Keeping your eyes facing forwards, elbows tucked in at your sides, and your body completely still, slowly curl the bar up.\n
                        5.Squeeze your biceps hard at the top of the movement, and then slowly lower it back to the starting position.\n
                        6.Repeat for desired reps.
                        """
            static var legs_4 = """
                        1.Set up for the EZ bar reverse wrist curl by selecting a light EZ bar and grasping it with a reverse grip (palms facing down) at around shoulder width apart.\n
                        2.Stand straight up, feet together (you may be more comfortable taking one foot back for stability), back straight, and with your arms fully extended. The bar should not be touching your body.\n
                        3.Keeping your eyes facing forwards, elbows tucked in at your sides, and your body completely still, slowly curl the bar up.\n
                        4.Do not pause, and slowly lower the weight back to the starting position.\n
                        5.Repeat for desired reps.
                        """
            static var legs_5 = """
                        1.Position an incline bench at roughly 55-65 degrees, select the desired weight from the rack, and sit upright with your back flat against the pad.\n
                        2.Using a supinated (palms up) grip, take a deep breath and curl both dumbbells towards your shoulders.\n
                        3.Once the biceps are fully shortened, slowly lower the weights back to the starting position.\n
                        4.Repeat for the desired number of repetitions.
                        """
            static var legs_6 = """
                        1.Set up for the cable curl by attaching a straight bar to the low pulley cable and selecting the weight you want to use on the stack.\n
                        2.Stand facing the cable machine with your legs shoulder width apart.\n
                        3.Grasp the bar with an underhand grip (palms facing up), and your hands about shoulder width apart.\n
                        4.Keeping your elbows tucked in by your sides, slowly curl the bar up as far as possible.\n
                        5.Squeeze the biceps at the top of the movement, and then slowly lower it back to starting position.\n
                        6.Do not pause, but go straight into the next rep!
                        """
            static var legs_7 = """
                        1.Keeping your upper arm horizontal, exhale as you flex your elbow and curl the stirrup toward your shoulder.\n
                        2.Hold for a count of two and squeeze your biceps brachii.\n
                        3.Inhale as you extend your elbow and return the stirrup to the starting position.\n
                        4.Repeat for the prescribed number of repetitions.
                        """
            static var legs_8 = """
                        1.Keeping your upper arm horizontal, exhale as you flex your elbow and curl the stirrup toward your 2.shoulder.\n
                        3.Hold for a count of two and squeeze your biceps brachii.\n
                        4.Inhale as you extend your elbow and return the stirrup to the starting position.\n
                        5.Repeat for the prescribed number of repetitions.\n
                        6.Repeat the exercise with your opposite arm.
                        """
        }
        
        enum Back {
            static var back_1 = """
                        1.Assume a standing position while holding the bar using a double overhand grip.\n
                        2.Hinge forward until your torso is roughly parallel with the floor (or slightly above) and then begin the movement by driving the elbows behind the body while retracting the shoulder blades.\n
                        3.Pull the bar towards your belly button until it touches your body and then slowly lower the bar back to the starting position under control.
                        """
            static var back_2 = """
                        1.Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine.\n
                        2.Grasp the bar with a neutral grip (palms facing in).\n
                        3.Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position.\n
                        4.Keeping your body in position, pull the handle into your stomach.\n
                        5.Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position.
                        """
            static var back_3 = """
                        1.Attach a wide grip handle to the lat pulldown machine and assume a seated position.\n
                        2.Grasp the handle with a pronated grip (double overhand) and initiate the movement by depressing the shoulder blade and then flexing the elbow while extending the shoulder.\n
                        3.Pull the handle towards your body until the elbows are in line with your torso and then slowly lower the handle back to the starting position under control.\n
                        4.Repeat for the desired number of repetitions.
                        """
            static var back_4 = """
                        1.Grab the hand attachments in an overhand grip about shoulder-width apart, with elbows locked and arms straight. Keep your knees soft rather than locked.\n
                        2.Breathe out while pulling the cable down to your thighs in a smooth, controlled motion, arms remaining straight, hips bending slightly forward while keeping the back straight. If you do this exercise correctly, you will find that your abdominal muscle will work hard, and your arms and back will also get some work.\n
                        3.Pause when the hand grips are at thigh level.\n
                        4.Inhale while allowing the weights to return to full arm extension above your head.3 End in a position where there is still tension on the cable before the next repetition.
                        """
            static var back_5 = """
                        1.Assume a kneeling position on the bench with your ipsilateral (i.e. same side) hand braced against the bench.\n
                        2.Hold a dumbbell in the opposite hand with a neutral grip.\n
                        3.Begin the movement by driving the elbow behind the body while retracting the shoulder blade.\n
                        4.Pull the dumbbell towards your body until the elbow is at (or just past) the midline and then slowly lower the dumbbells back to the starting position under control.\n
                        5.Repeat for the desired number of repetitions on both sides.
                        """
            static var back_6 = """
                        1.Position yourself on the back extension machine with your hips on top of the cushioned pads and your feet secured under the leg anchor.\n
                        2.Place your arms behind your head, or hold onto a kettlebell (10 pounds is a good starting point) with your arms fully extended.\n
                        3.Lift your torso up a few inches and squeeze your gluteal muscles for two seconds. Then, lower your torso back down to the starting position. Be sure not to overextend your back.\n
                        4.This counts as one rep. Complete three sets of 10 reps.\n
                        5.If you're a beginner, perform this exercise without weight or start with a light weight. As you feel comfortable, begin to add or increase the weight.
                        """
        }
        
        enum Shoulders {
            static var shoulders_1 = """
                        1.Assume a standing position with the dumbbells on both sides of your body.\n
                        2.Hinge forward, inhale, and grab the dumbbells with a neutral grip.\n
                        3.Stand up tall and ensure your spine remains neutral.\n
                        4.Contract the traps to elevate the shoulders. Squeeze hard at the top and slowly lower the dumbbells back to the starting position.\n
                        5.Repeat for the desired number of repetitions.
                        """
            static var shoulders_2 = """
                        1.Assume a split stance with the arms straight out in front of you utilizing a pronated grip.\n
                        2.Inhale and pull the rope towards your face with the elbows high.\n
                        3.Slowly lower the rope back to the starting position and repeat for the desired number of repetitions on both sides.
                        """
            static var shoulders_3 = """
                        1.The dumbbell lateral raise is a good exercise for building width in your upper body which gives you the "V" shape. Grab a set of dumbbells and stand straight up with the dumbbells at your sides.\n
                        2.Your palms should be facing your body. You should be holding the dumbbells slightly off your body, as this keeps the tension on the side delts. This is your starting position for the exercise.\n
                        3.To execute, slowly raise the dumbbells up to around shoulder height. It's important that you do not let your wrists go above your elbows while raising the weight, as this will take the work off the side delts and put it on the front delts.\n
                        4.Pause at the top of the movement, and then slowly lower the weight back to the starting position.\n
                        5.Do not let the dumbbells touch your body, and then raise them for the next rep.
                        """
            static var shoulders_4 = """
                        1.Set up an adjustable angle bench to 90 degrees and select the desired weight from the rack.\n
                        2.Pick up the dumbbells from the floor using a neutral grip (palms facing in). Position the end of the dumbbells on your knees and sit down on the bench.\n
                        3.Using a safe and controlled motion, kick your knees up one at a time in order to get each dumbbell into place.\n
                        4.Once the dumbbells are in place, rotate your palms so they are facing forward.\n
                        5.Take a deep breath then press the dumbbells overhead by extending the elbows and contracting the deltoids.\n
                        6.Slowly lower the dumbbells back to the starting position (the arms should be roughly 90 degrees or slightly lower depending upon limb lengths).\n
                        7.Repeat for the desired number of repetitions
                        """
        }
        enum Chest {
            static var chest_1 = """
                        1.Set both pulleys as high as possible and select the desired weight.\n
                        2.Grasp both handles with a neutral grip and keep your feet in line with the pulleys..\n
                        3.Remain upright, keep a slight bend in the elbows, move entirely at the shoulder joint, and pull both handles together in front of your body.\n
                        4.Slowly lower back to the starting position and repeat for the desired number of repetitions.
                        """
            static var chest_2 = """
                        1.The pec dec is a great machine for isolating the chest. Before you start, adjust the seat height so that the bottom of the arm pads are about level with your chest when you're sitting on the machine.\n
                        2.Select the weight you want to use on the stack.\n
                        3.Sit on the machine, grasp the handles and/or place your forearms on the padding. Take the weight off the stack slightly. This is the starting position for the exercise.\n
                        4.Keeping your body fixed, slowly bring the forearm pads or handles together. Don't let them touch.\n
                        5.Squeeze the chest muscles for a count of 1-3, then slowly lower back to the starting position.\n
                        6.Repeat for desired reps.
                        """
            static var chest_3 = """
                        1.Lie flat on an incline bench and set your hands just outside of shoulder wi.\n
                        2.Set your shoulder blades by pinching them together and driving them into the be.\n
                        3.Take a deep breath and allow your spotter to help you with the lift off in order to maintain tightness through your upper\n
                        4.Let the weight settle and ensure your upper back remains tight after lift.\n
                        5.Inhale and allow the bar to descend slowly by unlocking the elb.\n
                        6.Lower the bar in a straight line to the base of the sternum (breastbone) and touch the chest.\n
                        7.Push the bar back up in a straight line by pressing yourself into the bench, driving your feet into the floor for leg drive, and extending the elb.\n
                        8.Repeat for the desired number of repetitions.
                        """
            static var chest_4 = """
                        1.Set both pulleys directly at (or slightly above) shoulder height and select the desired weight.\n
                        2.Grasp both handles with a neutral grip and take a step forward to split the stance.\n
                        3.Press the handles to lockout while flexing the pecs and extending the elbows.\n
                        4.Keep a slight bend in the elbows, move entirely at the shoulder joint, and slowly allow the arms to open while the pecs stretch.\n
                        5.Return to the starting position by flexing your pecs and bringing the handles together at chest height.\n
                        6.Slowly lower back to the starting position and repeat for the desired number of repetition2
                        """
        }
        enum Triceps {
            static var triceps_1 = """
                        1.Attach a straight bar to a cable stack as high as possible and assume a standing position.\n
                        2.Grasp the straight bar with a pronated grip (palms facing down) and lean forward slightly by hinging at the hips.\n
                        3.Initiate the movement by extending the elbows and flexing the triceps.\n
                        4.Pull the handle downward until the elbows are almost locked out and then slowly lower under control back to the starting position.\n
                        5.Repeat for the desired number of repetitions.
                        """
            static var triceps_2 = """
                        1.Select the desired weight from the rack and stand in an open area.\n
                        2.Hinge forward, row the dumbbells into position, then extend the elbows while flexing the triceps.\n
                        3.Slowly lower the dumbbells back to the starting position and repeat for the desired number of repetitions.
                        """
            static var triceps_3 = """
                        1.Get into the starting position for the standing one-arm dumbbell extension by grasping a dumbbell in your left hand and holding it above your head with your palm facing forward.\n
                        2.Your elbow should be slightly bent. You can use your right arm to stabilize your body.\n
                        3.Begin the movement by bending at the elbow only and slowly lowering the dumbbell behind your neck.\n
                        4.Once the dumbbell is down as far as possible, slowly raise it back to the starting position.\n
                        5.Do not lock your elbow out at the top of the movement, and then repeat for desired reps.
                        """
            static var triceps_4 = """
                        1.Select your desired weight and sit on the edge of a flat bench.\n
                        2.To get into position, lay back and keep the bar close to your chest. Once you are supine, press the weight to lockout.\n
                        3.Lower the weights towards your head by unlocking the elbows and allowing the ez bar to drop toward your forehead or just above.\n
                        4.Once your forearms reach parallel or just below, reverse the movement by extending the elbows while flexing the triceps to lockout the weight.\n
                        5.Repeat for the desired number of repetitions.
                        """
            
        }
    }
    enum VideoKey {
        enum Biceps {
            static var biceps_1 = "zC3nLlEvin4"
            static var biceps_2 = "Jvj2wV0vOYU"
            static var biceps_3 = "ztrd2rCc1hA"
            static var biceps_4 = "didEQUuieRQ"
            static var biceps_5 = "soxrZlIl35U"
            static var biceps_6 = "AsAVbj7puKo"
            static var biceps_7 = "L9GwtjwAM8Y"
        }
        enum Legs {
            static var legs_1 = "oujca3_Shgw"
            static var legs_2 = "ELOCsoDSmrg"
            static var legs_3 = "1Tq3QdYUuHs"
            static var legs_4 = "SW_C1A-rejs"
            static var legs_5 = "FQKfr1YDhEk"
            static var legs_6 = "MeIiIdhvXT4"
            static var legs_7 = "wxwY7GXxL4k"
            static var legs_8 = "3UWi44yN-wM"
        }
        
        enum Back {
            static var back_1 = "9efgcAjQe7E"
            static var back_2 = "GZbfZ033f74"
            static var back_3 = "CAwf7n6Luuc"
            static var back_4 = "AjCCGN2tU3Q"
            static var back_5 = "pYcpY20QaE8"
            static var back_6 = "ph3pddpKzzw"
        }
        
        enum Shoulders {
            static var shoulders_1 = "cJRVVxmytaM"
            static var shoulders_2 = "qVOkqgk"
            static var shoulders_3 = "3VcKaXpzqRo"
            static var shoulders_4 = "qEwKCR5JCog"
        }
        enum Chest {
            static var chest_1 = "WEM9FCIPlxQ"
            static var chest_2 = "Z57CtFmRMxA"
            static var chest_3 = "Iwe6AmxVf7o"
            static var chest_4 = "DbFgADa2PL8"
        }
        enum Triceps {
            static var triceps_1 = "vB5OHsJ3EME"
            static var triceps_2 = "jTQWYdWLvys"
            static var triceps_3 = "6SS6K3lAwZ8"
            static var triceps_4 = "d_KZxkY_0cM"
            
        }
    }
}

