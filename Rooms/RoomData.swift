//
//  RoomData.swift
//  Rooms
//
//  Created by kitano on 2019/11/25.
//  Copyright © 2019 ktnydi. All rights reserved.
//

import SwiftUI

struct Room: Identifiable {
    let id = UUID()
    let name: String
    let capacity: Int
    let imageName: String
}

var rooms: [Room] = [
    Room(name: "Room1", capacity: 10, imageName: "Room1"),
    Room(name: "Room2", capacity: 15, imageName: "Room2"),
    Room(name: "Room3", capacity: 20, imageName: "Room3"),
    Room(name: "Room4", capacity: 10, imageName: "Room4"),
    Room(name: "Room5", capacity: 30, imageName: "Room5"),
]
