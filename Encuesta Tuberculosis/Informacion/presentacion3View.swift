
import SwiftUI

struct presentacion3View: View {


    var body: some View {
        
//        ScrollView(.vertical){
        VStack(alignment:.center){
                //Spacer() // Agregar Spacer para empujar la imagen hacia arriba
                
                ZStack{
                    //headerBackground()
                    Image("infopul3")
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
                    Text("¿Cómo saber si es una tuberculosis?")
                        .modifier(Titulo())

                    
                    Text("Existen dos pruebas para ayudar a detectar la infección de tuberculosis: una prueba cutánea de la tuberculina y una prueba de sangre para detectar la tuberculosis.")
                        .modifier(Parrafo())


                    Text("Si usted presenta uno de los síntomas nombrados a continuación es recomendable asistir a un medico para su respectivo tratamiento:")
                        .modifier(Parrafo())
                   
                    VStack(alignment: .leading) {
                        HStack{
                            Image(systemName: "arrow.right.circle.fill")
                                .multilineTextAlignment(.trailing)
                                .padding([.bottom, .trailing], -20.0)
                                .foregroundColor(.blue)
                            Text("Tos con flema")
                            
                                .modifier(Parrafo())
                        }
                        
                        
                        HStack{
                            Image(systemName: "arrow.right.circle.fill")
                                .multilineTextAlignment(.trailing)
                                .padding([.bottom, .trailing], -20.0)
                                .foregroundColor(.blue)
                            Text("Flema con sangre")
                            
                                .modifier(Parrafo())
                        }
                        HStack{
                            Image(systemName: "arrow.right.circle.fill")
                                .multilineTextAlignment(.trailing)
                                .padding([.bottom, .trailing], -20.0)
                                .foregroundColor(.blue)
                            Text("Perdida de peso")
                            
                                .modifier(Parrafo())
                        }
                        
                        HStack{
                            Image(systemName: "arrow.right.circle.fill")
                                .multilineTextAlignment(.trailing)
                                .padding([.bottom, .trailing], -20.0)
                                .foregroundColor(.blue)
                            Text("Sudor por la noche")
                            
                                .modifier(Parrafo())
                        }
                        
                        HStack{
                            Image(systemName: "arrow.right.circle.fill")
                                .multilineTextAlignment(.trailing)
                                .padding([.bottom, .trailing], -20.0)
                                .foregroundColor(.blue)
                            Text("Debilidad o fatiga")
                            
                                .modifier(Parrafo())
                        }
                    }
                    .padding(.leading)
                }
            }
            .edgesIgnoringSafeArea(.all) // Ignorar la Safe Area para llenar la pantalla
            

        }
    }
//}





struct presentacion3View_Previews: PreviewProvider {
    static var previews: some View {
        presentacion3View()
    }
}

