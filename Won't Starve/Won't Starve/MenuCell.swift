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
        limit.preferredMaxLayoutWidth = (UIScreen.main.bounds.size.width - 100) * 0.5 - 10
        need.preferredMaxLayoutWidth = limit.preferredMaxLayoutWidth
    }
    
    var data = [String:AnyObject](){
        didSet{
            icon.image = UIImage.init(named: data["icon"]! as! String)
            name.text = data["name"] as? String
            health.text = data["health"] as? String
            hungry.text = data["hungry"] as? String
            sanity.text = data["sanity"] as? String
            badTime.text = data["badTime"] as? String
            time.text = data["time"] as? String
            need.text = data["need"] as? String
            limit.text = data["limit"] as? String
        }
    }

    func rowHeight(data:[String : AnyObject]) -> CGFloat{
        self.data = data
        layoutIfNeeded()
        return max(self.limit.frame.maxY, self.need.frame.maxY) + 10
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
