import UIKit

class XibTest2ViewController: UIViewController {

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
            let xibs = NSBundle.mainBundle().loadNibNamed("XibTest2", owner: nil, options: nil)
//            let appview: UIView = xibs.first as! UIView
            let appview: XibTest2 = xibs.first as! XibTest2
            appview.frame = CGRectMake(xPoint, yPoint, appviewWidth, appviewHeight)
            //Use Tag of UIView to manage UI
            
            appview.label.text = "Xib\(i+1)"
            if i%2 == 0 {
                appview.imageView.backgroundColor = UIColor.greenColor()
            }else{
                appview.imageView.backgroundColor = UIColor.yellowColor()
            }
            
            self.view.addSubview(appview)
        }
    }

}
