//
//  PageCell.swift
//  Reader
//
//  Created by studpc on 29/12/2020.
//  Copyright © 2020 studpc. All rights reserved.
//

import UIKit

class PageCell: UITableViewCell {

    
    @IBOutlet var pageImageView: UIImageView!
    
    func setPage(page: Page){
        pageImageView.image = page.image
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
