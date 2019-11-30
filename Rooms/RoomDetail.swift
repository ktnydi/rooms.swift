//
//  RoomDetail.swift
//  Rooms
//
//  Created by kitano on 2019/11/25.
//  Copyright © 2019 ktnydi. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    let room: Room
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Image(room.imageName)
                .resizable()
                .aspectRatio(1, contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation { self.zoomed = !self.zoomed }
                }
            
            if !self.zoomed {
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .navigationBarTitle(Text(room.name), displayMode: .inline)
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { RoomDetail(room: rooms[0]) }
            .previewDevice("iPhone 11 Pro Max")
    }
}
