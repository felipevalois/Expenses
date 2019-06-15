//
//  ExpensesTableViewCell.swift
//  Expenses
//
//  Created by Felipe Costa on 6/15/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
