//
//  PlainList.swift
//  Starter
//
//  Created by mark andrew on 31/08/14.
//  Copyright (c) 2014 mark andrew enterprises inc. All rights reserved.
//

import UIKit

class PlainList: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "my Plain old view"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tableView.dequeueReusableCellWithIdentifier("cellplain", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = "Cell number \(indexPath.row)"
        return cell
    }
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    


}
