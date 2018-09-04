//
//  Alamofire-Drawer.swift
//  OnlineMedicine_App
//
//  Created by Neelesh Jain on 9/4/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation


//============POD CREATE

//First need to install Alamofire pod as pod 'Alamofire'
//and Loader as pod 'NVActivityIndicatorView'


//############# ALAMOFIRE STRUCTURE #############################

//func Click_SAVE(){
//    //LOADER START
//
//
//    if Connectivity.isConnectedToInternet() {
//            print("Yes! internet is available.")
//
//            let urlString : String = "URL_STRING"
//
//            Alamofire.request(urlString, method: .post, parameters: ["method":"","Key":"value"],encoding: JSONEncoding.default, headers: nil).responseJSON {
//                response in
//                print(response)
//
//               //LOADER STOP
//
//                //to get status code
//                if let status = response.response?.statusCode {
//                    switch(status){
//                    case 200:
//                        break
//                    default:
//                        print("error with response status: \(status)")
//                    }
//
//                    if let result = response.result.value {
//                        let JSON = result as! NSDictionary
//                        print(JSON)
//
//                        let data = JSON
//                        let status = data["status"] as! String
//                        if status == "200"{
//
//                            let aray_result = data["result"] as! NSArray
//                            //Do whatever you want .
//                        }
//
//                        else{
//                            if let arrayResult = data["result"] as! NSArray? {
//
//                                for objSchedule in arrayResult {
//                                    print(objSchedule)
//
//                                    let ddd = objSchedule as! NSDictionary
//                                    let name = ddd.value(forKey: "msg") as! String
//
//                                    if name.isEmpty || name == ""{
//
//                                    }
//                                    else{
//                                        //Show alert or error message
//                                        self.showAlert(alertMessage: name)
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}

