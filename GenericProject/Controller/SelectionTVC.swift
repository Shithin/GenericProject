//
//  SelctionTVC.swift
//  GenericProject
//
//  Created by Shithin_Focaloid on 05/10/18.
//  Copyright © 2018 E3Help. All rights reserved.
//

import UIKit

class SelectionTVC: BaseListTableViewController<SingleFieldTVCell,SingleFieldViewModel> {
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [
        SingleFieldViewModel(text: "Simple TableView Controller")
        ]
    }
}
