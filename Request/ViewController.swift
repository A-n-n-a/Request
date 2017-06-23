//
//  ViewController.swift
//  Request
//
//  Created by Anna on 23.06.17.
//  Copyright © 2017 Anna. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    

    
    var resultsArray = [RequestResult]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }



    @IBAction func getButton(_ sender: UIButton) {
        
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
        
        resultsArray = parseData(url: url!)

        
    }
            
    func parseData(url: URL) -> [RequestResult] {
        
        var resultsArray = [RequestResult]()
        
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! [[String: AnyObject]]
            //print(json)
            
//            for i in json {
//                let singleResult = RequestResult(dictionary: i)
//                resultsArray.append(singleResult)
//            }
            
           // var n = 0
            for i in json {
                let singleResult = RequestResult(dictionary: i)
                resultsArray.append(singleResult)
//                n += 1
//                if n == 3 {
//                    break
//                }
            }
            
            print(resultsArray.count)
            
        }
        catch {
            print(error)
        }
        return resultsArray
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let destViewController = segue.destination as! ResultTableTableViewController
        
//        let selectedRowIndex = self.tableView.indexPathForSelectedRow
//        selectedRow = self.tableView.cellForRow(at: selectedRowIndex!)!
        
        destViewController.resultsArray = self.resultsArray
        
        
        

    }

}

