//
//  EmailValidate.swift
//  ValidatorSwift
//
//  Created by MacBook on 18/06/23.
//

import Foundation


class EmailValidate {
    
    static func validateEmail(email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}


class PasswordValidate {
    //At least ONE letter
    //At least one digit
    //At least 8 characters in total
    static func validatePassword(_ password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: password)
    }
}

class PasswordValidateWithName {
    static func isPasswordValid(password: String, name: String) -> Bool {
        let lowercasePassword = password.lowercased()
        let lowercaseName = name.lowercased()
        
        // Check if the password contains the name
        if lowercasePassword.contains(lowercaseName) {
            return false
        }
        
        // Additional password validation checks can be added here
        // For example, you can check for minimum length, required characters, etc.
        
        // If all checks pass, the password is considered valid
        return true
    }
}



