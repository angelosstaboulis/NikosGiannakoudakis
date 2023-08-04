//
//  SwiftUISkills.swift
//  NikosGiannakoudakis
//
//  Created by Angelos Staboulis on 4/8/23.
//

import SwiftUI

struct SwiftUISkills: View {
    var title = "Νίκος Γιαννακουδάκης"
    var subtitle = "Πολιτικός Μηχανικός"
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                    Text(subtitle).font(.title).foregroundColor(.white)
                    Image("user").resizable().frame(width: 120.0, height: 120.0, alignment: .center)
                        .cornerRadius(54.0)
                }.frame(width: 360, height: 100, alignment: .top)
                VStack{
                    Text("Υπηρεσίες").font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                }.frame(width: 360, height: 25, alignment: .center)
                Canvas{ context,size in
                    var adeies = Path()
                    adeies.addRect(CGRect(x:10, y: 10.0, width:UIScreen.main.bounds.width - 30, height: 50.0))
                    context.fill(adeies, with: .color(.blue))
                    context.drawLayer { ctx in
                        let textAdeies = Text("\tΑδειες - Βεβαιώσεις").foregroundColor(.white)
                        ctx.draw(textAdeies, at: CGPoint(x: (UIScreen.main.bounds.width / 2.0)-15, y: 35))
                       
                    }
                    var energeiaka = Path()
                    energeiaka.addRect(CGRect(x:10, y: 130.0, width:UIScreen.main.bounds.width - 30, height: 50.0))
                    context.fill(energeiaka, with: .color(.orange))
                    context.drawLayer { ctx in
                        let textEnergeiaka = Text("Ενεργειακά Πιστοποιητικά").foregroundColor(.white)
                        ctx.draw(textEnergeiaka, at: CGPoint(x: UIScreen.main.bounds.width / 2.0, y:160))
                    }
                    var epivlepsi = Path()
                    epivlepsi.addRect(CGRect(x:10, y: 250.0, width:UIScreen.main.bounds.width - 30, height: 50.0))
                    context.fill(epivlepsi, with: .color(.red))
                    context.drawLayer { ctx in
                        let textEpivlepsi = Text("Επίβλεψη Διαχείριση Εργων").foregroundColor(.white)
                        ctx.draw(textEpivlepsi, at: CGPoint(x: UIScreen.main.bounds.width / 2.0, y: 275))
                    }
                    var protasis = Path()
                    protasis.addRect(CGRect(x:10, y: 370.0, width:UIScreen.main.bounds.width - 30, height: 50.0))
                    context.fill(protasis, with: .color(.green))
                    context.drawLayer {ctx in
                        let textProtaseis = Text("Προτάσεις Λύσεις Ανακαινίσεις").foregroundColor(.white)
                        ctx.draw(textProtaseis, at: CGPoint(x: UIScreen.main.bounds.width / 2.0, y: 395))
                    }
                 
                }
            }.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height - 5, alignment: .bottom)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
        }
    }
}
