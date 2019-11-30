//
//  ContentView.swift
//  Rooms
//
//  Created by kitano on 2019/11/25.
//  Copyright © 2019 ktnydi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = RoomStore(rooms: rooms)
    
    var body: some View {
        NavigationView {
            List {
                Group {
                    Section {
                        Button(action: self.store.createRoom) {
                            HStack {
                                Text("Add Room")
                                Spacer()
                                Image(systemName: "plus")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    
                    Section {
                        ForEach(store.rooms) { room in
                            RoomCell(room: room)
                        }
                        .onDelete(perform: self.store.deleteRoom)
                        .onMove(perform: self.store.move)
                    }
                }
            }
            .navigationBarTitle("Rooms")
            .navigationBarItems(trailing: EditButton())
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: RoomStore(rooms: rooms))
            .previewDevice("iPhone 11 Pro Max")
    }
}

struct RoomCell: View {
    let room: Room
    
    var body: some View {
        NavigationLink(destination: RoomDetail(room: room)) {
            HStack {
                Image(room.imageName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(8)
                VStack(alignment: .leading) {
                    Text(room.name)
                    Text("\(room.capacity) people")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}
