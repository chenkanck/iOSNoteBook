//
//  DetailViewController.swift
//  iOSNoteBook
//
//  Created by Kan Chen on 9/18/15.
//  Copyright (c) 2015 Zap. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nt = Notification()
        nt.addObservers()
        NSNotificationCenter.defaultCenter().postNotificationName("one", object: nil)
        // Do any additional setup after loading the view.
        let de = CIDetector(ofType: CIDetectorTypeText, context: nil, options: [:])
        let image = UIImage(named: "card2")
        let ci = CIImage(image: image!)
        let fe = de.featuresInImage(ci!)
        if let f = fe[0] as? CITextFeature{
            print("some  \(f)")
        }
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

extension DetailViewController: monsterSelectionDelegate{
    func monsterSelected(newMonster: String) {
        label.text = newMonster
    }
}
