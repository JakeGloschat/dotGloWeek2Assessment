//
//  TeamController.swift
//  dotGloWeek2Assessment
//
//  Created by Jake Gloschat on 2/12/23.
//

import Foundation

class TeamController {
    
    // MARK: - Properties
    static let shared = TeamController ()
    var teams: [Team] = []
    
    // MARK: - Functions
    func createTeam(name: String, rank: Int, playerCount: Int) {
        let team = Team(name: name, rank: rank, playerCount: playerCount)
        teams.append(team)
    }
    
    func updateTeam(team: Team, name: String, rank: Int, playerCount: Int) {
        team.name = name
        team.rank = rank
        team.playerCount = playerCount
        
    }
    
    func deleteTeam(team: Team) {
        guard let index = teams.firstIndex(of: team) else { return }
        teams.remove(at: index)
    }
}
