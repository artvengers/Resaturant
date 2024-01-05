//
//  ContentView.swift
//  Resaturant
//
//  Created by Phunsup S. on 26/12/2566 BE.
//

import SwiftUI

struct ContentView: View {
    let restaurantList = RestaurantModel.all()

    var body: some View {
        NavigationView {
            List {
                ForEach(restaurantList.indices, id: \.self) { index in
                    NavigationLink(destination: ResaturantDetail(resaturant: restaurantList[index])){
                        RestaruantCell(restaurant: restaurantList[index])
                    }
                }
            }
            .navigationTitle("Resturant")
        }
    }
}


// Class

#Preview {
    ContentView()
}
