//
//  SneakyList.swift
//  Starter
//
//  Created by mark andrew on 31/08/14.
//  Copyright (c) 2014 mark andrew enterprises inc. All rights reserved.
//

import UIKit

class SneakyList: UIViewController, UITableViewDelegate, UITableViewDataSource{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myList.delegate=self
      self.myList.registerClass(UITableViewCell.self, forCellReuseIdentifier: "celli")

    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func debug(sender: AnyObject) {
        label.text="\(myList.hash)"
    }

    @IBOutlet weak var myList: UITableView!
    
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tableView.dequeueReusableCellWithIdentifier("celli", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = "Cell number \(indexPath.row)"
        return cell
    }
    
}
