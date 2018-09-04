
/*
import Foundation
import UIKit

enum ScreenSize : CGFloat {
    case Width320  = 320.0
    case Width375  = 375.0
    case Width414  = 414.0
    
    func getFontVariationAs() -> CGFloat {
        switch self {
        case .Width320:
            return 0
        case .Width375:
            return 1.5
        case .Width414:
            return 2.0
        }
    }
}


enum FontVariatorBasedOnScreenSize: CGFloat {
    case Width320 = 0
    case Width375 = 2.0
    case Width414 = 3.0
}

let kBundleVersion                          = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
let kAPIVersion                             = "1.1"
let kDeviceType                             = "IOS"
let kContent_Type                           = "application/x-www-form-urlencoded"


let defaults:UserDefaults = UserDefaults.standard
let screenSize: CGRect = UIScreen.main.bounds


let SCREEN_WIDTH = screenSize.width
let SCREEN_HEIGHT = screenSize.height

//let AppDelObj : AppDelegate                 = AppDelegate().sharedInstance()

struct WebAPI {
    
    static let baseURL = "https://take007.co.in/Projects-Work/CaffeDiArtisan/CaffeDiArtisan_api/"
    static let url_Login = WebAPI.baseURL + "customer_api.php"
    static let url_Signup = WebAPI.baseURL + "customer_api.php"
    static let url_Product = WebAPI.baseURL + "product_api.php"
    static let url_Gallery = WebAPI.baseURL + "gallery_api.php"
    static let url_Settings = WebAPI.baseURL + "webSetting_api.php"
    
}








//MARK: - Color functions

public func COLOR_CUSTOM(_ Red: Float, _ Green: Float , _ Blue: Float, _ Alpha: Float) -> UIColor {
    return  UIColor (red:  CGFloat(Red)/255.0, green: CGFloat(Green)/255.0, blue: CGFloat(Blue)/255.0, alpha: CGFloat(Alpha))
}

public func UIColorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}


public let APP_ORANGE_COLOR :UIColor = COLOR_CUSTOM(222, 110, 67,1)

public let APP_GOLD_COLOR :UIColor = COLOR_CUSTOM(173, 149, 94,1)

public let APP_WHITE_COLOR :UIColor = COLOR_CUSTOM(255,255,255,1)

public let APP_CLEAR_COLOR :UIColor = COLOR_CUSTOM(0,0,0,1)

public let APP_PALE_YELLOW :UIColor = COLOR_CUSTOM(189,159,95,1)
*/
