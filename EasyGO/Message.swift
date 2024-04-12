//
//  Message.swift
//  EasyGO
//
//  Created by Andy Yu on 4/11/24.
//

import SwiftUI

struct Message: View {
    var body: some View {
        ZStack() {
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 430, height: 203)
                    .background(
                        Image("430x203")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 430, height: 738)
                    .background(
                        Image("430x846")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                
                Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 430, height: 426)
                        .background(
                            Image("Message_1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        )
                        .cornerRadius(25)
                        .offset(x: 0, y: 210)
                
                HStack(spacing: 0) {
                    Text("Search")
                        .font(Font.custom("SF Pro", size: 17))
                        .lineSpacing(22)
                        .foregroundColor(.white)
                }
                .padding(EdgeInsets(top: 7, leading: -150, bottom: 7, trailing: 8))
                .frame(width: 355, height: 36)
                .background(Color(red: 0.46, green: 0.46, blue: 0.50).opacity(0.24))
                .cornerRadius(10)
                .offset(x: 23.50, y: -340)
                HStack(spacing: 16) {
                    HStack(alignment: .top, spacing: 10) {
                        Image("Menu")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                }
                .padding(EdgeInsets(top: 11, leading: 0, bottom: 11, trailing: 0))
                .frame(width: 43, height: 44)
                .offset(x: -187.50, y: -340)
            }
            .frame(width: 430, height: 846)
            .offset(x: 0, y: -53)
            
            
            
            
            
            
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
                        .foregroundColor(Color(red: 0.41, green: 0.38, blue: 0.45))
                        .offset(x: 0, y: 15.50)
                    ZStack() {
                        ZStack() {
                            Image("Profile")
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
                        .foregroundColor(Color(red: 0.55, green: 0.36, blue: 1))
                        .offset(x: 0, y: 15.50)
                    ZStack() {
                        ZStack() {
                            Image("Message_light")
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

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message()
    }
}


