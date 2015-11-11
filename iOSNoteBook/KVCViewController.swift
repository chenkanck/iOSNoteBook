//
//  KVCViewController.swift
//  iOSNoteBook
//
//  Created by Kan Chen on 10/31/15.
//  Copyright © 2015 Zap. All rights reserved.
//

import UIKit

class KVCViewController: UIViewController {
    @IBOutlet weak var Text: UILabel!
    var firstname = ""
    
    var child1 = KVOClass(name: "child1", age: 1)
    var child2 = KVOClass(name: "child2", age: 2)
    var child3 = KVOClass(name: "child3", age: 3)
    override func viewDidLoad() {
        super.viewDidLoad()
        kvo()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func kvo(){
        setValue("kan", forKey: "firstname")
        print(self.firstname)
        setValue("Go", forKeyPath: "self.Text.text")
        print(valueForKey("firstname"))
        print(valueForKeyPath("self.Text.text"))
//        print(valueForKey("Text.text"))
        print(child1.valueForKey("name"))
        child1.setValue("child11", forKey: "name")
        child1.setValue(11, forKey: "age")
        print(child1.valueForKey("name"))
//        if let f = child1.valueForKey("first"){
//            
//        }
//        let ni = child1.valueForKey("firstname")
//        print ()
        print(child1.age)
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
