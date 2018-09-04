


/*
import Foundation
import UIKit
import AVFoundation
import QuartzCore

//MARK: UILabel
extension UILabel {
    
    func addDashedLineLabel(color: UIColor = .lightGray) {
        layer.sublayers?.filter({ $0.name == "DashedTopLine" }).map({ $0.removeFromSuperlayer() })
        backgroundColor = .clear
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.name = "DashedTopLine"
        shapeLayer.bounds = bounds
        shapeLayer.position = CGPoint(x: frame.width / 2, y: frame.height / 2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineDashPattern = [2, 2]
        
        
        shapeLayer.path = UIBezierPath(rect: shapeLayer.bounds).cgPath
        
        
        //        let path = CGMutablePath()
        //        path.move(to: CGPoint.zero)
        //        path.addLine(to: CGPoint(x: frame.width, y: 0))
        //        shapeLayer.path = path
        
        layer.addSublayer(shapeLayer)
    }
    
    
}
//MARK: UITextField
extension UITextField {
    
    
    func textFieldBorder(yourTextField : UITextField) {
        
        yourTextField.layer.masksToBounds = true
        yourTextField.layer.borderColor = APP_PALE_YELLOW.cgColor
        yourTextField.layer.borderWidth = 2.0
    }
    
}

//MARK: UIView
extension UIView {
    
    
    
    
    func addDashedLine(color: UIColor = .lightGray) {
        layer.sublayers?.filter({ $0.name == "DashedTopLine" }).map({ $0.removeFromSuperlayer() })
        backgroundColor = .clear
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.name = "DashedTopLine"
        shapeLayer.bounds = bounds
        shapeLayer.position = CGPoint(x: frame.width / 2, y: frame.height / 2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineDashPattern = [2, 2]
        
        
        shapeLayer.path = UIBezierPath(rect: shapeLayer.bounds).cgPath
        
        
        //        let path = CGMutablePath()
        //        path.move(to: CGPoint.zero)
        //        path.addLine(to: CGPoint(x: frame.width, y: 0))
        //        shapeLayer.path = path
        
        layer.addSublayer(shapeLayer)
    }
    
    
    
    
    
    /*
     func addDaashedLine(color: UIColor = .lightGray) {
     
     var yourViewBorder = CAShapeLayer()
     yourViewBorder.strokeColor = UIColor.black.cgColor
     yourViewBorder.lineDashPattern = [2, 2]
     yourViewBorder.frame = yourView.bounds
     yourViewBorder.fillColor = nil
     yourViewBorder.path = UIBezierPath(rect: yourView.bounds).cgPath
     yourView.layer.addSublayer(yourViewBorder)
     
     
     
     }
     
     */
    
    
    
    
    func viewBorder(ViewName: UIView){
        
        ViewName.layer.borderWidth = 2
        ViewName.layer.borderColor = APP_GOLD_COLOR.cgColor
        ViewName.layer.backgroundColor = UIColor.clear.cgColor
        
    }
    
}


//MARK: UIDevice

extension UIDevice {
    var iPhoneX: Bool {
        return UIScreen.main.nativeBounds.height == 2436
    }
    var iPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    enum ScreenType: String {
        case iPhone4_4S = "iPhone 4 or iPhone 4S"
        case iPhones_5_5s_5c_SE = "iPhone 5, iPhone 5s, iPhone 5c or iPhone SE"
        case iPhones_6_6s_7_8 = "iPhone 6, iPhone 6S, iPhone 7 or iPhone 8"
        case iPhones_6Plus_6sPlus_7Plus_8Plus = "iPhone 6 Plus, iPhone 6S Plus, iPhone 7 Plus or iPhone 8 Plus"
        case iPhoneX = "iPhone X"
        case unknown
    }
    var screenType: ScreenType {
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4_4S
        case 1136:
            return .iPhones_5_5s_5c_SE
        case 1334:
            return .iPhones_6_6s_7_8
        case 1920, 2208:
            return .iPhones_6Plus_6sPlus_7Plus_8Plus
        case 2436:
            return .iPhoneX
        default:
            return .unknown
        }
    }
}

//MARK: UIColor

extension UIColor{
    class func getCustomOrangeColor() -> UIColor{
        return UIColor(red:214/255, green:121/255 ,blue:2/255 , alpha:1.00)
    }
    
    
    
    func lighter(by percentage:CGFloat=30.0) -> UIColor? {
        return self.adjust(by: abs(percentage) )
    }
    
    func darker(by percentage:CGFloat=30.0) -> UIColor? {
        return self.adjust(by: -1 * abs(percentage) )
    }
    
