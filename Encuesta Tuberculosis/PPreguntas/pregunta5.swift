//
//  pregunta5.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.

import SwiftUI

struct pregunta5: View {
    var body: some View {
        
        
  
            VStack()
            {
                Text("¿La persona que cuenta con estos sintomas es?: ")
                    .font(.largeTitle)
                
                HStack()
                {
                    HStack()
                    {
                        Image("preg5-1")
                            .resizable()
                            .frame(width: 400, height: 250)
                    
                        Image("preg5-2")
                            .resizable()
                            .frame(width: 400, height: 250)
                        
                    }
                    
                }
                
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
                        .frame(width: 780, height:150)
                        .cornerRadius(50)
                    
                    
                    HStack(spacing: 150)
                    {
                        Button()
                        {
                            print("Dato familiar quinta pregunta")
                        }label: {
                            NavigationLink("familiar", destination: finalParticipacion())
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
                            print("Dato vecino pregunta")
                        }label: {
                            NavigationLink("Vecino", destination: finalParticipacion())
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
                 
                HStack()
                {
                    HStack()
                    {
                        Image("preg5-3")
                            .resizable()
                            .frame(width: 400, height: 250)
                    
                        Image("preg5-4")
                            .resizable()
                            .frame(width: 400, height: 250)
                        
                    }
                    
                }
                
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
                        .frame(width: 780, height:150)
                        .cornerRadius(50)
                    
                    HStack(spacing: 150)
                    {
                        
                        Button()
                        {
                            print("Dato compañero quinta pregunta")
                        }label: {
                            NavigationLink("Compañero", destination: finalParticipacion())
                                .font(.title.bold())
                                .frame(width: 175, height: 50)
                                .foregroundColor(.white)
                                .padding()
                                .background(.green)
                                .cornerRadius(35)
                            
                        }
                        .padding(10)
                        
                        
                        Button()
                        {
                            print("Dato otro quinta pregunta")
                        }label: {
                            NavigationLink("Otro", destination: finalParticipacion())
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
            .frame(minWidth: 1500, idealWidth: 300, maxWidth: 200, minHeight: 150, idealHeight: 700, maxHeight: 750, alignment: .center)
            .navigationTitle("Pregunta 6")

        
    }
}

struct pregunta5_Previews: PreviewProvider {
    static var previews: some View {
        pregunta5()
    }
}
