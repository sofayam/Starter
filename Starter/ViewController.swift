//
//  ViewController.swift
//  Starter
//
//  Created by mark andrew on 31/08/14.
//  Copyright (c) 2014 mark andrew enterprises inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var x = 0
                            
    @IBAction func pressShow(sender: AnyObject) {
        
        let viewThere = self.storyboard.instantiateViewControllerWithIdentifier("second") as Second
        self.navigationController.pushViewController(viewThere, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressed(sender: AnyObject) {
        x += 1
        label.text="\(x)"
        
    }

    @IBOutlet weak var label: UILabel!
}

