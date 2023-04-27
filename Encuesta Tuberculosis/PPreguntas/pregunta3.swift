//
//  pregunta3.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct pregunta3: View {
    var body: some View {
        
        
            VStack()
            {
                Text("¿Sufre de sudor por las noches? ")
                    .font(.largeTitle)
   
                    Image("preg3")
                    .resizable()
                    .frame(minWidth: 1500, idealWidth: 300, maxWidth: 200, minHeight: 150, idealHeight: 700, maxHeight: 750, alignment: .center)
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
                            print("Dato almacenado tercera pregunta")
                        }label: {
                            NavigationLink("Si", destination: pregunta4())
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
                            print("Dato No tercera pregunta")
                        }label: {
                            NavigationLink("No", destination: pregunta4())
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
            .navigationTitle("Pregunta 4")
        }
      
    
}

struct pregunta3_Previews: PreviewProvider {
    static var previews: some View {
        pregunta3()
    }
}
