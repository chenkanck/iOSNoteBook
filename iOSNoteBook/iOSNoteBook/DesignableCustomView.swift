//
//  DesignableCustomView.swift
//  iOSNoteBook
//
//  Created by Kan Chen on 11/11/15.
//  Copyright © 2015 Zap. All rights reserved.
//

import UIKit

@IBDesignable class DesignableCustomView: UIView {
    var view:UIView!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func pressedButton(sender: AnyObject) {
    }
    @IBInspectable var cornerRadiusOfImage:CGFloat?{
        get {
            return imageView.layer.cornerRadius
        }
        set{
            if let value = newValue{
                imageView.layer.cornerRadius = value
            }
        }
    }
    
    @IBInspectable var title:String?{
        get {
            return label.text
        }
        set{
            label.text = newValue
        }
    }
    
    @IBInspectable var image:UIImage?{
        get {
            return imageView.image
        }
        set(image){
            imageView.image = image
        }
    }
    
    func xibSetup(){
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView{
        let bundle = NSBundle(forClass: DesignableCustomView.classForCoder())
        let nib = UINib(nibName: "DesignableCustomView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
}
