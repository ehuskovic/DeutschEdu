//
//  HorizontalListView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 11/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct HorizontalListView: View {
    @State var color: String
    @State var level: Level
    @State var textStyle: Font

    var body: some View {
        ZStack {
            Circle()
                .frame(width: 140, height: 135)
                .foregroundColor(Color(UIColor(named: color) ?? .orange))
                .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
            
            VStack{
                Text(level.topic)
                    .foregroundColor(.white).font(self.textStyle)
                Text(level.levelText)
                    .foregroundColor(.white).font(.body)
            }
        }.padding()
    }
}


