//
//  ContentView.swift
//  Aplikasi Info Gunung
//
//  Created by abdullah irianda on 07/06/20.
//  Copyright © 2020 GROWDEV. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MountList()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Mounts")
            }
            Profile()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("About")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
