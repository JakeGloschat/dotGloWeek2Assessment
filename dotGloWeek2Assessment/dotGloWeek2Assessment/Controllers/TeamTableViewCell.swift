//
//  TeamTableViewCell.swift
//  dotGloWeek2Assessment
//
//  Created by Jake Gloschat on 2/10/23.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var playerCountLabel: UILabel!
    @IBOutlet weak var teamRankingLabel: UILabel!
    
    // MARK: - Methods
    func updateViews(team: Team) {
        teamNameLabel.text = team.name
        playerCountLabel.text = String("Player Count: \(team.playerCount)")
        teamRankingLabel.text = String("# \(team.rank)")
    }
}
