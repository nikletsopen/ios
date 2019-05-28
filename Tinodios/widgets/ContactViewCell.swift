//
//  ContactViewCell.swift
//  Tinodios
//
//  Copyright © 2019 Tinode. All rights reserved.
//

import UIKit

protocol ContactViewCellDelegate: class {
    func selected(from: UITableViewCell)
}

class ContactViewCell: UITableViewCell {
    private static let kSelectedBackgroundColor = UIColor(red: 0xC2/255, green: 0xC9/255, blue: 0xF9/255, alpha: 0.5)
    private static let kNormalBackgroundColor = UIColor.clear

    public weak var delegate: ContactViewCellDelegate?

    @IBOutlet weak var avatar: RoundImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected {
            delegate?.selected(from: self)

            self.contentView.backgroundColor = ContactViewCell.kSelectedBackgroundColor
        } else {
            self.contentView.backgroundColor = ContactViewCell.kNormalBackgroundColor
        }
    }
}
