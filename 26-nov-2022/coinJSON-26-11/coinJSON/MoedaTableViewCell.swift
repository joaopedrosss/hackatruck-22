//
//  MoedaTableViewCell.swift
//  coinJSON
//
//  Created by Student on 25/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MoedaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var moedaNomeLabel: UILabel!
    
    @IBOutlet weak var rankLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
