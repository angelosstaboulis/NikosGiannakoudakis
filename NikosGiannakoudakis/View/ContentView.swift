//
//  ContentView.swift
//  NikosGiannakoudakis
//
//  Created by Angelos Staboulis on 4/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            SwiftUIProfile().tabItem {
                Image("profile")
                Text("Προφιλ")
            }
            SwiftUISkills().tabItem {
                Image("skills")
                Text("Υπηρεσίες")
            }
            SwiftUIWork().tabItem {
                Image("web")
                Text("Εργα")
            }
            SwiftUICV().tabItem {
                Image("resume")
                Text("Βιογραφικό")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
