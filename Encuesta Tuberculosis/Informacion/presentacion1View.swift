//
//  PresentacionView.swift
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct presentacion1View: View {
   // @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    @Environment(\.verticalSizeClass) private var verticalSizeClass



    var body: some View {
        VStack(alignment:.center){
            ZStack{
                Image("infopul1")
                    .resizable()
                    .cornerRadius(50)
                //.frame(width: horizontalSizeClass == .compact ? 750 : 100,height: 378)
//                    .frame(width: 780, height: 378)
                    .frame(minWidth: 780, idealWidth: 1100, maxWidth: 780, minHeight: 378, idealHeight: 900, maxHeight: 900, alignment: .bottom)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.horizontal)

                
            }
            .frame(height: 300)
            
            VStack{


                Text("¿Qué es la tuberculosis?")
                    .modifier(Titulo())
                
                
                Text("La tuberculosis o TB es una enfermedad causada por una bacteria llamada Mycobacterium tuberculosis.")
                    .modifier(Parrafo())
                
                
                Text("Estas bacterias por lo general atacan a los pulmones, pero también pueden atacar otras partes del cuerpo, como los riñones, la columna vertebral y el cerebro.")
                    .modifier(Parrafo())
                
                
            }
        }
        .padding(.bottom, 25.0)
        .edgesIgnoringSafeArea(.all) // Ignorar la Safe Area para llenar la pantalla
        
        
    }
    }


struct Titulo: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: 65))
            .fontWeight(.semibold)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
            .padding(.top, 60.0)
    }
}

struct Parrafo: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
            .padding([.top, .leading, .trailing], 20.0)
    }
}

struct presentacion1View_Previews: PreviewProvider {
    static var previews: some View {
        presentacion1View()
    }
}
