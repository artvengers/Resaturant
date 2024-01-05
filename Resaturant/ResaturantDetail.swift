//
//  ResaturantDetail.swift
//  Resaturant
//
//  Created by Phunsup S. on 28/12/2566 BE.
//

import SwiftUI

struct ResaturantDetail: View {
    let resaturant : RestaurantModel
    var body: some View {
        VStack{
            MapView(resaturant: resaturant)
                .edgesIgnoringSafeArea(.top) // ให้ชิบขอบด้านบน
                .frame(height: 250)
            CircleImage(resaturant: resaturant)
                .offset(y: -130) // เลื่อนไปทับMap
                .padding(.bottom,-130)
            DetailContent(resaturant: resaturant)
            Spacer()
        }
    }
}

#Preview {
    ResaturantDetail(resaturant: RestaurantModel.all()[0])
}
