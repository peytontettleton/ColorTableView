//
//  ColorTableViewController.swift
//  ColorTableView
//
//  Created by Peyton Tettleton on 6/28/19.
//  Copyright © 2019 Peyton Tettleton. All rights reserved.
//

import UIKit

class ColorTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var colors = [Colors(name: "Red", uiColor: UIColor.red),
                  Colors(name: "Orange", uiColor: UIColor.orange),
                  Colors(name: "Yellow", uiColor: UIColor.yellow),
                  Colors(name: "Green", uiColor: UIColor.green),
                  Colors(name: "Blue", uiColor: UIColor.blue),
                  Colors(name: "Purple", uiColor: UIColor.purple),
                  Colors(name: "Brown", uiColor: UIColor.brown)]
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return colors.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row{
            destination.colors = colors[row]
        }
    }

}
