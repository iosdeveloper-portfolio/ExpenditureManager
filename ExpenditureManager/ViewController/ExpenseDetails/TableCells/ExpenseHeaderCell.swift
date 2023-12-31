//
// ExpenseHeaderCell.swift
// ExpenditureManager
//

import UIKit

class ExpenseHeaderCell: UITableViewCell {

    @IBOutlet weak var userIconLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var expense: Expenses? {
        didSet {
            userIconLabel.backgroundColor = expense?.randomColor()
            userIconLabel.text = expense?.user?.initials()
            userNameLabel.text = expense?.user?.fullName()
            emailLabel.text = expense?.user?.email
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        userIconLabel.textColor = UIColor.white
        userIconLabel.clipsToBounds = true
        userNameLabel.textColor = UIColor.white
        emailLabel.textColor = UIColor.white
        self.contentView.backgroundColor = UIColor.appColor
        userIconLabel.layer.cornerRadius = userIconLabel.frame.height / 2
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
