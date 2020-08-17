//
//  MountList.swift
//  Aplikasi Info Gunung
//
//  Created by abdullah irianda on 07/06/20.
//  Copyright © 2020 GROWDEV. All rights reserved.
//

import SwiftUI

struct MountList: View {
    var mounts = [
        Mount(id: 0, mountPhoto: "RINJANI", mountName: "Gunung Rinjani", mountHeight: "3726 m", mountType: "Stratovolcano", mountLocation: "Nusa Tenggara Barat"),
        Mount(id: 1, mountPhoto: "PANGRANGO", mountName: "Gunung Pangrango", mountHeight: "3019 m", mountType: "Stratovolcano", mountLocation: "Jawa Barat"),
        Mount(id: 2, mountPhoto: "MERBABU", mountName: "Gunung Merbabu", mountHeight: "3145 m", mountType: "Stratovolcano", mountLocation: "Jawa Tengah"),
        Mount(id: 3, mountPhoto: "SLAMET", mountName: "Gunung Slamet", mountHeight: "3428 m", mountType: "Stratovolcano", mountLocation: "Jawa Tengah"),
        Mount(id: 4, mountPhoto: "SUMBING", mountName: "Gunung Sumbing", mountHeight: "3371 m", mountType: "Stratovolcano", mountLocation: "Jawa Tengah"),
        Mount(id: 5, mountPhoto: "SINDORO", mountName: "Gunung Sindoro", mountHeight: "3136 m", mountType: "Stratovolcano", mountLocation: "Jawa Tengah"),
        Mount(id: 6, mountPhoto: "MERAPI", mountName: "Gunung Merapi", mountHeight: "2930 m", mountType: "Gunung Berapi Kerucut", mountLocation: "Yogyakarta"),
        Mount(id: 7, mountPhoto: "BROMO", mountName: "Gunung Bromo", mountHeight: "2329 m", mountType: "Stratovolcano", mountLocation: "Jawa Timur"),
        Mount(id: 8, mountPhoto: "KELUD", mountName: "Gunung Kelud", mountHeight: "1731 m", mountType: "Stratovolcano", mountLocation: "Jawa Timur"),
        Mount(id: 9, mountPhoto: "SUMERU", mountName: "Gunung Semeru", mountHeight: "3676 m", mountType: "Stratovolcano", mountLocation: "Jawa Timur")
    ]
    
    var body: some View {
        NavigationView{
            List(mounts){ mount in
                NavigationLink(destination: MountDetail(mount: mount)){
                    HStack{
                        Image(mount.mountPhoto)
                            .resizable()
                            .frame(width: 48.0, height: 48.0)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 2)).padding(.trailing, 16)
                        
                        VStack(alignment: .leading){
                            Text(mount.mountName).font(.system(size: 20)).bold()
                            Text(mount.mountLocation).font(.system(size: 18))
                        }
                    }.padding(.vertical, 8)
                }
            }.navigationBarTitle(Text("Daftar Gunung"))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
}


struct MountList_Previews: PreviewProvider {
    static var previews: some View {
        MountList()
    }
}
