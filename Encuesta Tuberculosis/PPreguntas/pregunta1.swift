//
//  ContentView.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct pregunta1: View {
    var body: some View {
        
        NavigationView()
        {
            VStack()
            {
//                TabView {
//                    pregunta2()
//                    pregunta3()
//                    pregunta4()
//                }.tabViewStyle(PageTabViewStyle())
//
                
                                Text("¿En tu casa hay alguien que tiene tos con flemas? ")
                                    .font(.largeTitle)
                
                                VStack(spacing: 250)
                                {
                                    Image("preg1")
                                }.padding(.top, 100.0)
                
                                ZStack()
                                {
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
                                        .frame(width: 780, height:250)
                                        .cornerRadius(50)
                
                                    HStack(spacing: 70)
                                    {
                                        Button()
                                        {
                                            print("Dato guardado")
                                        }label: {
                                            NavigationLink("Si", destination: pregunta2())
                                                .font(.title.bold())
                                                .frame(width: 150, height: 50)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(.green)
                                                .cornerRadius(35)
                
                                       }
                                        .padding(10)
                
                
                                      Button()
                                        {
                                            print("Dato igual guardado")
                                        }label: {
                                            NavigationLink("No", destination: ContentView())
                                                .font(.title.bold())
                                                .frame(width: 150, height: 50)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(.green)
                                                .cornerRadius(35)
                                       }
                                        .padding(10)
                                    }
                
                
                                }
                
                            }
                            .navigationTitle("Pregunta 1")
                        }
                        .navigationViewStyle(StackNavigationViewStyle())
                        .navigationBarBackButtonHidden(true) // Ocultar el botón de regreso
  
    }
}
struct pregunta1_Previews: PreviewProvider {
    static var previews: some View {
        pregunta1()
    }
}
