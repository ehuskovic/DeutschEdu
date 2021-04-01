//
//  HeaderCaptionStyleView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 09/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct HeaderCaptionStyleView: View {
    let textOne: String
    let textTwo: String
    
    var body: some View {
        VStack{
            Text(textOne).foregroundColor(Color(UIColor(named: "greenColor") ?? .orange)).font(.headline)
            Text(textTwo).font(.body).padding().fixedSize(horizontal: false, vertical: true).foregroundColor(.gray)
        }
    }
}

struct HeaderCaptionStyleView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCaptionStyleView(textOne: "", textTwo: "")
    }
}
