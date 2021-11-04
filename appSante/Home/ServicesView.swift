//
//  ServicesView.swift
//  appSante
//
//  Created by Tom on 04/11/2021.
//

import SwiftUI

struct ServicesView: View {

    let Carres: Array<CarreLogo> = [
        CarreLogo(id: 1, logo: "☎️", nom: "consultations"),
        CarreLogo(id: 2, logo: "💊", nom: "médicaments"),
        CarreLogo(id: 3, logo: "🔬", nom: "laboratoires"),
        CarreLogo(id: 4, logo: "👨‍⚕️", nom: "médecins")
    ]

    let fond: Color = Color.hexToColor(hex: "#F3F5F6")

    var body: some View {
        VStack {
            HStack {
                Text("Services")
                    .bold()
                    .font(.system(size: 20))
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< Carres.count) {carre in
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(fond)
                            VStack {
                                Text(Carres[carre].logo)
                                    .font(.system(size: 35))
                                Spacer()
                                Text(Carres[carre].nom.capitalized)
                                    .bold()
                                    .font(.system(size: 18))
                            }.padding(.vertical)
                        }
                        .frame(width: 140, height: 100)
                    }
                }
            }
        }
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}

struct CarreLogo: Hashable {
    var id: Int

    var logo: String
    var nom: String
}
