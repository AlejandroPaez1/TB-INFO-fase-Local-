//
//  splashScreenView.swift
//  Encuesta Tuberculosis
//
//  Created by ADMIN UNACH on 26/04/23.
//

//
//  splashScreen.swift
//  aplicacion3
//
//  Created by ADMIN UNACH on 19/04/23.


import SwiftUI

struct splashScreenView: View {
    @State public var isActive : Bool
    @State public var opacity = 0.5
    @State public var size = 0.8
    
    var body: some View {
        if isActive
        {
            ContentView()
            
        }else{
            
            VStack()
            {
                VStack()
                {
                    Spacer()
                    Image("logo")
                        .foregroundColor(.blue)
                    Text("Bienvenido Salud Tech")
                        .font(.headline)
                        .foregroundColor(.blue.opacity(0.80))
                    Spacer()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear
                {
                    withAnimation(.easeIn(duration: 1.0))
                    {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear
            {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5)
                {
                    withAnimation
                    {
                        self.isActive = true
                    }
                    
                }
            }

        }
        
        
    }
}

struct splashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        splashScreenView(isActive: Bool())
      
    
    }
}
