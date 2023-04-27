//
//  PantallaSigView.swift
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct PantallaSigView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color(.blue)
                .opacity(0)
                .background(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                Color(red: 27/255, green: 90/255, blue: 164/255),
                                Color(red: 59/255, green:167/255, blue: 255/255)
                                
                            ]
                        ),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea(edges: .all)
                )
                .ignoresSafeArea()
            
            VStack{
                Text("Encuesta")
                
                    .navigationBarBackButtonHidden(true) // Ocultar el botón de regreso
                    .navigationBarItems(leading: backButton) // Agregar un botón personalizado
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            
            
            
     
        }.background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        )
    }
    
    var backButton: some View {
        Button(action: {
            // Acción al presionar el botón de regreso
            presentationMode.wrappedValue.dismiss()
            
        }) {

            Image(systemName: "arrow.backward")
                .foregroundColor(.white) // Color del botón personalizado
            Text("regresar")
                .foregroundColor(.white) // Color del botón personalizado

        }
    

    }
}

func dismiss() {
    // Descartar la vista actual y volver al ContentView
    UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
}

struct PantallaSigView_Previews: PreviewProvider {
    static var previews: some View {
        PantallaSigView()
    }
}
