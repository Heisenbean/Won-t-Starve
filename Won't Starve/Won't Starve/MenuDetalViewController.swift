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

    override func viewDidLoad() {
        super.viewDidLoad()
        detaliLabel.preferredMaxLayoutWidth = UIScreen.main.bounds.size.width * 3 / 5.5
        // Do any additional setup after loading the view.
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
