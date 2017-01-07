//
//  MenuCell.swift
//  Won't Starve
//
//  Created by Heisenbean on 17/1/7.
//  Copyright © 2017年 Heisenbean. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var health: UILabel!
    @IBOutlet weak var hungry: UILabel!
    @IBOutlet weak var sanity: UILabel!
    @IBOutlet weak var badTime: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var need: UILabel!
    @IBOutlet weak var limit: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var data = [String:String](){
        didSet{
            icon.image = UIImage.init(named: data["icon"]!)
            name.text = data["name"]
            health.text = data["health"]
            hungry.text = data["hungry"]
            sanity.text = data["sanity"]
            badTime.text = data["badTime"]
            time.text = data["time"]
            need.text = data["need"]
            limit.text = data["limit"]
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
