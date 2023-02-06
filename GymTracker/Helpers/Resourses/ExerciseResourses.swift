//
//  ExerciseResourses.swift
//  GymTracker
//
//  Created by Максим Мельничук on 27.01.23.
//

import UIKit

enum Exercise {
    
    enum ExerciseInfo {
            enum InfoImage {
                    enum Bicepc{
                        static var bicepc_1 = UIImage(named: "bic_1_info")!
                        static var bicepc_2 = UIImage(named: "bic_2_info")!
                        static var bicepc_3 = UIImage(named: "bic_3_info")!
                        static var bicepc_4 = UIImage(named: "bic_4_info")!
                        static var bicepc_5 = UIImage(named: "bic_5_info")!
                        static var bicepc_6 = UIImage(named: "bic_6_info")!
                        static var bicepc_7 = UIImage(named: "bic_7_info")!
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
                    
                    enum Tricepc {
                        static var tric_1 = UIImage(named: "tricepc_1_info")!
                        static var tric_2 = UIImage(named: "tricepc_2_info")!
                        static var tric_3 = UIImage(named: "tricepc_3_info")!
                        static var tric_4 = UIImage(named: "tricepc_4_info")!
                    }
                    
                    enum Chest {
                        static var chest_1 = UIImage(named: "chest_1_info")!
                        static var chest_2 = UIImage(named: "chest_2_info")!
                        static var chest_3 = UIImage(named: "chest_3_info")!
                        static var chest_4 = UIImage(named: "chest_4_info")!
                    }
                }
        
                enum InfoText {
                    enum Bicepc {
                        static var bicepc_1 = ""
                        static var bicepc_2 = ""
                        static var bicepc_3 = ""
                        static var bicepc_4 = ""
                        static var bicepc_5 = ""
                        static var bicepc_6 = ""
                        static var bicepc_7 = ""
                    }
                    enum Legs {
                        static var legs_1 = ""
                        static var legs_2 = ""
                        static var legs_3 = ""
                        static var legs_4 = ""
                        static var legs_5 = ""
                        static var legs_6 = ""
                        static var legs_7 = ""
                        static var legs_8 = ""
                    }
                    
                    enum Back {
                        static var back_1 = ""
                        static var back_2 = ""
                        static var back_3 = ""
                        static var back_4 = ""
                        static var back_5 = ""
                        static var back_6 = ""
                    }
                    
                    enum Shoulders {
                        static var shoulders_1 = ""
                        static var shoulders_2 = ""
                        static var shoulders_3 = ""
                        static var shoulders_4 = ""
                    }
                    enum Chest {
                        static var chest_1 = ""
                        static var chest_2 = ""
                        static var chest_3 = ""
                        static var chest_4 = ""
                    }
                    enum Tricepc {
                        static var tric_1 = ""
                        static var tric_2 = "1. Stand or sit perfectly upright on a workout bench and grab a dumbbell with one hand (avoid going too heavy, especially when starting out). /n 2.Holding the dumbbell, lift your arm slightly behind your head with your elbow bent.Extend your elbow until your arm is straight overhead.Perform 10 reps with one arm before switching to the other to round out the set.Keep your core engaged to protect the lower back when the weight is overhead, especially if you’re performing this exercise standing."
                        static var tric_3 = ""
                        static var tric_4 = ""
                    }
                }
        enum VideoKey {
            enum Bicepc {
                static var bicepc_1 = "zC3nLlEvin4"
                static var bicepc_2 = "Jvj2wV0vOYU"
                static var bicepc_3 = "ztrd2rCc1hA"
                static var bicepc_4 = "didEQUuieRQ"
                static var bicepc_5 = "soxrZlIl35U"
                static var bicepc_6 = "AsAVbj7puKo"
                static var bicepc_7 = "L9GwtjwAM8Y"
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
            enum Tricepc {
                static var tric_1 = "vB5OHsJ3EME"
                static var tric_2 = "jTQWYdWLvys"
                static var tric_3 = "6SS6K3lAwZ8"
                static var tric_4 = "d_KZxkY_0cM"
            
        }
        }
            
                enum AllExerciseInfo {
                        
            enum Bicepc {
                
