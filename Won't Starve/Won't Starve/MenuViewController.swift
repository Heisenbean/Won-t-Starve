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
    
    var datas =  [[String:AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datas = NSArray(contentsOfFile: path!) as! [[String:AnyObject]]
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
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MenuCell
        let rowHeight = cell .rowHeight(data: datas[indexPath.row])
        return rowHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVc = UIStoryboard.init(name: "MenuDetail", bundle: nil).instantiateInitialViewController() as! MenuDetalViewController
        detailVc.datas = datas[indexPath.row]
        navigationController?.pushViewController(detailVc, animated: true)
    }
    
    
}
