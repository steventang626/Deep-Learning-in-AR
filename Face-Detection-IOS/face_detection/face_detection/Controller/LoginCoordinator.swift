//
//  LoginCoordinator.swift
//  face_detection
//
//  Created by Steven Tang on 2018/4/25.
//  Copyright © 2018年 hadri. All rights reserved.
//

import Foundation
import ILLoginKit

class LoginCoordinator: ILLoginKit.LoginCoordinator {
    
    // MARK: - LoginCoordinator
    
    override func start(animated: Bool = true) {
        configureAppearance() // Configure before calling super
        super.start(animated: animated)
    }
    
    override func finish(animated: Bool = true) {
        super.finish(animated: animated)
    }
    
    // MARK: - Setup
    
    func configureAppearance() {
        // Customize LoginKit. All properties have defaults, only set the ones you want.
        // Customize the look with background & logo images, change colors, change placeholder & button texts
        
        // like this
        configuration = DefaultConfiguration(backgroundImage: #imageLiteral(resourceName: "Background"),
                                             tintColor: UIColor(red: 52.0/255.0, green: 152.0/255.0, blue: 219.0/255.0, alpha: 1),
                                             errorTintColor: UIColor(red: 253.0/255.0, green: 227.0/255.0, blue: 167.0/255.0, alpha: 1),
                                             signupButtonText: "Create Accountss",
                                             loginButtonText: "Sign In",
                                             facebookButtonText: "Login with book",
                                             forgotPasswordButtonText: "Forgot password?",
                                             recoverPasswordButtonText: "Recover",
                                             emailPlaceholder: "E-Mail",
                                             passwordPlaceholder: "Password!",
                                             repeatPasswordPlaceholder: "Confirm password!",
                                             namePlaceholder: "Name",
                                             shouldShowSignupButton: true,
                                             shouldShowLoginButton: true,
                                             shouldShowFacebookButton: true,
                                             shouldShowForgotPassword: true)
        
        // or like this
        //configuration = Settings.defaultLoginConfig
        
        // or you could also change each property directly, like this
        //configuration.backgroundImage = #imageLiteral(resourceName: "Background")
        
        // Or you could create your own type that conforms to ConfigurationSource protocol
    }
    
    // MARK: - Completion Callbacks
    
    override func login(email: String, password: String) {
        // Handle login via your API
        print("Login with: email =\(email) password = \(password)")
        finish()
    }
    
    override func signup(name: String, email: String, password: String) {
        // Handle signup via your API
        print("Signup with: name = \(name) email =\(email) password = \(password)")
    }
    
    override func enterWithFacebook() {
        print("here")
        // Handle Facebook login/signup via your API
        //print("Login/Signup via Facebook with: FB profile =\(profile)")
        
    }
    
    override func recoverPassword(email: String) {
        // Handle password recovery via your API
        print("Recover password with: email =\(email)")
    }
    
}

enum Settings {
    
    static let defaultLoginConfig = DefaultConfiguration(backgroundImage: #imageLiteral(resourceName: "Background"),
                                                         tintColor: UIColor(red: 52.0/255.0, green: 152.0/255.0, blue: 219.0/255.0, alpha: 1),
                                                         errorTintColor: UIColor(red: 253.0/255.0, green: 227.0/255.0, blue: 167.0/255.0, alpha: 1),
                                                         signupButtonText: "Create Accounts",
                                                         loginButtonText: "Sign In",
                                                         facebookButtonText: "Login with Facebook",
                                                         forgotPasswordButtonText: "Forgot password?",
                                                         recoverPasswordButtonText: "Recover",
                                                         emailPlaceholder: "E-Mail",
                                                         passwordPlaceholder: "Password!",
                                                         repeatPasswordPlaceholder: "Confirm password!",
                                                         namePlaceholder: "Name",
                                                         shouldShowSignupButton: true,
                                                         shouldShowLoginButton: true,
                                                         shouldShowFacebookButton: true,
                                                         shouldShowForgotPassword: true)
    
}