                static var bicepc_1 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Bicepc.bicepc_1,
                                                       exerciseTextInfo: ExerciseInfo.InfoText.Bicepc.bicepc_1,
                                                       youTubeVideoKey: ExerciseInfo.VideoKey.Bicepc.bicepc_1)
                static var bicepc_2 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Bicepc.bicepc_2,
                                                       exerciseTextInfo: ExerciseInfo.InfoText.Bicepc.bicepc_2,
                                                       youTubeVideoKey: ExerciseInfo.VideoKey.Bicepc.bicepc_2)
                static var bicepc_3 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Bicepc.bicepc_3,
                                                       exerciseTextInfo: ExerciseInfo.InfoText.Bicepc.bicepc_3,
                                                       youTubeVideoKey: ExerciseInfo.VideoKey.Bicepc.bicepc_3)
                static var bicepc_4 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Bicepc.bicepc_4,
                                                       exerciseTextInfo: ExerciseInfo.InfoText.Bicepc.bicepc_4,
                                                       youTubeVideoKey: ExerciseInfo.VideoKey.Bicepc.bicepc_4)
                static var bicepc_5 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Bicepc.bicepc_5,
                                                       exerciseTextInfo: ExerciseInfo.InfoText.Bicepc.bicepc_5,
                                                       youTubeVideoKey: ExerciseInfo.VideoKey.Bicepc.bicepc_5)
                static var bicepc_6 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Bicepc.bicepc_6,
                                                       exerciseTextInfo: ExerciseInfo.InfoText.Bicepc.bicepc_6,
                                                       youTubeVideoKey: ExerciseInfo.VideoKey.Bicepc.bicepc_6)
                static var bicepc_7 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Bicepc.bicepc_7,
                                                       exerciseTextInfo: ExerciseInfo.InfoText.Bicepc.bicepc_7,
                                                       youTubeVideoKey: ExerciseInfo.VideoKey.Bicepc.bicepc_7)
                
                    static var allBicepc = [bicepc_1, bicepc_2, bicepc_3, bicepc_4, bicepc_5, bicepc_6, bicepc_7]
            }
                            
            enum Legs {
                static var legs_1 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_1,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_1,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_1)
                static var legs_2 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_2,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_2,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_2)
                static var legs_3 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_3,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_3,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_3)
                static var legs_4 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_4,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_4,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_4)
                static var legs_5 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_5,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_5,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_5)
                static var legs_6 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_6,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_6,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_6)
                static var legs_7 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_7,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_7,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_7)
                static var legs_8 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Legs.legs_8,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Legs.legs_8,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Legs.legs_8)
                
                    static var allLegs = [legs_1, legs_2, legs_3, legs_4, legs_5, legs_6, legs_7, legs_8]
            }
            
            enum Back {
                static var back_1 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Back.back_1,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Back.back_1,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Back.back_1)
                static var back_2 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Back.back_2,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Back.back_2,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Back.back_2)
                static var back_3 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Back.back_3,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Back.back_3,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Back.back_3)
                static var back_4 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Back.back_4,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Back.back_4,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Back.back_4)
                static var back_5 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Back.back_5,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Back.back_5,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Back.back_5)
                static var back_6 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Back.back_6,
                                                     exerciseTextInfo: ExerciseInfo.InfoText.Back.back_6,
                                                     youTubeVideoKey: ExerciseInfo.VideoKey.Back.back_6)
                
                    static var allBack = [back_1, back_2, back_3, back_4, back_5, back_6]
                
            }
            
            enum Shoulders {
                static var shoulders_1 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Shoulders.shoulders_1,
                                                          exerciseTextInfo: ExerciseInfo.InfoText.Shoulders.shoulders_1,
                                                          youTubeVideoKey: ExerciseInfo.VideoKey.Shoulders.shoulders_1)
                static var shoulders_2 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Shoulders.shoulders_2,
                                                          exerciseTextInfo: ExerciseInfo.InfoText.Shoulders.shoulders_2,
                                                          youTubeVideoKey: ExerciseInfo.VideoKey.Shoulders.shoulders_2)
                static var shoulders_3 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Shoulders.shoulders_3,
                                                          exerciseTextInfo: ExerciseInfo.InfoText.Shoulders.shoulders_3,
                                                          youTubeVideoKey: ExerciseInfo.VideoKey.Shoulders.shoulders_3)
                static var shoulders_4 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Shoulders.shoulders_4,
                                                          exerciseTextInfo: ExerciseInfo.InfoText.Shoulders.shoulders_4,
                                                          youTubeVideoKey: ExerciseInfo.VideoKey.Shoulders.shoulders_4)
                
                static var allShoulders = [shoulders_1, shoulders_2, shoulders_3, shoulders_4]
                
            }
            
            enum Chest {
                static var chest_1 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Chest.chest_1,
                                                      exerciseTextInfo: ExerciseInfo.InfoText.Chest.chest_1,
                                                      youTubeVideoKey: ExerciseInfo.VideoKey.Chest.chest_1)
                static var chest_2 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Chest.chest_2,
                                                      exerciseTextInfo: ExerciseInfo.InfoText.Chest.chest_2,
                                                      youTubeVideoKey: ExerciseInfo.VideoKey.Chest.chest_2)
                static var chest_3 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Chest.chest_3,
                                                      exerciseTextInfo: ExerciseInfo.InfoText.Chest.chest_3,
                                                      youTubeVideoKey: ExerciseInfo.VideoKey.Chest.chest_3)
                static var chest_4 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Chest.chest_4,
                                                      exerciseTextInfo: ExerciseInfo.InfoText.Chest.chest_4,
                                                      youTubeVideoKey: ExerciseInfo.VideoKey.Chest.chest_4)
                
                    static var allChest = [chest_1, chest_2, chest_3, chest_4]
            }
            
            enum Tricepc {
                static var tricepc_1 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Tricepc.tric_1,
                                                        exerciseTextInfo: ExerciseInfo.InfoText.Tricepc.tric_1,
                                                        youTubeVideoKey: ExerciseInfo.VideoKey.Tricepc.tric_1)
                static var tricepc_2 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Tricepc.tric_2,
                                                        exerciseTextInfo: ExerciseInfo.InfoText.Tricepc.tric_2,
                                                        youTubeVideoKey: ExerciseInfo.VideoKey.Tricepc.tric_2)
                static var tricepc_3 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Tricepc.tric_3,
                                                        exerciseTextInfo: ExerciseInfo.InfoText.Tricepc.tric_3,
                                                        youTubeVideoKey: ExerciseInfo.VideoKey.Tricepc.tric_3)
                static var tricepc_4 = ExerciseInfoList(exerciseImageInfo: ExerciseInfo.InfoImage.Tricepc.tric_4,
                                                        exerciseTextInfo: ExerciseInfo.InfoText.Tricepc.tric_4,
                                                        youTubeVideoKey: ExerciseInfo.VideoKey.Tricepc.tric_4)
                
                    
                    static var allTricepc = [tricepc_1, tricepc_2, tricepc_3, tricepc_4]
            }
        }
    }
}

