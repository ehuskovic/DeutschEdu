//
//  NebensatzeView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 27/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct NebensatzeView: View {
    @ObservedObject private var verbViewModel: VerbsViewModel = VerbsViewModel()
    
    var body: some View {
        ScrollView{
            ForEach(verbViewModel.clausesSentances, id: \.self) { clauses in
                VStack{
                    Text(clauses.connective).font(.system(size: 27)).foregroundColor(Color(UIColor(named: "darkerPink") ?? .yellow))
                    Text(clauses.usage).font(.body).foregroundColor(.gray)
                    HStack{
                        Text(clauses.connective).foregroundColor(Color(UIColor(named: "darkerPink") ?? .yellow))
                        Text(clauses.firstSentance)
                        Text(clauses.verb).foregroundColor(Color(UIColor(named: "greenColor") ?? .yellow))
                        Text(clauses.secondSentance)
                    }
                }
            }
            
            ForEach(verbViewModel.clausesSentancesTwo, id: \.self) { clauses in
                VStack{
                    Text(clauses.connective).font(.system(size: 27)).foregroundColor(Color(UIColor(named: "darkerPink") ?? .yellow))
                    Text(clauses.usage).font(.body).foregroundColor(.gray)
                    HStack{
                        Text(clauses.firstSentance)
                        Text(clauses.connective).foregroundColor(Color(UIColor(named: "darkerPink") ?? .yellow))
                        Text(clauses.secondSentance)
                        Text(clauses.verb).foregroundColor(Color(UIColor(named: "greenColor") ?? .yellow))
                    }
                }
            }
        }.padding()
            .navigationBarTitle("Nebensätze", displayMode: .inline)
    }
}
