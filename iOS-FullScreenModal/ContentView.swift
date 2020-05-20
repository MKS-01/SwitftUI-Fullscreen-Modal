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
        ZStack {
            NavigationView {
                VStack {
                    Button(action: {
                        self.isPresented.toggle()

                    }, label: {
                        Text("show modal")
                       })
                }.navigationBarTitle("Standard")
                    .sheet(isPresented: $isPresented, content: {
                        Button(action: {
                            self.isPresented.toggle()
                        }, label: {
                            Text("Dismiss")
                           })
                       })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
