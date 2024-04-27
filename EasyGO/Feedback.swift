//
//  Feedback.swift
//  EasyGO
//
//  Created by Andy Yu on 4/11/24.
//

import SwiftUI



struct Feedback: View {
    
    @State public var isMenuView = false
    @State private var isName: String = ""
    @State private var isEmail: String = ""
    @State private var isFeedback: String = ""
    @State private var wordCount: Int = 0
    
    
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
                    .frame(width: 430, height: 617)
                    .background(
                        Image("Request_1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .cornerRadius(25)
                    .offset(x: 0, y: 150)
                
                
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 51, height: 51)
                    .background(
                        Image("Survey")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .offset(x: 175.50, y: -237.50)
                
                
                
                Text("Feedback")
                    .font(Font.custom("Roboto", size: 24))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -123)
                
                
                Text("Name")
                    .font(Font.custom("Roboto", size: 20))
                    .foregroundColor(.black)
                    .offset(x: -180.50, y: -65)
                
                
                
                TextField("Text...", text: $isName)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .offset(x: -30, y: -15)
                    .padding(.horizontal, 40)
                    .multilineTextAlignment(.leading)
                
                
                
                Text("Email")
                    .font(Font.custom("Roboto", size: 20))
                    .foregroundColor(.black)
                    .offset(x: -183, y: 35)
                
                
                TextField("Text...", text: $isEmail)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .offset(x: -30, y: 85)
                    .padding(.horizontal, 40)
                    .multilineTextAlignment(.leading)
                
                
                Text("Feedback")
                    .font(Font.custom("Roboto", size: 20))
                    .foregroundColor(.black)
                    .offset(x: -165, y: 145)
                
                
                TextEditor(text: $isFeedback)
                    .background(Color.gray.opacity(0.2))
                    .multilineTextAlignment(.leading)
                    .cornerRadius(8)
                    .autocapitalization(.words)
                    .disableAutocorrection(true)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 290)
                    .offset(x: -5, y: 295)
                    .onChange(of: isFeedback) { _ in
                        let words = isFeedback.split { $0 == " " || $0.isNewline }
                        self.wordCount = words.count
                    }

                
                Text("\(wordCount)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.trailing)
                    .padding()
                    .offset(x: 180, y: 146)
                
                
                Button(action: {
                    
                }) {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 30, height: 60)
                        .background(
                            Image("Send")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        )
                }
                .offset(x: 180, y: 395)
                
                
                
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
                
                
                
                ZStack() {
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
                .padding(EdgeInsets(top: 11, leading: 0, bottom: 11, trailing: 0))
                .frame(width: 43, height: 44)
                .offset(x: -187.50, y: -330)
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
                
                
            Button(action: {
                    // 在这里添加按钮被点击时的操作
                }) {
                    ZStack {
                        Text("Profile")
                            .font(Font.custom("Roboto", size: 10))
                            .foregroundColor(Color(red: 0.41, green: 0.38, blue: 0.45))
                            .offset(x: 0, y: 26.50)
                            .frame(width: 100, height: 30)
                    
                        
                        
                        ZStack {
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

                
                
                Button(action: {
                    // 在这里添加按钮被点击时的操作
                }) {
                    ZStack {
                        Text("Message")
                            .font(Font.custom("Roboto", size: 10))
                            .foregroundColor(Color(red: 0.41, green: 0.38, blue: 0.45))
                            .offset(x: 0, y: 30.50)
                            .frame(width: 100, height: 30)
                        
                        ZStack {
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

                
                
                Button(action: {
                    // 在这里添加按钮被点击时的操作
                }) {
                    ZStack {
                        Text("Stop")
                            .font(Font.custom("Roboto", size: 10))
                            .foregroundColor(Color(red: 0.55, green: 0.36, blue: 1))
                            .offset(x: 0, y: 30.50)
                        
                        ZStack {
                            Image("Stop_light")
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

struct Feedback_Previews: PreviewProvider {
    static var previews: some View {
        Feedback()
    }
}



