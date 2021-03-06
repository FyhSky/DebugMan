//
//  LogNavigationViewController.swift
//  exampleWindow
//
//  Created by Remi Robert on 20/01/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

import UIKit

class LogNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.isTranslucent = false //add by liman
        
        navigationBar.tintColor = Color.mainGreen
        navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20),
                                             NSAttributedStringKey.foregroundColor: Color.mainGreen]

        let selector = #selector(LogNavigationViewController.exit)
        
        let image = UIImage(named: "DebugMan_close", in: Bundle(for: LogNavigationViewController.self), compatibleWith: nil)
        let leftItem = UIBarButtonItem(image: image,
                                         style: .done, target: self, action: selector)
        leftItem.tintColor = Color.mainGreen
        topViewController?.navigationItem.leftBarButtonItem = leftItem
    }
    
    
    @objc func exit() {
        dismiss(animated: true, completion: nil)
    }
}
