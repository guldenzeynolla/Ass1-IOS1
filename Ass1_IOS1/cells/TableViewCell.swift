//
//  TableViewCell.swift
//  Ass1_IOS1
//
//  Created by Гулден Зейнолла on 31.01.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var attemptLabel: UILabel!
    @IBOutlet weak var histScoreLabel: UILabel!
    
    var id = 0

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
