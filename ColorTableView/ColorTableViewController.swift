//
//  ColorTableViewController.swift
//  ColorTableView
//
//  Created by Peyton Tettleton on 6/28/19.
//  Copyright © 2019 Peyton Tettleton. All rights reserved.
//

import UIKit

class ColorTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["red","orange","yellow","green","blue","purple","brown"]
    
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
        
        cell.textLabel?.text = colors[indexPath.row]
        
        return cell
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
