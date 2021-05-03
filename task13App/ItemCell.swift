//
//  ItemCell.swift
//  task13App
//
//  Created by akio0911 on 2021/05/03.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var checkImageView: UIImageView!

    func configure(name: String, isChecked: Bool) {
        self.nameLabel.text = name
        self.checkImageView.image = isChecked ? UIImage(named: "check") : nil
    }
}
