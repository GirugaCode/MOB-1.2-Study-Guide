//
//  OptionCell.swift
//  MOB 1.2 Cheat Sheet
//
//  Created by Ryan Nguyen on 12/8/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import Foundation
import UIKit

class OptionCell: UITableViewCell {
    
    @IBOutlet weak var optionTitle: UILabel!
    
    func updateOptionCell(with option: Option) {
        optionTitle.text = option.title
    }
}
