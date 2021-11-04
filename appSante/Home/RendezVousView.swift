//
//  RendezVous.swift
//  appSante
//
//  Created by Tom on 04/11/2021.
//

import SwiftUI

struct RendezVousView: View {

    let RendezVousListe: Array<RendezVousDocteur> = [
        RendezVousDocteur(
            id: 1,
            docteur:
                Docteur(
                    id: 1,
                    prefixe: "Dr",
                    nom: "Martin",
                    specialite: "cardiologue"
                ),
            dateRdv:
                Date(
                    id: 1,
                    jour: 15,
                    mois: 12,
                    annee: 2021
                ),
            horaire:
                Horaire(
                    id: 1,
                    heure: 14,
                    minutes: 30
                )
        ),
        RendezVousDocteur(
            id: 2,
            docteur:
                Docteur(
                    id: 2,
                    prefixe: "Pr",
                    nom: "Jaques",
                    specialite: "Radiologue"
                ),
            dateRdv:
                Date(
                    id: 2,
                    jour: 17,
                    mois: 12,
                    annee: 2021
                ),
            horaire:
                Horaire(
                    id: 1,
                    heure: 16,
                    minutes: 55
                )
        )
    ]

    let fond: Color = Color.hexToColor(hex: "#F3F5F6")
    
    var body: some View {
        VStack {
            HStack {
                Text("Rendez-Vous")
                    .bold()
                    .font(.system(size: 20))
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< RendezVousListe.count) {rdv in
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(fond)
                            HStack {
                                Image("doc\(rdv+1)")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(20)
                                    .frame(height: UIScreen.main.bounds.height / 8.5)
                                    .padding(.leading, 5)

                                VStack {
                                    HStack {
                                        Text("\(RendezVousListe[rdv].docteur.prefixe.capitalized). \(RendezVousListe[rdv].docteur.nom.capitalized)")
                                            .bold()
                                        .font(.system(size: 20))
                                        Spacer()
                                    }
                                    HStack {
                                        Text(RendezVousListe[rdv].docteur.specialite.capitalized)
                                            .font(.system(size: 15))
                                            .foregroundColor(.gray)
                                        Spacer()
                                    }
                                    HStack {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(width: UIScreen.main.bounds.width / 4)
                                            HStack {
                                                Image(systemName: "calendar")
                                                    .font(.system(size: 20))
                                                Text("\(RendezVousListe[rdv].dateRdv.jour) \(moisEnLettres(mois:RendezVousListe[rdv].dateRdv.mois))")
                                                    .font(.system(size: 15))

                                            }
                                            .foregroundColor(.white)
                                            .font(.system(size: 20))
                                        }
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(width: UIScreen.main.bounds.width / 4)
                                            HStack {
                                                Image(systemName: "deskclock")
                                                    .font(.system(size: 20))
                                                Text("\(RendezVousListe[rdv].horaire.heure):\(RendezVousListe[rdv].horaire.minutes)")
                                                    .font(.system(size: 15))
                                            }
                                            .foregroundColor(.white)
                                            .font(.system(size: 20))
                                        }

                                    }
                                    Spacer()
                                }.padding(.vertical)
                                Spacer()
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width / 1.2, height: UIScreen.main.bounds.height / 7)
                    }
                }
            }
        }
    }
}

struct RendezVousView_Previews: PreviewProvider {
    static var previews: some View {
        RendezVousView()
    }
}


struct Docteur: Hashable {
    var id: Int

    var prefixe: String
    var nom: String
    var specialite: String
}


struct RendezVousDocteur: Hashable {
    var id: Int

    var docteur: Docteur
    var dateRdv: Date
    var horaire: Horaire
}

struct Date: Hashable {
    var id: Int

    var jour: Int
    var mois: Int
    var annee: Int
}

struct Horaire: Hashable {
    var id: Int

    var heure: Int
    var minutes: Int
}

func moisEnLettres(mois: Int) -> String {

    var moisLettres: String

    switch mois {
        case 1:
            moisLettres = "Janv"
        case 2:
            moisLettres = "Fév"
        case 3:
            moisLettres = "Ma"
        case 4:
            moisLettres = "Avv"
        case 5:
            moisLettres = "Mai"
        case 6:
            moisLettres = "Juin"
        case 7:
            moisLettres = "Juil"
        case 8:
            moisLettres = "Août"
        case 9:
            moisLettres = "Sept"
        case 10:
            moisLettres = "Oct"
        case 11:
            moisLettres = "Nov"
        case 12:
            moisLettres = "Déc"
        default:
            moisLettres = "erreur."
    }

    return moisLettres
}
