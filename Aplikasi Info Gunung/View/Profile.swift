//
//  Profile.swift
//  Aplikasi Info Gunung
//
//  Created by abdullah irianda on 07/06/20.
//  Copyright © 2020 GROWDEV. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            Image("profile")
            .resizable()
                .frame(width: 150.0, height: 150.0)
            .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            
            Text("Muhammad Mufti Ramdhani").font(.title).padding(.top, 16)
            Text("mufti1453@gmail.com").font(.body).padding(.top, 16)
        }
    }
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
