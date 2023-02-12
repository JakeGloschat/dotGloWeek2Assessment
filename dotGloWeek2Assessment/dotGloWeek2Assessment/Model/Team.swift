//
//  Team.swift
//  dotGloWeek2Assessment
//
//  Created by Jake Gloschat on 2/12/23.
//

import Foundation

class Team {
    var name: String
    var rank: Int
    var playerCount: Int
    var lastUpdated: Date
    let uuid: UUID = UUID ()
    
    init(name: String, rank: Int, playerCount: Int, lastUpdated: Date = Date() ) {
        self.name = name
        self.rank = rank
        self.playerCount = playerCount
        self.lastUpdated = lastUpdated
    }
}

// MARK: - Extensions
extension Team: Equatable {
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
