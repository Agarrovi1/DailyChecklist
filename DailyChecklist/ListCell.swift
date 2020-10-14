//
//  ListCell.swift
//  DailyChecklist
//
//  Created by Angela Garrovillas on 10/14/20.
//  Copyright © 2020 Angela Garrovillas. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {
    //MARK: - Overrides
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
