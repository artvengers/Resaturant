//
//  RestaruantCell.swift
//  Resaturant
//
//  Created by Phunsup S. on 26/12/2566 BE.
//

import SwiftUI

struct RestaruantCell : View {
    
    // Parameter
    
    let restaurant: RestaurantModel
    
    var body: some View{
        HStack{
            Image(restaurant.ImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100,height: 100,alignment: .center)
                .clipShape(Rectangle())
                .cornerRadius(12)
            VStack(alignment: .leading){
                Text(restaurant.name)
                    .font(.headline)
                Text(restaurant.location)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(restaurant.price)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    RestaruantCell(restaurant: RestaurantModel.all()[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .environment(\.sizeCategory, .extraExtraLarge)
}
