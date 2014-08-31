//
//  Second.swift
//  Starter
//
//  Created by mark andrew on 31/08/14.
//  Copyright (c) 2014 mark andrew enterprises inc. All rights reserved.
//

import UIKit

class Second: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBAction func pressedIt(sender: AnyObject) {
        let sneakyList = self.storyboard.instantiateViewControllerWithIdentifier("sneaky") as SneakyList
        self.navigationController.pushViewController(sneakyList, animated: true)
        
    }

    
    @IBAction func plainPressed(sender: AnyObject) {
        let plainList = self.storyboard.instantiateViewControllerWithIdentifier("plain") as PlainList
        plainList.setData(["foo","bar","baz"])
        self.navigationController.pushViewController(plainList, animated: true)
    }

}
