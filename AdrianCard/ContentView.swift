//
//  ContentView.swift
//  AdrianCard
//
//  Created by Adrian Cabrera on 07/03/2020.
//  Copyright © 2020 Adrian Cabrera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red:0.20, green:0.60, blue:0.86, alpha:1.0))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("AdrianCabrera")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Adrian Cabrera")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text(/*@START_MENU_TOKEN@*/"iOS Developer"/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                Divider()
                InfoView(text: "+34 123 45 67 89", imageName: "phone.fill",iconColor: .orange, textColor: .blue)
                InfoView(text: "myemail@gmail.com", imageName: "envelope.fill",iconColor: .orange, textColor: .blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice.init(rawValue: "iPhone Xʀ"))
    }
}
