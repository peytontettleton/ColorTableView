//
//  ColorDetailViewController.swift
//  ColorTableView
//
//  Created by Peyton Tettleton on 7/5/19.
//  Copyright © 2019 Peyton Tettleton. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    
    var colors: Colors?
    
    @IBOutlet weak var colornameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colornameLabel.text = colors?.name
        
        self.view.backgroundColor = colors?.uiColor
        
        self.title = colors?.name
        
        // Do any additional setup after loading the view.
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
