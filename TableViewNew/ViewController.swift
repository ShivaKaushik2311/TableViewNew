//
//  ViewController.swift
//  TableViewNew
//
//  Created by clicklabs on 30/12/19.
//  Copyright © 2019 clicklabs. All rights reserved.
//

import UIKit

enum MySection{
    case First
    case Second
    case Third
    case Fourth
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var mysection: [MySection] = [.First, .Second, .Third, .Fourth]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        print("Tapped on row \(indexPath.row)")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch mysection [section] {
        
        case .First:
            return 4
        case .Second:
            return 4
        case .Third:
            return 4
        case .Fourth:
            return 4
         default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch mysection [section] {
        case .First:
            return "Ios"
        case .Second:
            return "Android"
        case .Third:
            return "Backhand"
        case .Fourth:
            return "Frontend"
        default:
            return nil
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped on row \(indexPath.row)")
    }
        weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorColor = .black
    }


}


