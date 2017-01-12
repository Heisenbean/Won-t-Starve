//
//  MenuDetalViewController.swift
//  Won't Starve
//
//  Created by Heisenbean on 17/1/10.
//  Copyright © 2017年 Heisenbean. All rights reserved.
//

import UIKit

class MenuDetalViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var detaliLabel: UILabel!
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var foodIcon: UIImageView!
    @IBOutlet weak var healthNum: UILabel!
    @IBOutlet weak var hungryNum: UILabel!
    @IBOutlet weak var santiNum: UILabel!
    @IBOutlet weak var timeNum: UILabel!
    @IBOutlet weak var badTimeNum: UILabel!
    @IBOutlet weak var limitNum: UILabel!
    @IBOutlet weak var generateCode: UILabel!

    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var exampleTopConst: NSLayoutConstraint!
    

    var datas = [String:AnyObject]()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        detaliLabel.preferredMaxLayoutWidth = UIScreen.main.bounds.size.width * 0.5
        configData()
    }
    
    func configData() {
        detaliLabel.text = datas["desc"] as? String
        foodIcon.image = UIImage.init(named: (datas["icon"] as? String)!)
        nameLabel.text = datas["name"] as? String
        healthNum.text = datas["health"] as? String
        hungryNum.text = datas["hungry"] as? String
        santiNum.text = datas["sanity"] as? String
        badTimeNum.text = datas["badTime"] as? String
        limitNum.text = datas["max"] as? String
        limitNum.text = datas["max"] as? String
        generateCode.text = "\"" + (datas["code"] as! String) + "\""
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if detaliLabel.frame.height > 274 {
            exampleTopConst.constant += detaliLabel.frame.height - 274
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension MenuDetalViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let examples = datas["example"] as! [String]
        return examples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExampleCell
        let examples = datas["example"] as! [String]
        cell.datas = examples[indexPath.row]
        cell.result.image = UIImage.init(named: (datas["icon"] as? String)!)
        return cell
    }
}
