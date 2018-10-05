//
//  SingleFieldTVCell.swift
//  GenericProject
//
//  Created by Shithin_Focaloid on 05/10/18.
//  Copyright © 2018 E3Help. All rights reserved.
//

import UIKit

class SingleFieldTVCell: GenericCell<SingleFieldViewModel> {
    @IBOutlet weak var title: UILabel!
    override var item: SingleFieldViewModel!{
        didSet{
            title.text = item.title
        }
    }
}
