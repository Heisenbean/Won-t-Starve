//
//  MenuDetalViewController.swift
//  Won't Starve
//
//  Created by Heisenbean on 17/1/10.
//  Copyright © 2017年 Heisenbean. All rights reserved.
//

import UIKit

class MenuDetalViewController: UIViewController {
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

    var datas = [String:AnyObject]()
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
        generateCode.text  = "\("\"\(datas["code"] as! String)\"")"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
