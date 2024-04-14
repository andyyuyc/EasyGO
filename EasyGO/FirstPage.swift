//
//  FirstPage.swift
//  EasyGO
//
//  Created by Andy Yu on 4/11/24.
//

import SwiftUI

struct FirstPage: View {
    
    @State public var isScheduleView = false
    @State public var isAlarmsView = false
    @State public var isMenuView = false
    
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
                
                
                NavigationLink(isActive: $isScheduleView) {
                    Schedule()
                } label: {
                }
    
                Button(action: {
                    isScheduleView = true
                }) {
    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 430, height: 287)
                        .background(
                            Image("FirstPage")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .fullScreenCover(isPresented: $isScheduleView, content: {
                                    Schedule()
    
                                })
                        );
    
                }
                .offset(x: 0, y: 363)
                
                
                
                
                
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
                .offset(x: 23.50, y: -330)
                
                
                
                
                HStack(spacing: 16) {
                    NavigationStack {
                        HStack(alignment: .top, spacing: 10) {
                            //                            NavigationLink(destination: Menu(), isActive: $isMenuView) { EmptyView()}.hidden().disabled(true)
                            
                            NavigationLink(isActive: $isMenuView) {
                                SelectMenu()
                            } label: {
                            }
                            
                            Button(action: {
                                
                                isMenuView = true
                            }) {
                                Image("Menu")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            }
                            .fullScreenCover(isPresented: $isMenuView, content: {
                                SelectMenu()
                                
                            })
                            
                            
                        }
                    }
                }
                .padding(EdgeInsets(top: 11, leading: 0, bottom: 11, trailing: 0))
                .frame(width: 43, height: 44)
                .offset(x: -187.50, y: -340)
                
                
                
                
                
            }
            .frame(width: 430, height: 846)
            .offset(x: 0, y: -53)
            
            
            ZStack() {
                NavigationLink(isActive: $isAlarmsView) {
                    Alarms()
                } label: {
                }
                
                Button(action: {
                    isAlarmsView = true
                }) {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 60, height: 60)
                        .background(
                            Image("AlarmButton")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .fullScreenCover(isPresented: $isAlarmsView, content: {
                                    ContentView()
                                    
                                })
                        );
                }
            }
            .offset(x: 0, y: 103)
            
            
        }

    }
}


struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}


