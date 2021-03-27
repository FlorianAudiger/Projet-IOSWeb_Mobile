//
//  ZoneItem.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 26/03/2021.
//

import SwiftUI

struct ButtonGreen: View {
    
    var txt: String
    
    init(_ txt: String) {
        self.txt = txt
    }
    
    var body: some View {

            Text(txt)
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .frame(width: UIScreen.main.bounds.width-32, height: 60, alignment: .center)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .opacity(0.87)
        

    }
}

struct ButtonGreen_Previews: PreviewProvider {
    static var previews: some View {
        ButtonGreen("Lol")
    }
}
