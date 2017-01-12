//
//  ExampleCell.swift
//  Won't Starve
//
//  Created by Heisenbean on 17/1/12.
//  Copyright © 2017年 Heisenbean. All rights reserved.
//

import UIKit

class ExampleCell: UITableViewCell {

    @IBOutlet weak var material1: UIImageView!
    @IBOutlet weak var material2: UIImageView!
    @IBOutlet weak var material3: UIImageView!
    @IBOutlet weak var material4: UIImageView!
    @IBOutlet weak var result: UIImageView!
    
    var datas = String(){
        didSet{
            let array = datas.components(separatedBy: ",")
            material1.image = UIImage(named: (array.first!))
            material2.image = UIImage(named: (array[1]))
            material3.image = UIImage(named: (array[2]))
            material4.image = UIImage(named: (array.last!))
        }
    }
    
//    var resultIcon = String(){
//        didSet{
//            result.image = UIImage.init(named: resultIcon)
//        }
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
