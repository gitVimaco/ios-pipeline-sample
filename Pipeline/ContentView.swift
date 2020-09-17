//
//  ContentView.swift
//  Pipeline
//
//  Created by Víctor Márquez on 16/09/2020.
//  Copyright © 2020 Víctor Márquez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            VStack {
                Text("Pipeline 1")
                    .font(.title)
                Image("pipeline1")
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
            }
            .tabItem {
                VStack {
                    Image("first")
                    Text("Pipeline 1")
                }
            }
            .tag(0)
            VStack {
                Text("Pipeline 2")
                    .font(.title)
                Image("pipeline2")
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
            }
            .tabItem {
                VStack {
                    Image("second")
                    Text("Pipeline 2")
                }
            }
            .tag(1)
            VStack {
                Text("Pipeline 3")
                    .font(.title)
                Image("pipeline3")
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
            }
            .tabItem {
                VStack {
                    Image("third")
                    Text("Pipeline 3")
                }
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
