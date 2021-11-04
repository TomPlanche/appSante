//
//  HomeTopView.swift
//  appSante
//
//  Created by Tom on 03/11/2021.
//

import SwiftUI

struct HomeTopView: View {

    let noir: Color = Color.hexToColor(hex: "15131b")
    let fond: Color = Color.hexToColor(hex: "#F3F5F6")

    var body: some View {
        HStack {
            Text("Hey, Tom 🤠")
                .font(.system(size: 30, weight: .semibold, design: .default))
                .foregroundColor(noir)
            Spacer()
            ZStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(fond)

                Image(systemName: "bell")
                    .font(.system(size: 30))
                    .foregroundColor(noir)
            }.badge(1)
        }
        .padding(.horizontal, 20)
    }
}

struct HomeTopViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeTopView()
    }
}
