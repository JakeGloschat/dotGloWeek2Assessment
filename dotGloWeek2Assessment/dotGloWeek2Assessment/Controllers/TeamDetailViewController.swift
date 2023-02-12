//
//  TeamDetailViewController.swift
//  dotGloWeek2Assessment
//
//  Created by Jake Gloschat on 2/10/23.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var teamRankingTextField: UITextField!
    @IBOutlet weak var playerCountTextField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        designDeleteButton()
        designClearButton()
        
    }
    
    // MARK: - Properties
    var team: Team?
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = teamNameTextField.text, !name.isEmpty,
              let rank = teamRankingTextField.text, !rank.isEmpty,
              let playerCount = playerCountTextField.text, !playerCount.isEmpty else { return }
        
        let unwrappedRank = Int(rank) ?? 0
        let unwrappedPlayerCount = Int(playerCount) ?? 0
        
        if let team = team {
            //update
            TeamController.shared.updateTeam(team: team, name: name, rank: unwrappedRank, playerCount: unwrappedPlayerCount)
        } else {
            //create
            TeamController.shared.createTeam(name: name, rank: unwrappedRank, playerCount: unwrappedPlayerCount)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
      deleteTeam()
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Helper
    func updateViews() {
        guard let team = team else { return }
        teamNameTextField.text = team.name
        teamRankingTextField.text = String(team.rank)
        playerCountTextField.text = String(team.playerCount)
    }
    
    func resetView() {
        teamNameTextField.text = ""
        teamRankingTextField.text = ""
        playerCountTextField.text = ""
    }
    
    func deleteTeam() {
        guard let teamToBeDeleted = team else { return }
        TeamController.shared.deleteTeam(team: teamToBeDeleted)
    }
    
    
    func designDeleteButton () {
        deleteButton.isHidden = team == nil ? true : false
        deleteButton.layer.borderWidth = 1
        deleteButton.layer.backgroundColor = UIColor.red.cgColor
        deleteButton.layer.cornerRadius = deleteButton.frame.height / 2
    }
    
    func designClearButton () {
        clearButton.layer.borderWidth = 1
        clearButton.layer.backgroundColor = UIColor.gray.cgColor
        clearButton.layer.cornerRadius = clearButton.frame.height / 2
    }
    
}
