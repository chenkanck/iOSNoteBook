import UIKit

class XibTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        loadXib()
    }

    private func loadXib(){
        let appviewHeight: CGFloat = 100
        let appviewWidth:CGFloat = 60
        let x:CGFloat = 20
        let y:CGFloat = 30
        let count = 9
        
        for i in 0..<9 {
            let col = CGFloat(i%3)
            let row = CGFloat(i/3)
            let xPoint = x + appviewWidth * col
            let yPoint = y + appviewHeight * row
            
            //Core part: Load nib
            let xibs = NSBundle.mainBundle().loadNibNamed("XibTest", owner: nil, options: nil)
            let appview: UIView = xibs.first as! UIView
            appview.frame = CGRectMake(xPoint, yPoint, appviewWidth, appviewHeight)
            //Use Tag of UIView to manage UI
            let appviewLabel = appview.viewWithTag(2) as! UILabel
            let appviewImageView = appview.viewWithTag(1) as! UIImageView
            appviewLabel.text = "Xib\(i+1)"
            appviewLabel.textColor = UIColor.blackColor()
            if i%2 == 0 {
                appviewImageView.backgroundColor = UIColor.redColor()
            }else{
                appviewImageView.backgroundColor = UIColor.blueColor()
            }
            let appviewButton = appview.viewWithTag(3) as! UIButton
            appviewButton.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
            appviewButton.tag = i+1
            self.view.addSubview(appview)
        }
    }
    
    func buttonClicked(btn: UIButton){
        NSLog("\(btn.tag) is clicked")
        btn.setTitle("\(btn.tag)", forState: UIControlState.Normal)
    }

}
