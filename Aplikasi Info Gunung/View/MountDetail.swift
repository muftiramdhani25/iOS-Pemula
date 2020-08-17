//
//  MountDetail.swift
//  Aplikasi Info Gunung
//
//  Created by abdullah irianda on 07/06/20.
//  Copyright © 2020 GROWDEV. All rights reserved.
//

import SwiftUI

struct MountDetail: View {
    let mount: Mount
    var body: some View {
        ScrollView{
            VStack{
                Image(mount.mountPhoto)
                    .resizable()
                    .frame(width: 150.0,
                           height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                HStack{
                    Text("Nama Gunung :")
                    Spacer()
                    Text(mount.mountName)
                }.padding(.top, 16).padding(.horizontal, 16)
                
                HStack{
                    Text("Tinggi Gunung :")
                    Spacer()
                    Text(mount.mountHeight)
                }.padding(.top, 16).padding(.horizontal, 16)
                
                HStack{
                    Text("Tioe Gunung :")
                    Spacer()
                    Text(mount.mountType)
                }.padding(.top, 16).padding(.horizontal, 16)
                
                HStack{
                    Text("Lokasi Gunung :")
                    Spacer()
                    Text(mount.mountLocation)
                }.padding(.top, 16).padding(.horizontal, 16)
                
                Spacer()
                
            }
        }
    }
    
}



struct MountDetail_Previews: PreviewProvider {
    static var previews: some View {
        MountDetail(mount: Mount(id: 0, mountPhoto: "RINJANI", mountName: "Gunung Rinjani", mountHeight: "3726 m", mountType: "Stratovolcano", mountLocation: "Nusa Tenggara Barat"))
    }
}
