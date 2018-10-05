//
//  BaseListTableViewController.swift
//  GenericProject
//
//  Created by Shithin_Focaloid on 05/10/18.
//  Copyright © 2018 E3Help. All rights reserved.
//

import UIKit

class BaseListTableViewController<T: GenericCell<U>, U>: UITableViewController {
    
    var items:[U] = []{
        didSet{
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        let rc = UIRefreshControl()
        rc.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        tableView.refreshControl = rc
        tableView.separatorStyle = .none
    }
    
    @objc func handleRefresh() {
        tableView.refreshControl?.endRefreshing()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! GenericCell<U>
        cell.item = items[indexPath.row]
        return cell
    }
}

class GenericCell<U>: UITableViewCell {
    var item: U!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
}
