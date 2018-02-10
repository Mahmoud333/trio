//
//  TableCell.swift
//  trio
//
//  Created by mac on 2/11/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var UIDLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var telNumberLbl: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
