//
//  ContentView.swift
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var buttonColor = Color.blue // color inicial del botón
    
    var body: some View {
        NavigationView {
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
                
                VStack(alignment: .center){
                    Image("logoapp")
                        .resizable()
                        .frame(width: 370, height: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
//                    Text("TB INFO")
//                        .font(Font.system(size: 65).bold())
//                        .foregroundColor(Color.white)
//                        .multilineTextAlignment(.center)
                    
                    Image("logo")
                        .resizable()
                        .frame(width:370, height:370)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                        .shadow(color: .blue,
                                radius: 4,
                                x: 1,
                                y: 1 )
                    Text("Prevee el contagio de enfermedades realizando actividades que contribuyan a la derivacion de personas con síntomas a los diferentes centros de salud")
                        .font(Font.system(size: 24))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .lineLimit(8)
                        .padding(.horizontal, 210)
                    
                    
                    
                    
                    NavigationLink("Presentacion", destination: PresentacionView())
                        .modifier(Boton())
                    
                    NavigationLink("Encuesta ", destination: pregunta1())
                        .onTapGesture {
                            // Cambiar el color del botón al hacer clic
                            buttonColor = Color.white
                        }
                        .modifier(Boton())

                    
                }.padding(.bottom, 50.0)
                    
                    .toolbar{
                    HStack{
                        NavigationLink( destination: PantallaSigView()){
                            Text("Resultados")
                                .foregroundColor(.white)
                            Image(systemName: "newspaper.fill").foregroundColor(.white)
                        }
                        
                    }
                }
            }.navigationTitle("Inicio")
            
            
            
        }
            .accentColor(buttonColor) // establecer el color del botón de la barra de navegación
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarBackButtonHidden(true) // Ocultar el botón de regreso

        
    }
    
    
}

struct Boton: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 350, height: 50, alignment: .center)
            .background(Color.green)
            .font(Font.system(size: 30).bold())
        
            .foregroundColor(.white)
//            .padding(.horizontal, 60)
//            .padding(.vertical, 20)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 2)
            )
            .padding(.bottom, 20)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
