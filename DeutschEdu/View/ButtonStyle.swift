//
//  ButtonStyle.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 28/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct ButtonStyle : ViewModifier {
    var color: String = "Blue5"
    
    func body(content: Content) -> some View {
        
        content
            .background(Rectangle().fill(Color(UIColor(named: color) ?? .red)))
            .foregroundColor(.white)
            .padding(.bottom, 50)
    }
}
