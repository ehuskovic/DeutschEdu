//
//  ContentView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.

//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var minionsViewModel: LevelsViewModel = LevelsViewModel()
    @State var vokabular: Vokabular = Vokabular(imageName: "bread", wordDe: "brot", wordEng: "bread", sentanceExample: "Ich esse Brot.")
    @State var number: Number = Number(imageName: "null", base: "", connector: "", sufix: "")
    @State var verbInfo: VerbInfo = VerbInfo(tenseHeader: "text", tenseText: "text", weakVerb: "text", strongVerb: "text", weakVerbCaption: "text", strongVerbCaption: "text")
    @State var show = false
    
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.gray]
    }
    var body: some View {
        
        NavigationView{
            ScrollView{
                Text("DeutschEdu").font(.title).foregroundColor(Color(UIColor(named: "pinkorange") ?? .green)).fontWeight(.bold)
                Image("welcome")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("Hey there!").font(.headline).foregroundColor(Color(UIColor(named: "pinkorange") ?? .green)).fontWeight(.bold)
                Text("DeutschEdu is an app for anyone that wants to learn german. You can choose levels btween beginning, intermediate and advanced. You will be provided with grammar description, vocabulary and also you can test your knowledge here. This app is perfect for all generations that have desire to learn german or refresh knowledge about german.").foregroundColor(.gray).font(.body).padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(minionsViewModel.levels, id: \.self) { level in
                            NavigationLink(destination: {
                                VStack{
                                    if level.topic.contains("A1") {
                                        A1View (verben: self.verbInfo, vokabular: self.vokabular, number: self.number)
                                    } else if level.topic.contains("A2") {
                                        A2View(verbInfo: self.verbInfo)
                                    } else if level.topic.contains("B1") {
                                        B1View()
                                    } else if level.topic.contains("B2") {
                                        B2View()
                                    } else if level.topic.contains("C1") {
                                        C1View()
                                    }
                                }
                            }()) {                                
                                HorizontalListView(color: level.color, level: level, textStyle: .largeTitle)
                                
                            }
                        }
                    }
                }
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
