//
//  AdjectiveView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 30/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

import SwiftUI

struct AdjectiveView: View {
    @ObservedObject private var adjectiveViewModel: AdjectivesViewModel = AdjectivesViewModel()
    
    var body: some View {
     
        List{
            ForEach(adjectiveViewModel.adjectives, id: \.self) { adjective in
                HStack{
                    Image(adjective.image)
                        .resizable()
                        .frame(width: 70, height: 70)
                        .padding()
                    Spacer(minLength: 5)
                    VStack{
                        Text(adjective.name).font(.system(size: 23)).foregroundColor(.white)
                        Text(adjective.adjective).font(.body).foregroundColor(.yellow)
                    }
                    
                    VStack{
                        Text(adjective.nameOpp).font(.system(size: 23)).foregroundColor(.white)
                        Text(adjective.adjectiveOpp).font(.body).foregroundColor(.yellow)
                    }
                    Spacer(minLength: 5)
                    Image(adjective.imageOpp)
                        .resizable()
                        .frame(width: 70, height: 70)
                    .padding()
                }.background(Rectangle().foregroundColor(Color(UIColor(named: "purple") ?? .purple)))
            }
        }.navigationBarTitle("Adjectives")
    }
}
