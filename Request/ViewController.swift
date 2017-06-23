//
//  ViewController.swift
//  Request
//
//  Created by Anna on 23.06.17.
//  Copyright © 2017 Anna. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var albumID = Double()
    var id = Double()
    var titleText = String()
    var url = String()
    var thumbnail = String()
    
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
            
            for i in json {
                let singleResult = RequestResult(dictionary: i)
                resultsArray.append(singleResult)
            }
            
            print(resultsArray.count)
            
        }
        catch {
            print(error)
        }
        return resultsArray
        
    }

}

