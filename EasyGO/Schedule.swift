//
//  Schedule.swift
//  EasyGO
//
//  Created by Andy Yu on 4/11/24.
//

import SwiftUI

struct Schedule: View {
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
                            Image("Schedule_1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        )
                        .cornerRadius(21)
                        .offset(x: 0, y: 300)
                
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
            
            
        }
    }
}


struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}



