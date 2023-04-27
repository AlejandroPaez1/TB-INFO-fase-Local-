//
//  pregunta2.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct pregunta2: View {
    var body: some View {
        
 
            VStack()
            {
   
                Text("¿Sufre de fiebre por las tardes? ")
                    .font(.largeTitle)
                

                    Image("preg2")
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
                        )                        .frame(width: 780, height:250)
                        .cornerRadius(50)
                    
                    HStack(spacing: 70)
                    {
                        Button()
                        {
                            print("Dato almacenado segunda pregunta")
                        }label: {
                            NavigationLink("Si", destination: pregunta_2_1())
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
                            print("Dato No segunda pregunta")
                        }label: {
                            NavigationLink("No", destination: pregunta_2_1())
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
            .navigationTitle("Pregunta 2")
     

    }
}

struct pregunta2_Previews: PreviewProvider {
    static var previews: some View {
        pregunta2()
    }
}
