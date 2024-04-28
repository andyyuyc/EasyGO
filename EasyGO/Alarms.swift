//
//  Alarms.swift
//  EasyGO
//
//  Created by Andy Yu on 4/11/24.
//

import SwiftUI
import UserNotifications

struct Alarms: View {
    
    @State private var selectedTime = Date()
    @State public var isContentView = false
    
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
                    .frame(width: 430, height: 419)
                    .background(
                        Image("Alarms_1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .cornerRadius(21)
                    .offset(x: 0, y: 300)
                
                
                Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 51, height: 51)
                        .background(
                            Image("Survey")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        )
                        .offset(x: 175.50, y: -237.50)
                
                
                
                DatePicker("Set Alarm", selection: $selectedTime, displayedComponents: .hourAndMinute)
                                    .datePickerStyle(WheelDatePickerStyle())
                                    .labelsHidden()
                                    .frame(width: 200, height: 100)
                                    .offset(x: -30, y: 400)
                
//                Button(action: {
//
//                }) {
//                    Text("Set")
//                        .font(Font.custom("SF Pro", size: 20))
//                        .lineSpacing(22)
//                        .foregroundColor(Color(red: 1, green: 0, blue: 0))
//                        .offset(x: 153.50, y: 400)
//                }
                
                
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
                    HStack(alignment: .top, spacing: 10) {
                        Image("Menu")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                }
                .padding(EdgeInsets(top: 11, leading: 0, bottom: 11, trailing: 0))
                .frame(width: 43, height: 44)
                .offset(x: -187.50, y: -340)
                
                
                
                ZStack() {
                    
                    NavigationLink(isActive: $isContentView) {
                        ContentView()
                    } label: {
                    }
                    
                    Button(action: {
                        isContentView = true
                    }) {
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 60, height: 60)
                            .background(
                                Image("Exit")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .fullScreenCover(isPresented: $isContentView, content: {
                                        ContentView()
                                        
                                    })
                            );
                        
                    }
                        
                        
                    }
                    .offset(x: 180, y: 130)
                
                ZStack() {
                    Button(action: {
//                        requestPrermission()
                        scheduleNotification(at: self.selectedTime)
                    }) {
                        Text("Set")
                            .font(Font.custom("SF Pro", size: 20))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 1, green: 0, blue: 0))
                    }
                    .offset(x: 153.50, y: 400)
                }
            }
            .frame(width: 430, height: 846)
            .offset(x: 0, y: -53)
        }
    }
    
    func requestPrermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                print("Notifications enabled!")
            } else if let error {
                print(error.localizedDescription)
            }
        }
    }
    func scheduleNotification(at date: Date) {
//        let content = UNMutableNotificationContent()
//        content.title = "EasyGo"
//        content.body = "Your shuttle is coming soon!"
//        content.sound = UNNotificationSound.default
//        
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.hour, .minute], from: date)
//        
//        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
//        
//        let request = UNNotificationRequest(identifier: "alarmNotification", content: content, trigger: trigger)
//        
//        UNUserNotificationCenter.current().add(request) { error in
//            if let error = error {
//                print("Error scheduling notification: \(error)")
//            } else {
//                print("Notification scheduled successfully")
//            }
//        }
        
        let content = UNMutableNotificationContent()
        content.title = "EasyGo"
        content.subtitle = "Your shuttle is coming soon!"
        content.sound = UNNotificationSound.default

        // show this notification five seconds from now
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: (5), repeats: false)

        // choose a random identifier
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("Notification scheduled")
                }
            }
    }
}


struct Alarms_Previews: PreviewProvider {
    static var previews: some View {
        Alarms()
    }
}
