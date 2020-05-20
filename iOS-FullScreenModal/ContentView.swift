//
//  ContentView.swift
//  iOS-FullScreenModal
//
//  Created by MKS on 20/05/20.
//  Copyright © 2020 MKS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                Button(action: {
                    self.isPresented.toggle()

                }, label:{
                 Text("show standard modal")
                })
            }.navigationBarTitle("Standard")
                .sheet(isPresented: $isPresented, content:{
                    Text("Here is my modal")
                })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
