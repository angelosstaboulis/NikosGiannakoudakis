//
//  SwiftUIProfile.swift
//  NikosGiannakoudakis
//
//  Created by Angelos Staboulis on 4/8/23.
//

import SwiftUI

struct SwiftUIProfile: View {
    var title = "Νικος Γιαννακουδάκης"
    var subtitle = "Πολιτικός Μηχανικός"
    var message =
    """
    Το Τεχνικό Γραφείο «Νίκος Γιαννακουδάκης» , στη Γλυφάδα, ξεκίνησε τη λειτουργία του το 2000, με ιδρυτή τον πολιτικό μηχανικό Νίκο Γιαννακουδάκη.
    Συνιδρυτής σε αυτό το εγχείρημα υπήρξε, ο επί σειρά ετών εργολάβος οικοδομών, Στέλιος Γεωργιλάς.
    """.trimmingCharacters(in: .whitespaces)
    var body: some View {
        ScrollView{
            VStack{
                Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                Text(subtitle).font(.title).foregroundColor(.white)
                Image("nikos").resizable().frame(width: 150.0, height: 150.0, alignment: .center)
                    .cornerRadius(84.0)
                ScrollView(.horizontal){
                    Text(message).frame(width: 400.0, height: 200.0, alignment: .center)
                        .foregroundColor(.white)
                        .position(x: 205, y: 65)
                    HStack{
                            Image("facebook").resizable().frame(width: 50,height:45).onTapGesture {
                                UIApplication.shared.open(URL(string: "https://www.facebook.com/nikosgiannakoudakis.enginnering")!)
                            }
                            Image("twitter").resizable().frame(width: 50,height:45).onTapGesture {
                                UIApplication.shared.open(URL(string: "https://twitter.com/nikgiannak")!)
                            }
                            Image("instagram").resizable().frame(width: 50,height:45).onTapGesture {
                                UIApplication.shared.open(URL(string: "https://www.instagram.com/mixanikos_en_drasei/")!)
                            }
                            Image("messenger").resizable().frame(width: 50,height:45).onTapGesture {
                                UIApplication.shared.open(URL(string: "https://m.me/nikosgiannakoudakis.enginnering")!)
                            }
                    }.position(x: 205, y: 35)
                }
                
                
            }.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height - 30, alignment: .top)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
        }
    }
}

struct SwiftUIProfile_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIProfile()
    }
}
