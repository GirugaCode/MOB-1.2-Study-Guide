//
//  ViewController.swift
//  MOB 1.2 Cheat Sheet
//
//  Created by Ryan Nguyen on 12/8/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    // Links the table view
    @IBOutlet weak var tableView: UITableView!
    
    private var option: [Option]!
    var segueIdentifiers = ["autolayoutsegue", "stackviewsegue", "collectionviewsegue", "tableviewsegue", "mapkitsegue"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Implements the delegate and dataSource into the view
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.DataAccess.getLearningOptions().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "OptionCell", for: indexPath) as? OptionCell {
            let option = DataService.DataAccess.getLearningOptions()[indexPath.row]
            cell.updateOptionCell(with: option)
            return cell
        } else {
            return OptionCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifiers[indexPath.row], sender: self)
    }

}
