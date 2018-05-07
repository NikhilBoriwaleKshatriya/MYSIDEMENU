//
//  sidemenutablecell.swift
//  MYSIDEMENU
//
//  Created by nikhil boriwale on 5/7/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class sidemenutablecell: UITableViewCell {

    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet weak var lbloptionname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
