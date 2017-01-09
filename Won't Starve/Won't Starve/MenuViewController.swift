//
//  MenuViewController.swift
//  Won't Starve
//
//  Created by Heisenbean on 17/1/7.
//  Copyright © 2017年 Heisenbean. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    // datas initial
    let path = Bundle.main.path(forResource: "Menu", ofType: "plist")
    
    var datas =  [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datas = NSArray(contentsOfFile: path!) as! [[String:String]]
        tableView.reloadData()
    }
    
}

extension MenuViewController: UITableViewDataSource,UITableViewDelegate{
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count 
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuCell
        cell.data = datas[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
