//
//  PresentacionView.swift
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct presentacion5View: View {


    var body: some View {
        
//        ScrollView(.vertical){
            VStack(alignment:.center){
                //Spacer() // Agregar Spacer para empujar la imagen hacia arriba
                
                ZStack{
                    //headerBackground()
                    Image("infopul5")
                        .resizable()
                        .cornerRadius(50)
                    //                           .frame(width: 1150, height: 270+54)
                        .frame(minWidth: 780, idealWidth: 1100, maxWidth: 780, minHeight: 378, idealHeight: 900, maxHeight: 900, alignment: .bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal)
 
                    
                }
                .frame(height: 300)
                //.padding(.horizontal, 20)
                
                //Spacer() // Agregar Spacer para empujar el contenido hacia abajo
                VStack{
                    Text("¿Qué hacer si estás en contacto con una persona con tuberculosis?")
                        .modifier(Titulo())

                    Text("Si usted ha estado cerca de una persona con enferma de tuberculosis, debe ir al médico o a su departamento de salud local para que le hagan pruebas. Existen dos pruebas para detectar la infección por tuberculosis: una prueba en la piel y una prueba de sangre para detectar la tuberculosis.")
                      .modifier(Parrafo())
                      .padding(.bottom, 100)



                    
                    NavigationLink("Iniciar encuesta", destination: pregunta1())
                        .padding(.horizontal, 50.0)
                        .padding(.vertical, 35)
                        .font(.title)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .padding(.bottom, 100)
                    
                }
            }
            .edgesIgnoringSafeArea(.all) // Ignorar la Safe Area para llenar la pantalla
            

        }
    }
//}





struct presentacion5View_Previews: PreviewProvider {
    static var previews: some View {
        presentacion5View()
    }
}


