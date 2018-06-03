//
//  UITextView+Validator.swift
//  Validator
//
//  Created by Adam Waite on 31/10/2016.
//  Copyright © 2016 adamjwaite.co.uk. All rights reserved.
//

import UIKit

extension UITextView: ValidatableInterfaceElement {
    
    public typealias InputType = String
    
    @objc open var inputValue: String? { return text }
    
    @objc open func validateOnInputChange(enabled: Bool) {
        switch enabled {
        case true: NotificationCenter.default.addObserver(self, selector: #selector(validate), name: .UITextViewTextDidChange, object: self)
        case false: NotificationCenter.default.removeObserver(self, name: .UITextViewTextDidChange, object: self)
        }
    }
    
    @objc internal func validate(_ sender: Notification) {
        validate()
    }
    
}
