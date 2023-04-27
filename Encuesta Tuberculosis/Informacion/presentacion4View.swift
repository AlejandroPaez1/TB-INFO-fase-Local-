//
//  PresentacionView.swift
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct presentacion4View: View {


    var body: some View {
        
//        ScrollView(.vertical){
            VStack(alignment:.center){
                //Spacer() // Agregar Spacer para empujar la imagen hacia arriba
                
                ZStack{
                    //headerBackground()
                    Image("infopul4")
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
                    Text("¿Cuál es la solución?")
                        .modifier(Titulo())

                    
                    Text("Los exámenes de laboratorio y el tratamiento contra la tuberculosis están en cualquier centro de salud y son gratuitos.")
                        .modifier(Parrafo())

                    Text("Si tienes tuberculosis latente, tu médico podría recomendarte un tratamiento con medicamentos si presentas riesgos altos de tener tuberculosis activa. Para la tuberculosis activa, debes tomar antibióticos por lo menos por seis a nueve meses.")
                        .modifier(Parrafo())

                    Text("Los medicamentos exactos y la duración del tratamiento dependen de tu edad, estado general de salud, posible resistencia a los medicamentos y dónde se encuentra la infección en tu cuerpo.")
                        .modifier(Parrafo())

                }
            }
            .edgesIgnoringSafeArea(.all) // Ignorar la Safe Area para llenar la pantalla
            

        }
    }
//}





struct presentacion4View_Previews: PreviewProvider {
    static var previews: some View {
        presentacion4View()
    }
}


