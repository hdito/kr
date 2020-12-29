//
//  ViewController.swift
//  Reader
//
//  Created by studpc on 28/12/2020.
//  Copyright © 2020 studpc. All rights reserved.
//

import UIKit
import Zip



class ViewController: UIViewController {
	
    @IBOutlet var tableView: UITableView!
    
    var images: [Page] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = createArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Page]{
        
        var pages: [Page] = []
        
        pages.append(Page(image: UIImage(named: "first.jpg")!, number: 1))
        pages.append(Page(image: UIImage(named: "second.jpg")!, number: 2))
        pages.append(Page(image: UIImage(named: "third.jpg")!, number: 3))
        return pages
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let page = images[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PageCell") as! PageCell
        cell.setPage(page: page)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        return UISwipeActionsConfiguration(actions: [UIContextualAction(style: .destructive, title: String("DELETE"), handler: {[weak self] (action, view, completion) in self?.images.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .right)
            completion(true)
        })])
    }
}
