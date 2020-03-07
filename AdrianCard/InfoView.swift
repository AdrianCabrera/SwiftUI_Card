//
//  InfoView.swift
//  AdrianCard
//
//  Created by Adrian Cabrera on 07/03/2020.
//  Copyright © 2020 Adrian Cabrera. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text:String
    let imageName:String
    var iconColor:Color = .green
    var textColor:Color = .black
    var height:CGFloat = 50.0
    var cornerRadius:CGFloat = 20.0
    var rectangleColor:Color = .white

    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(rectangleColor)
            .frame(height: height)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(iconColor)
                    Text(text)
                        .foregroundColor(textColor)
                }
        ).padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello!", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
