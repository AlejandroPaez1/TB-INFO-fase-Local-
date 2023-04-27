
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct PresentacionView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
      

        ScrollView(.vertical){
            VStack{
                ZStack{
                    Rectangle()
                        .fill(
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
                        )
                    
//                        .frame(width: 780, height: 1000)
                        .frame(minWidth: 780, idealWidth: 1100, maxWidth: 780, minHeight: 780, idealHeight: 780, maxHeight: 1100, alignment: .center)
                        .cornerRadius(50)
                        .padding(.horizontal, 14.0)
                    
                    Text("Dezlize hacia arriba")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .lineLimit(8)
                    
                }
                
                Spacer(minLength: 60)
                presentacion1View()
                    .padding(.bottom, 300.0)

                presentacion2View()
                    .padding(.bottom, 500.0)

                presentacion3View()
                    .padding(.bottom, 500.0)

                presentacion4View()
                    .padding(.bottom, 500.0)

                presentacion5View()

            }              .navigationBarBackButtonHidden(true) // Ocultar el botón de regreso
                .navigationBarItems(leading: backButton) // Agregar un botón personalizado
        }
 
        
    }
    var backButton: some View {
        Button(action: {
            // Acción al presionar el botón de regreso
            presentationMode.wrappedValue.dismiss()
            
        }) {

            Image(systemName: "arrow.backward")
                .foregroundColor(.blue) // Color del botón personalizado
            Text("regresar")
                .foregroundColor(.blue) // Color del botón personalizado

        }
    

    }
}

func dismiss1() {
    // Descartar la vista actual y volver al ContentView
    UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
}

struct PresentacionView_Previews: PreviewProvider {
    static var previews: some View {
        PresentacionView()
    }
}

