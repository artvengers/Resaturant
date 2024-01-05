//
//  DetailContent.swift
//  Resaturant
//
//  Created by Phunsup S. on 28/12/2566 BE.
//

import SwiftUI

struct DetailContent: View {
    let resaturant : RestaurantModel
    var body: some View {
        VStack(alignment: .leading){
            Text(resaturant.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack{
                Text(resaturant.location)
                Spacer()
                Text("$$$")
                    .foregroundColor(.yellow)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }.padding()
    }
}

#Preview {
    DetailContent(resaturant: RestaurantModel.all()[0])
}