    func adjust(by percentage:CGFloat=30.0) -> UIColor? {
        var r:CGFloat=0, g:CGFloat=0, b:CGFloat=0, a:CGFloat=0;
        if(self.getRed(&r, green: &g, blue: &b, alpha: &a)){
            return UIColor(red: min(r + percentage/100, 1.0),
                           green: min(g + percentage/100, 1.0),
                           blue: min(b + percentage/100, 1.0),
                           alpha: a)
        }else{
            return nil
        }
    }
    
}


//MARK: UIButton
extension UIButton{
    
    func buttonBorder(buttonName: UIButton){
        
        buttonName.layer.borderWidth = 2
        buttonName.layer.borderColor = APP_GOLD_COLOR.cgColor
        buttonName.layer.backgroundColor = UIColor.clear.cgColor
        
        
        
    }
    
    
    func buttonBorder(buttonName: UIButton, borderColor: UIColor, borderWidthSize: Float, bgColor: UIColor, titleTextColor: UIColor){
        
        buttonName.layer.borderWidth = CGFloat(borderWidthSize)
        buttonName.layer.borderColor = borderColor.cgColor
        buttonName.layer.backgroundColor = bgColor.cgColor
        buttonName.setTitleColor(titleTextColor, for: .normal)
        
    }
    
    
    func buttonRoundRectWithColor(yourBtn: UIButton, color: UIColor) {
        
        yourBtn.backgroundColor = color
        yourBtn.layer.borderWidth = 1
        yourBtn.layer.cornerRadius = 0.5 * yourBtn.bounds.size.width
        yourBtn.clipsToBounds = true
    }
    
    
    func buttonRoundBorderWithColor(yourBtn: UIButton, color: UIColor, width: CGFloat,titleTextColor: UIColor) {
        
        yourBtn.layer.cornerRadius = yourBtn.frame.size.width/2
        yourBtn.clipsToBounds = true
        yourBtn.layer.borderColor = color.cgColor
        yourBtn.layer.borderWidth = width
        yourBtn.setTitleColor(titleTextColor, for: .normal)
    }
    
}


//MARK: UIVIEWCONTROLLER

