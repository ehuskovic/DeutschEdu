//
//  DescriptionView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 09/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct DescriptionView: View {
    @State var verbInfo: VerbInfo
    let level: String
    
    var body: some View {
        VStack{
            Text(verbInfo.tenseHeader).foregroundColor(Color(UIColor(named: "greenColor") ?? .orange)).font(.largeTitle).padding()
            Image("education")
                .resizable()
                .frame(width: 300, height: 200)
            HStack{
                Image(systemName: "book").foregroundColor(.orange)
                Text(level).foregroundColor(.orange)
            }
            Text(verbInfo.tenseText).font(.body).padding().fixedSize(horizontal: false, vertical: true).foregroundColor(.gray)
            
        }
    }
}


