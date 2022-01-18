//
//  MenuCell.swift
//  Sparxkle
//
//  Created by Annas Salman on 26/12/2021.
//

import UIKit

class MenuCell: UITableViewCell {

    
    @IBOutlet weak var cellImage:UIImageView!
    @IBOutlet weak var textLbl:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