extension UIViewController {
    
    
    func sound_buttonCLick(){
        
        //1057 tink
        let systemSoundId: SystemSoundID = 1057
        AudioServicesPlaySystemSound(systemSoundId)
        
    }
    func setNavigationItem() {
        
        //>>>>>>>>> Right >>>>>>>>>>>>>>>>>>>>>>>
        
        
        
        
        let button5 : UIButton = UIButton(type: .custom)   //toggle-icon
        button5.setImage(UIImage(named: "toggle-icon"), for: .normal)
        button5.addTarget(self, action: #selector(UIViewController.toggleIcon), for: .touchUpInside)
        button5.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let barButton5 = UIBarButtonItem(customView: button5)
        
        
        let button4 : UIButton = UIButton(type: .custom)
        button4.setImage(UIImage(named: "shopping_cart"), for: .normal)//shopping_cart
        button4.addTarget(self, action: #selector(UIViewController.cartadd), for: .touchUpInside)
        button4.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let barButton4 = UIBarButtonItem(customView: button4)
        
        
        
        let button3 : UIButton = UIButton(type: .custom)
        button3.setImage(UIImage(named: "insta-icon"), for: .normal)//insta-icon
        button3.addTarget(self, action: #selector(UIViewController.instagramAction), for: .touchUpInside)
        button3.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let barButton3 = UIBarButtonItem(customView: button3)
        
        
        
        let button2 : UIButton = UIButton(type: .custom)
        button2.setImage(UIImage(named: "user-icon"), for: .normal)//user-icon
        button2.addTarget(self, action: #selector(UIViewController.Useraccount), for: .touchUpInside)
        button2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let barButton2 = UIBarButtonItem(customView: button2)
        
        
        let button1 : UIButton = UIButton(type: .custom)
        button1.setImage(UIImage(named: "facebook-icon"), for: .normal)//facebook-icon
        button1.addTarget(self, action: #selector(UIViewController.facebookaction), for: .touchUpInside)
        button1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let barButton1 = UIBarButtonItem(customView: button1)
        
        
        let button : UIButton = UIButton(type: .custom)
        button.setImage(UIImage(named: "twiiter-icon"), for: .normal)//twiiter-icon
        button.addTarget(self, action: #selector(UIViewController.twitterAction), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        let barButton = UIBarButtonItem(customView: button)
        
        
        let flexi = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        // flexi.width = -100
        self.navigationItem.rightBarButtonItems = [barButton5, barButton4, flexi ,flexi,flexi, barButton2, barButton3 ,barButton1,barButton, flexi, flexi ]
        
        
        //>>>>>>>>> GIF >>>>>>>>>>>>>>>>>>>>>>>
        let imageView_gif : UIImageView? = UIImageView()
        imageView_gif?.frame = CGRect(x: 0, y: 0, width: 60, height: 100)
        imageView_gif?.loadGif(name: "Caffe_logoGIF")
        let fgdf = UIBarButtonItem(customView: imageView_gif!)
        self.navigationItem.leftBarButtonItem = fgdf
        
        
        //>>>>>>>>> Center >>>>>>>>>>>>>>>>>>>>>>>
        // let imageViewCenterTwitter = UIImageView(image: UIImage(named: "twitter.png"))
        // self.navigationItem.titleView = imageViewCenterTwitter
        
    }
    
    @objc func facebookaction(){
        
        if let url = NSURL(string: "https://m.facebook.com/caffediartisan"){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
        
    }
    
    @objc func secondact(){
        
    }
    
    
    
    @objc func toggleIcon(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Drawer_VC") as! Drawer_VC
        //self.present(nextViewController, animated:true, completion:nil)
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
    }
    
    @objc func cartadd(){
        
    }
    
    @objc func instagramAction(){
        
        
        if let url = NSURL(string: "https://www.instagram.com/caffediartisan/"){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
    }
    
    @objc func Useraccount(){
        
        NotificationCenter.default.post(name: Notification.Name("notify_login"), object: nil)
        
        // NotificationCenter.default.post(name: Notification.Name("NotificationIdentifier"), object: nil, userInfo: ["Renish":"Dadhaniya"])
        
        
        
    }
    @objc func twitterAction(){
        
        if let url = NSURL(string: "https://mobile.twitter.com/caffediartisan"){
            // UIApplication.shared.openURL(url as URL)
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    
    
    
    
    
    
    
    // MARK: OPEN POP UP VIEW CONTROLLER:- - - - -
    
    
    
    func func_close_Login_PU(){
        
        let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: "login_vc")
        presentedVC.modalPresentationStyle = .overCurrentContext
        presentedVC.modalTransitionStyle = .crossDissolve
        presentedVC.modalPresentationCapturesStatusBarAppearance = true
        presentedVC.beginAppearanceTransition(true, animated: true)
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    func func_close_Signup_PU(){
        
        let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: "SignUp_VC")
        presentedVC.modalPresentationStyle = .overCurrentContext
        presentedVC.modalTransitionStyle = .crossDissolve
        presentedVC.modalPresentationCapturesStatusBarAppearance = true
        presentedVC.beginAppearanceTransition(true, animated: true)
        self.dismiss(animated: true, completion: nil)
        
        
        
        
    }
    
    
    func func_close_forgotPass_PU(){
        
        let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: "ForgotPass_VC")
        presentedVC.modalPresentationStyle = .overCurrentContext
        presentedVC.modalTransitionStyle = .crossDissolve
        presentedVC.modalPresentationCapturesStatusBarAppearance = true
        presentedVC.beginAppearanceTransition(true, animated: true)
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    
    func func_open_Login_PU() {
        
        let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: "login_vc")
        presentedVC.modalPresentationStyle = .overCurrentContext
        presentedVC.modalTransitionStyle = .crossDissolve
        presentedVC.modalPresentationCapturesStatusBarAppearance = true
        presentedVC.beginAppearanceTransition(true, animated: true)
        self.present(presentedVC, animated: true, completion: nil)
        
        
    }
    
    
    
    func func_open_Signup_PU() {
        
        let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: "SignUp_VC")
        presentedVC.modalPresentationStyle = .overCurrentContext
        presentedVC.modalTransitionStyle = .crossDissolve
        presentedVC.modalPresentationCapturesStatusBarAppearance = true
        presentedVC.beginAppearanceTransition(true, animated: true)
        present(presentedVC, animated:true, completion: nil)
        
        
    }
    
    
    
    func func_open_forgotPass_PU() {
        
        
        let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: "ForgotPass_VC")
        presentedVC.modalPresentationStyle = .overCurrentContext
        presentedVC.modalTransitionStyle   = .crossDissolve
        presentedVC.modalPresentationCapturesStatusBarAppearance = true
        presentedVC.beginAppearanceTransition(true, animated: true)
        present(presentedVC, animated:true, completion: nil)
        
        
    }
    
    
    
    func func_close_All_POPUP(){
        
        func_close_Login_PU()
        func_close_Signup_PU()
        func_close_forgotPass_PU()
    }
    
    
    
    func alert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

// animation links:-

//https://stackoverflow.com/a/40318316


//MARK: NSMutableAttributedString

extension NSMutableAttributedString {
    @discardableResult func bold(_ text: String) -> NSMutableAttributedString {
        let attrs: [NSAttributedStringKey: Any] = [.font: UIFont(name: "AvenirNext-Medium", size: 12)!]
        let boldString = NSMutableAttributedString(string:text, attributes: attrs)
        append(boldString)
        
        return self
    }
    
    @discardableResult func normal(_ text: String) -> NSMutableAttributedString {
        let normal = NSAttributedString(string: text)
        append(normal)
        
        return self
    }
}
 


*/
