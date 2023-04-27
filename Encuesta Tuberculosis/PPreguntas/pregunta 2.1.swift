//
//  pregunta 2.1.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct pregunta_2_1: View {
    var body: some View {
        
        VStack()
        {
            Text("¿Tiene flemas con sangre?")
                .font(.largeTitle)
            
            VStack(spacing: 250)
            {
                Image("preg2_1")
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
                        print("Dato almacenado 2.1 pregunta")
                    }label: {
                        NavigationLink("Si", destination: pregunta3())
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
                        print("Dato No 2.1 pregunta")
                    }label: {
                        NavigationLink("No", destination: pregunta3())
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
        .navigationTitle("Pregunta 3")
        
    }
}

struct pregunta_2_1_Previews: PreviewProvider {
    static var previews: some View {
        pregunta_2_1()
    }
}
