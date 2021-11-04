//
//  HomeView.swift
//  appSante
//
//  Created by Tom on 03/11/2021.
//

import SwiftUI

struct HomeView: View {

    var orange: Color = Color.hexToColor(hex: "#FA5805")
    var noir: Color = Color.hexToColor(hex: "15131b")
    var fond: Color = Color.hexToColor(hex: "#F3F5F6")

    var body: some View {
        VStack {
            HomeTopView()
                .padding(.top, 60)
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(orange)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white.opacity(0.9))
                HStack {
                    HStack {
                        Text("🩸")
                            .font(.system(size: 30))
                        Text("Votre test sanguin est prêt !")
                            .bold()
                            .font(.system(size: 18))
                            .foregroundColor(orange)
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.system(size: 20))
                        .foregroundColor(orange)
                        .padding(.trailing, 20)

                }

            }.frame(height: UIScreen.main.bounds.height / 15)

            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(fond)
                HStack {
                    Text("Cherchez des Docteurs, labos, etc...")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 25))
                        .foregroundColor(noir)
                        .padding(.leading, 50)
                }

            }.frame(height: UIScreen.main.bounds.height / 15)
            ServicesView()
            RendezVousView()

            Spacer()
        }.frame(width: UIScreen.main.bounds.width / 1.1)
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

