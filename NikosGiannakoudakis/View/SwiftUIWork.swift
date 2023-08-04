//
//  SwiftUIWork.swift
//  NikosGiannakoudakis
//
//  Created by Angelos Staboulis on 4/8/23.
//

import SwiftUI

struct SwiftUIWork: View {
    @State var title = "Νίκος Γιαννακουδάκης"
    @State var subtitle = "Πολιτικός Μηχανικός"
    var body: some View {
        ScrollView{
            VStack{
                Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                Text(subtitle).font(.title).foregroundColor(.white)
                Image("nikos").resizable().frame(width: 150.0, height: 150.0, alignment: .center)
                    .cornerRadius(84.0)
                ScrollView(.horizontal){
                    HStack{
                            Image("img1").resizable().frame(width: 180, height: 180, alignment: .center)
                            Image("img2").resizable().frame(width: 180, height: 180, alignment: .center)
                            Image("img3").resizable().frame(width: 180, height: 180, alignment: .center)
                            Image("img4").resizable().frame(width: 180, height: 180, alignment: .center)
                    }.padding(50.0)
                    
                }
                
                
            }.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height - 30, alignment: .top)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
        }
    }
}

struct SwiftUIWork_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIWork()
    }
}
