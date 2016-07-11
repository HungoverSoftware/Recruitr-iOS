//
//  SwipeViewController.swift
//  Fraternity app
//
//  Created by Richard on 7/8/16.
//  Copyright © 2016 Richard. All rights reserved.
//

import Foundation
import UIKit

class SwipeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Sets up swipeViewBackground in SwipeViewController
        let swipeViewBackground = SwipeViewBackground(frame: self.view.frame)
        self.view.addSubview(swipeViewBackground)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
