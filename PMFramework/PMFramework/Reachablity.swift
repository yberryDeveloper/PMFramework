/*
 
 Note:-
 
 1. pod install Alamofire
 2. Usage:-
 
 if Connectivity.isConnectedToInternet() {
 }
 else{
 // Your Alert
 }
 

 */
//----------------------------------------------------------------------------------------------
/*

import Foundation
import Alamofire
import SwiftyJSON


class Connectivity
{
    class func isConnectedToInternet() ->Bool
    {
        return NetworkReachabilityManager()!.isReachable
    }
}



class AlamoWebServicex
{
    
    func callWebService(strUrl : String?, intCurrentState : Int?, strId : String?, withParameters parameters: [String : Any]?, httpMethod : HTTPMethod?, withSuccessHandler success : (([String : AnyObject]?) -> Void)?, withErrorHandler errorMsg : ((String?) -> Void)?) {
        
        let headers = [String : String]()
        print(headers);
        
        let manager = SessionManager.default
        manager.session.configuration.timeoutIntervalForRequest = 2
        
        manager.request(strUrl!, method: httpMethod!, parameters: parameters, encoding: JSONEncoding.default, headers : headers).validate().responseJSON { response in
            switch response.result {
            case .success:
                if let value = response.result.value as? [String: AnyObject]  {
                    let jsonData = JSON(value)
                    print("JSON: \(jsonData)")
                    if (jsonData["code"].numberValue == 200) {
                        success?(value)
                    } else if (jsonData["code"].numberValue == 401) {
                        if jsonData["msg"].string != nil {
                            // self.hideHud()
                            // self.alertAction(message: strMessage, intErrorCode: 401)
                        }
                    } else if (jsonData["code"].numberValue == 404) {
                        if jsonData["msg"].string != nil {
                            // self.hideHud()
                            // self.alertAction(message: strMessage, intErrorCode: 404)
                        }
                    } else if (jsonData["code"].numberValue == 400) {
                        //self.hideHud()
                        var _ : String = ""
                        
                        if let responseStatus = jsonData["status"].string, responseStatus == "Failed" {
                            if (value["data"] as? [String : Any?]) != nil {
                                //self.alertAction(message: strMsg, intErrorCode: 400)
                            } else {
                                if let message = jsonData["msg"].string {
                                    errorMsg?(message)
                                } else {
                                    //errorMsg?(self.localize(key: "V_INVALID_RESPONSE"))
                                }
                            }
                        }
                    }  else {
                        if let message = jsonData["msg"].string {
                            errorMsg?(message)
                        } else {
                            //errorMsg?(self.localize(key: "V_INVALID_RESPONSE"))
                        }
                    }
                }
            case .failure(let error):
                print(error)
                if let data = response.data {
                    print("Response data: \(NSString(data: data, encoding: String.Encoding.utf8.rawValue)!)")
                    if (error as NSError).code != NSURLErrorCancelled {
                        if ((error as NSError).code == -1001 || (error as NSError).code == -1005) {
                            self.callWebService(strUrl: strUrl, intCurrentState: intCurrentState, strId: strId, withParameters: parameters, httpMethod: httpMethod, withSuccessHandler: { (_) in }, withErrorHandler: { (_) in})
                        } else {
                            errorMsg?(error.localizedDescription)
                        }
                    }
                }
            }
        }
    }
    
    
}
*/
