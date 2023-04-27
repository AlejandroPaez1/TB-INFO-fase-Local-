//
//  pregunta4.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct pregunta4: View {
    var body: some View {
        
     
            VStack()
            {
                Text("¿Tiene pérdida repentina de peso? ")
                    .font(.largeTitle)
                
                VStack(spacing: 250)
                {
                    Image("preg4")
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
                            print("Dato almacenado cuarta pregunta")
                        }label: {
                            NavigationLink("Si", destination: pregunta5())
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
                            print("Dato No cuarta pregunta")
                        }label: {
                            NavigationLink("No", destination: pregunta5())
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
            .navigationTitle("Pregunta 5")
            
        
        
    }
}

struct pregunta4_Previews: PreviewProvider {
    static var previews: some View {
        pregunta4()
    }
}
