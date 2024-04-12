//
//  Profile.swift
//  EasyGO
//
//  Created by Andy Yu on 4/11/24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack() {
            ZStack() {
                ZStack() {
                    ZStack() {
                        ZStack() {
                            Image("Profile_1")
                                .resizable()
                        }
                            .frame(width: 635.23, height: 471.71)
                            .offset(x: 0, y: 0)
                    }
                    .frame(width: 635.23, height: 471.71)
                    .offset(x: 0, y: -238.18)
                    ZStack() {
                        Text("Your application has been approved by the driver.")
                            .font(Font.custom("Roboto", size: 16))
                            .lineSpacing(24)
                            .foregroundColor(Color(red: 0.33, green: 0.30, blue: 0.37))
                            .offset(x: 0, y: 0)
                        Text("2024-04-09 14:55:34")
                            .font(Font.custom("Roboto", size: 12))
                            .foregroundColor(Color(red: 0.78, green: 0.77, blue: 0.80))
                            .offset(x: -119.97, y: -37.30)
                    }
                    .frame(width: 366.07, height: 90.67)
                    .offset(x: -38.97, y: 64.70)
                    
                    
                    ZStack() {
                        Text("Your application has been sent.")
                            .font(Font.custom("Roboto", size: 16))
                            .lineSpacing(24)
                            .foregroundColor(Color(red: 0.33, green: 0.30, blue: 0.37))
                            .offset(x: -63, y: 0)
                        Text("2024-04-09 13:55:34")
                            .font(Font.custom("Roboto", size: 12))
                            .foregroundColor(Color(red: 0.78, green: 0.77, blue: 0.80))
                            .offset(x: -119.97, y: -37.30)
                    }
                    .frame(width: 338.27, height: 90.67)
                    .offset(x: -38.97, y: 155.37)
                    
                    
                    ZStack() {
                        ZStack() {
                            Image("Profile_2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                            .frame(width: 97.47, height: 97.56)
                            .offset(x: -14.21, y: -44.91)
                        Text("SubDonald")
                            .font(Font.custom("Roboto", size: 20))
                            .foregroundColor(.white)
                            .offset(x: -14.21, y: 42.67)
                        ZStack() {
                            ZStack() {
                                Image("Profile_4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            }
                                .frame(width: 13.79, height: 13.60)
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 13.79, height: 13.60)
                        .offset(x: 56.32, y: 40.52)
                        
                        
                        ZStack() {
                            ZStack() {
                                Image("Profile_3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            }
                                .frame(width: 13.79, height: 13.60)
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 13.79, height: 13.60)
                        .offset(x: -45, y: 85.50)
                        
                        
                        Text("Rochester")
                            .font(Font.custom("Roboto", size: 12))
                            .foregroundColor(.white)
                            .offset(x: -2, y: 85.50)
                    }
                    .frame(width: 126.43, height: 187.37)
                    .offset(x: -15.72, y: -233.43)
                }
                .frame(width: 635.23, height: 948.07)
                .offset(x: 29.93, y: -8.03)
            }
            .frame(width: 430, height: 932)
            .offset(x: 0, y: 0)
            
            
            
            ZStack() {
                ZStack() {
                    Image("Background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 430, height: 105.50)
                .offset(x: 0, y: 0)
                
                
                ZStack() {
                    Text("Profile")
                        .font(Font.custom("Roboto", size: 10))
                        .foregroundColor(Color(red: 0.55, green: 0.36, blue: 1))
                        .offset(x: 0, y: 15.50)
                    ZStack() {
                        ZStack() {
                            Image("Profile_light")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                        .frame(width: 20.77, height: 10.34)
                        .offset(x: 0, y: 0)
                    }
                    .frame(width: 20.77, height: 23.31)
                    .offset(x: 0.56, y: -11.64)
                }
                .frame(width: 37.65, height: 46.58)
                .offset(x: 170.82, y: 0)
                
                
                ZStack() {
                    Text("Messgae")
                        .font(Font.custom("Roboto", size: 10))
                        .foregroundColor(Color(red: 0.41, green: 0.38, blue: 0.45))
                        .offset(x: 0, y: 15.50)
                    ZStack() {
                        ZStack() {
                            Image("Message")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                        .frame(width: 23.37, height: 23.37)
                        .offset(x: 0, y: 5)
                    }
                    .frame(width: 23.37, height: 23.37)
                    .offset(x: 1.06, y: -15.82)
                }
                .frame(width: 41, height: 55)
                .offset(x: 92.50, y: 0)
                
                
                ZStack() {
                    Text("Stop")
                        .font(Font.custom("Roboto", size: 10))
                        .foregroundColor(Color(red: 0.41, green: 0.38, blue: 0.45))
                        .offset(x: 0, y: 15.50)
                    ZStack() {
                        ZStack() {
                            Image("Stop")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                        .frame(width: 23.37, height: 23.38)
                        .offset(x: 0, y: 0)
                    }
                    .frame(width: 23.37, height: 23.38)
                    .offset(x: -0.20, y: -11.39)
                }
                .frame(width: 35.05, height: 46.15)
                .offset(x: -172.47, y: 0)
                
                
                ZStack() {
                    Image("Request")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 68.80, height: 68.80)
                .offset(x: 0.40, y: -9.35)
                
                
                ZStack() {
                    Text("Route")
                        .font(Font.custom("Roboto", size: 10))
                        .foregroundColor(Color(red: 0.41, green: 0.38, blue: 0.45))
                        .offset(x: 0, y: 15.50)
                    ZStack() {
                        ZStack() {
                            Image("Route")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                        .frame(width: 21.84, height: 21.60)
                        .offset(x: -0.05, y: -0.07)
                    }
                    .frame(width: 22, height: 22)
                    .offset(x: 0.05, y: -11)
                }
                .frame(width: 40.33, height: 44)
                .offset(x: -93.84, y: 0)
                
                
            }
            .frame(width: 430, height: 105.50)
            .offset(x: 0, y: 413.75)
            Ellipse()
                .foregroundColor(.clear)
                .frame(width: 49, height: 46)
                .offset(x: -179.50, y: -278)
        }
        .frame(width: 430, height: 932)
        .background(.white);
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
