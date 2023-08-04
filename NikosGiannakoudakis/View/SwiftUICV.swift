//
//  SwiftUICV.swift
//  NikosGiannakoudakis
//
//  Created by Angelos Staboulis on 4/8/23.
//

import SwiftUI

struct SwiftUICV: View {
    var title = "Νικος Γιαννακουδάκης"
    var subtitle = "Πολιτικός Μηχανικός"
    var message =
    """
  Το Τεχνικό Γραφείο «Νίκος Γιαννακουδάκης» , στη Γλυφάδα, ξεκίνησε τη λειτουργία του το 2000, με ιδρυτή τον πολιτικό μηχανικό Νίκο Γιαννακουδάκη. Συνιδρυτής σε αυτό το εγχείρημα υπήρξε, ο επί σειρά ετών εργολάβος οικοδομών, Στέλιος Γεωργιλάς.Στο δυναμικό του προστέθηκαν το 2003, η Μένια Γιαννακουδάκη, πτυχιούχος οικονομικών και η Γεωργία Γεωργιλά, πτυχιούχος ψυχολόγος.\n Ο Νίκος αποφοίτησε από το Δημοκρίτειο Πανεπιστήμιο Θράκης το 1998 και έκτοτε διαθέτει στο ενεργητικό του πάνω από 35
ανεγέρσεις πολυκατοικιών και πλήθος ανακαινίσεων, κυρίως διαμερισμάτων.
Έχει νομιμοποιήσει περισσότερα από 350 κτίρια, ενώ ως ενεργειακός επιθεωρητής, έχει επιθεωρήσει περισσότερα από 1.000 διαμερίσματα και καταστήματα.
Σήμερα, στο ανακαινισμένο πλέον γραφείο του στη Γλυφάδα, υπό τη γενική εποπτεία, οργάνωση και διεύθυνσή του παρέχονται υπηρεσίες υψηλού επιπέδου, βασισμένες στην άρτια επιστημονική του κατάρτιση .
Η τεχνογνωσία και η εμπειρία του εγγυώνται ένα άρτιο αποτέλεσμα.
"""
    var body: some View {
            VStack{
                Text(title).font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                Text(subtitle).font(.title).foregroundColor(.white)
                Text("Βιογραφικό").font(.title).foregroundColor(Color(.sRGB, red: 0/255, green:128/255,blue: 128/255, opacity: 1))
                Image("nikos").resizable().frame(width: 120.0, height: 120.0, alignment: .center)
                    .cornerRadius(54.0)
                ScrollView(.horizontal){
                    HStack{
                        Text(message).frame(width: 400.0, height: 600.0, alignment: .leading)
                            .foregroundColor(.white)
                            .font(.system(size: 13.0))
                    }.frame(width: 450.0, height: 330.0, alignment: .leading)
                }
                
            }.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height - 90, alignment: .top)
                .background(Color(.sRGB, red: 32/255, green: 55/255, blue: 72/255, opacity: 1.0))
    }
}

struct SwiftUICV_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICV()
    }
}
