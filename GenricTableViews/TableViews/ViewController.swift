//
//  ViewController.swift
//  TableViews
//
//  Created by CHARNPREET SINGH on 19/5/20.
//  Copyright © 2020 CHARNPREET SINGH. All rights reserved.
//

import UIKit

//
// Genric Class
class BaseCell<U>: UITableViewCell {
    var item : U!
}

//
// Genric BaseTableView Controller
class BaseTableViewController<T: BaseCell<U>, U>: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var list: [U] = [];
    @IBOutlet var uiTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        uiTable.dataSource = self
        uiTable.delegate = self
        uiTable.register(T.self, forCellReuseIdentifier: "cell")
        
        // Do any additional setup after loading the view.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
     }
     
     public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BaseCell<U>;
        cell.item = list[indexPath.row]
         return cell;
     }
}

//class IntCell : BaseCell<Int>{
//    override var item: Int!{
//        didSet{
//            textLabel?.text = "\(item)"
//        }
//    }
//}

//class ViewController : BaseTableViewController<IntCell, Int>{
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        list = [1,2,3,4,5,6,6,7,7,8,8,8,9,10,11,12,34,56,67,78];
//    }
//}


class StringCell : BaseCell<String>{
    override var item: String!{
        didSet{
            textLabel?.text = item
        }
    }
}

class ViewController : BaseTableViewController<StringCell, String>{

    override func viewDidLoad() {
        super.viewDidLoad()
        list = ["apple", "Bannana", "Orange", "Apricots", "Avocados", " Boysenberries", "Blueberries", "Bing Cherry", "Dates", "Dewberries", "Dragon Fruit"]
    }
}
