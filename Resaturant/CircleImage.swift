//
//  CircleImage.swift
//  Resaturant
//
//  Created by Phunsup S. on 28/12/2566 BE.
//

import SwiftUI

struct CircleImage: View {
    let resaturant : RestaurantModel
    var body: some View {
        Image(resaturant.ImageName)
            .resizable()
            .scaledToFill()
            .frame(width: 200,height: 200,alignment: .center)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    CircleImage(resaturant: RestaurantModel.all()[0])
}
