//
//  ViewController.swift
//  UnwindDemo
//
//  Created by Brandon Rich2 on 2/17/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alert = UIAlertController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        alert = UIAlertController (title: "Foo!", message: "bar", preferredStyle: .Alert )
        alert.addAction( UIAlertAction(
            title: "thing 1",
            style: .Default ) {
                (action:UIAlertAction) -> Void in
                   print("thing 1 clicked")
            }
        )

        alert.addAction( UIAlertAction(
            title: "thing 1",
            style: .Destructive ) {
                (action:UIAlertAction) -> Void in
                print("thing 2 clicked")
            }
        )
        alert.addAction( UIAlertAction(
            title: "Cancel",
            style: .Cancel ) {
                (action:UIAlertAction) -> Void in
                print("cancel clicked")
            }
        )
        
        alert.addAction( UIAlertAction(
            title: "get text",
            style: .Default ) {
                (action:UIAlertAction) -> Void in
                let tf = self.alert.textFields?.first
                print(tf!.text!)
                
            }
        )
        alert.addTextFieldWithConfigurationHandler() {
            (textField) in
            textField.placeholder = "Foo"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToPageOne(segue: UIStoryboardSegue) {
        
    }

    @IBAction func actionSheetButtonClicked(sender: AnyObject) {
        presentViewController(alert, animated: true, completion: nil)
    }

}

