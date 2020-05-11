//
//  ViewController.swift
//  teste
//
//  Created by Camila Cirne Pedrosa de Oliveira on 11/05/20.
//  Copyright © 2020 Camila Cirne Pedrosa de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
      let cellReuseIdentifier = "cell"
   
    @IBOutlet weak var tableView: UITableView!
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 1
    }
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!  TableViewCell

      
    
    cell.label.textLabel.text = "O lindo é lindo"
    

       return cell
   }
               
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
               tableView.delegate = self
               tableView.dataSource = self
        
    }
    
    
    @IBAction func play(_ sender: Any) {
        
        
    }
    
    
    
    @IBOutlet weak var playButton: UIButton!
    

}






