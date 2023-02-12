//
//  SportsteamTableViewController.swift
//  dotGloWeek2Assessment
//
//  Created by Jake Gloschat on 2/10/23.
//

import UIKit

class SportsteamTableViewController: UITableViewController {

    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TeamController.shared.teams.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as? TeamTableViewCell else { return UITableViewCell() }

        let team = TeamController.shared.teams[indexPath.row]
        cell.updateViews(team: team)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let team = TeamController.shared.teams[indexPath.row]
            TeamController.shared.deleteTeam(team: team)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //IIDO
        if segue.identifier == "toDetailVC" {
            if let indexPath = tableView.indexPathForSelectedRow,
               let destinationVC = segue.destination as? TeamDetailViewController {
                let team = TeamController.shared.teams[indexPath.row]
                destinationVC.team = team
            }
        }
    }
}
