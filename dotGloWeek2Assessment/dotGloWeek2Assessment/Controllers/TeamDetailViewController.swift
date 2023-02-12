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
        
    }
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    @IBAction func clearButtonTapped(_ sender: Any) {
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
    }
    
    
}
