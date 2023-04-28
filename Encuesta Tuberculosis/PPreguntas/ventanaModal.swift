//
//  ventanaModal.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct ventanaModal: View {
    var nombre: String
    var edad: String
    var direccion: String
    var telefono: String
    @State private var isSecondWindowShowing = false
    @State private var isFullScreen = false
    
    var body: some View {
        
        
        VStack {
            Text("Registro guardado correctamente")
                .font(.largeTitle.bold())
            
            
            Button("Regresar al inicio") {
                isFullScreen = true
            }
            .font(.callout.bold())
            .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .padding()
            .background(.green)
            .cornerRadius(35)
            .fullScreenCover(isPresented: $isFullScreen) {
                ContentView()
            }
            
            
        }
    }
    
}


struct ventanaModal_Previews: PreviewProvider {
    static var previews: some View {
        ventanaModal(nombre: "", edad: "", direccion: "", telefono: "")
    }
}
