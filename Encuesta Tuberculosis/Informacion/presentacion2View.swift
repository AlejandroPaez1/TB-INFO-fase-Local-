//
//  PresentacionView.swift
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct presentacion2View: View {


    var body: some View {
        
//        ScrollView(.vertical){
            VStack(alignment:.center){
                //Spacer() // Agregar Spacer para empujar la imagen hacia arriba
                
                ZStack{
                    //headerBackground()
                    Image("infopul2")
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
                    Text("¿Cómo se contagia?")
                        .modifier(Titulo())
                    
                    Text("Las bacterias de la tuberculosis se transmiten de una persona a otra por el aire. Estas bacterias se liberan al aire cuando una persona con enfermedad de tuberculosis de los pulmones o de la garganta tose, estornuda, habla o canta.")
                        .modifier(Parrafo())


                    Text("La forma más importante de evitar el contagio de la tuberculosis es que los pacientes con TBC se cubran la boca y la nariz al toser y que tomen todos los medicamentos para la TBC, según las indicaciones del médico.")
                        .modifier(Parrafo())

                }
            }
            .edgesIgnoringSafeArea(.all) // Ignorar la Safe Area para llenar la pantalla
            

        }
    }
//}





struct presentacion2View_Previews: PreviewProvider {
    static var previews: some View {
        presentacion2View()
    }
}


