//
//  finalParticipacion.swift
//  Hackaton
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct finalParticipacion: View {
    
    @State var nombre: String = ""
    @State var edad: String = ""
    @State var domicilio: String = ""
    @State var telefono: String = ""
    @State  var show = false
    
    var body: some View {
        NavigationView{
            ZStack()
            {
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
                
                VStack()
                {
                    Text("¡Gracias por completar la encuesta!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Text("Inserte los datos de la persona que presenta los síntomas previamente expuestos  a continuación para que los profesionales en la salud  analicen los resultados:")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    VStack()
                    {
                        TextField("Nombre completo", text: $nombre)
                            .keyboardType(.default)
                            .disableAutocorrection(true)
                            .padding(20)
                            .font(.headline)
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .padding(.horizontal, 100)
                            .padding(.top, 40)
                        
                        
                        TextField("Edad", text: $edad)
                            .keyboardType(.default)
                            .disableAutocorrection(true)
                            .padding(20)
                            .font(.headline)
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .padding(.horizontal, 100)
                            .padding(.top, 40)
                        
                        TextField("Domicilio", text: $domicilio)
                            .keyboardType(.default)
                            .disableAutocorrection(true)
                            .padding(20)
                            .font(.headline)
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .padding(.horizontal, 100)
                            .padding(.top, 40)
                        
                        TextField("Telefono", text: $telefono)
                            .keyboardType(.namePhonePad)
                            .disableAutocorrection(true)
                            .padding(20)
                            .font(.headline)
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .padding(.horizontal, 100)
                            .padding(.top, 40)
                        
                        Button()
                        {
                            
                            if (telefono.isEmpty && nombre.isEmpty && edad.isEmpty && domicilio.isEmpty) {
                                print("esta vacio")
                            }else
                            {
                                show.toggle()
                            }
                            
                        }label: {
                            Text("Guardar")
                                .font(.title.bold())
                                .frame(width: 150, height: 50)
                                .foregroundColor(.white)
                                .padding()
                                .background(.green)
                                .cornerRadius(35)
                        }.sheet(isPresented: $show){
                            ventanaModal(nombre: nombre, edad: edad, direccion: domicilio, telefono: telefono)
                        }
                        .padding(100)
                        
                    }
                    
                }
                
            }
            
        }.navigationBarBackButtonHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct finalParticipacion_Previews: PreviewProvider {
    static var previews: some View {
        finalParticipacion(nombre: "", edad: "", domicilio: "", telefono: "", show: true)
    }
}
