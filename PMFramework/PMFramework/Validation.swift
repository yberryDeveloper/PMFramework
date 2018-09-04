/*

import Foundation

extension String
{
    var length: Int
    {
        return self.count
    }
    
    //Email Validation
    static func isValidEmail(strTest: String) -> Bool
    {
        let emailRegEx = "(?:[a-zA-Z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-zA-Z0-9!#$%\\&'*+/=?\\^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-zA-Z0-9-]*[a-zA-Z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: strTest)
    }
    
    //Phone Number validation
    static func isValidPhoneNo(strCheckMobileNumberLength: String) -> Bool
    {
        
        let PHONE_REGEX = "[6-9]{1}[0-9]{9}";
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: strCheckMobileNumberLength)
        return result
    }
    
    static func isValidPancardNumber(value: String) -> Bool
    {
        let PAN_REGEX = "[A-Z]{5}[0-9]{4}[A-Z]{1}"
        let panNumberTest = NSPredicate(format: "SELF MATCHES %@", PAN_REGEX)
        let result =  panNumberTest.evaluate(with: value)
        return result
    }
    
    static func isValidIFSCNumber(value: String) -> Bool
    {
        let PAN_REGEX = "[A-Z|a-z]{4}[0][a-zA-Z0-9]{6}"
        let panNumberTest = NSPredicate(format: "SELF MATCHES %@", PAN_REGEX)
        let result =  panNumberTest.evaluate(with: value)
        return result
    }
    
    static func isValidPincode(value: String!) -> Bool
    {
        let PIN_REGEX = "([1-9])([0-9]){5}"
        let pinNumberTest = NSPredicate(format: "SELF MATCHES %@", PIN_REGEX)
        let result =  pinNumberTest.evaluate(with: value)
        return result
    }
    
    static func isValidAadharNo(value: String) -> Bool
    {
        
        let PIN_REGEX = "[2-9]{1}[0-9]{11}"
        let pinNumberTest = NSPredicate(format: "SELF MATCHES %@", PIN_REGEX)
        let result =  pinNumberTest.evaluate(with: value)
        return result
    }
    
    
    //Length validation
    static func isValidLength(strCheckForLength: String) -> Bool
    {
        if strCheckForLength.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).length > 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    static func isValidMobileNumberLength(strCheckMobileNumberLength: String) -> Bool
    {
        if strCheckMobileNumberLength.count < 10
        {
            return false
        }
        else
        {
            return true
        }
    }
    
    static func isValidPinCodeLength(strPincodeLength: String) -> Bool
    {
        if strPincodeLength.count < 6
        {
            return false
        }
        else
        {
            return true
        }
    }
    
    //Password Validation : Check current and confirm is same.
    static func isPwdsSame(password: String , confirmPassword : String) -> Bool
    {
        if password == confirmPassword
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    //Password length validation : length should grater than 7.
    static func isPwdLenth(password: String , confirmPassword : String, length: Int) -> Bool
    {
        if password.count <= length && confirmPassword.count <= length
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    static func isValidIFSCCodeLength(strCheckIFSCCodeLength: String) -> Bool
    {
        if strCheckIFSCCodeLength.count < 11
        {
            return false
        }
        else
        {
            return true
        }
    }
    
    static func isValidAccountNumberLength(strCheckAccNumberLength: String) -> Bool
    {
        if strCheckAccNumberLength.count >= 8 && strCheckAccNumberLength.count <= 20
        {
            return true
        }
        else
        {
            return false
        }
    }
    
}
*/
