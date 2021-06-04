//
//  myCellClassTableViewCell.swift
//  practiseTableView
//
//  Created by user196667 on 6/1/21.
//

import UIKit

class myCellClassTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myCellLabel: UILabel!

    @IBOutlet weak var myCellImage: UIImageView!

    func setLabel(labelVal: String) {
        myCellLabel?.text = labelVal
        myCellImage.image = UIImage(named: "birdie")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
