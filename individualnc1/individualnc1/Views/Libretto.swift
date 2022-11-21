//
//  Libretto.swift
//  individualnc1
//
//  Created by Michele D'Ambra on 21/11/22.
//

import SwiftUI

struct Libretto: View {
    
    @State private var showGreeting = true
    var body: some View {
        Toggle("testo prova", isOn: $showGreeting)
    }
}

struct Libretto_Previews: PreviewProvider {
    static var previews: some View {
        Libretto()
    }
}
