//
//  NummerView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 30/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct NummerView: View {
    @ObservedObject private var numbersViewModel: NumberViewModel = NumberViewModel()
    public var number: Number
    
    var body: some View {
        VStack{
            List{
                      ForEach(numbersViewModel.numbers, id: \.self) { number in
                          HStack{
                              Image(number.imageName).resizable()
                                  .frame(width: 100, height: 100)
                            Spacer()
                            Group{
                                Text(number.base).foregroundColor(Color(UIColor(named: "darkerPink") ?? .red)) + Text(number.connector).foregroundColor(Color(UIColor(named: "purple") ?? .red)) + Text(number.sufix).foregroundColor(Color(UIColor(named: "greenColor") ?? .red))
                            }.font(.title)
                            Spacer()
                          }.background(
                              RoundedRectangle(cornerRadius: 12)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(UIColor(named: "numbersBackground") ?? .yellow))
                                  
                          )
                      }
                  }
        }.navigationBarTitle("Nummer")
        
    }
}
