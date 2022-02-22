//
//  Message.swift
//  ChatApp
//
//  Created by Uzair Riaz on 21/02/2022.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
