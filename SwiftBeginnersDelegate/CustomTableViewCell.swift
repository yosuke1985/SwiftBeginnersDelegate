//
//  CustomTableViewCell.swift
//  SwiftBeginnersDelegate
//
//  Created by 中山 陽介 on 2017/07/01.
//  Copyright © 2017年 Yosuke Nakayama. All rights reserved.
//

import UIKit

protocol CustomCellDelegate {
    func touchMethod()
}

class CustomTableViewCell: UITableViewCell {

    var delegate:CustomCellDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func touched(_ sender: Any) {
        
        delegate.touchMethod()
    }
}
