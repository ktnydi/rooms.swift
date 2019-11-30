//
//  RoomStore.swift
//  Rooms
//
//  Created by kitano on 2019/11/27.
//  Copyright © 2019 ktnydi. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    @Published var rooms: [Room]
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    func createRoom() {
        self.rooms.append(
            Room(name: "Room6", capacity: 20, imageName: "Room6")
        )
    }
    
    func deleteRoom(at offsets: IndexSet) {
        self.rooms.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        self.rooms.move(fromOffsets: source, toOffset: destination)
    }
}
