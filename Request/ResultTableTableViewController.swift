//
//  ResultTableTableViewController.swift
//  Request
//
//  Created by Anna on 23.06.17.
//  Copyright © 2017 Anna. All rights reserved.
//

import UIKit

class ResultTableTableViewController: UITableViewController {
    
    var resultsArray = [RequestResult]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self-resizing cell
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 200

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resultsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = Bundle.main.loadNibNamed("CustomCell", owner: self, options: nil)?.first as! CustomCell
        
        cell.descriptionLabel.text = resultsArray[indexPath.row].titleText
        cell.thumbnailImage.image = #imageLiteral(resourceName: "DefaultImage") // "DefaultImage.jpg"

       

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
}
