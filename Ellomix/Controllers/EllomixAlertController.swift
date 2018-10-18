//
//  File.swift
//  Ellomix
//
//  Created by Kevin Avila on 10/18/18.
//  Copyright © 2018 Akshay Vyas. All rights reserved.
//

import UIKit

class EllomixAlertController {
    
    static func showAlert(viewController: UIViewController, title: String, message: String, handler: ((UIAlertAction) -> ())? = nil, completion: (() -> ())? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: handler))
        viewController.present(alert, animated: true, completion: completion)
    }
    
}
