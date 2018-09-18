//
//  ViewController.swift
//  UITapGestureAndAlert
//
//  Created by Ta Minh Tu on 9/18/18.
//  Copyright © 2018 Ta Minh Tu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tabGesture = UITapGestureRecognizer(target: self, action: #selector(tapTheView(_:)))
        self.subView.addGestureRecognizer(tabGesture)
    }

    @objc func tapTheView(_ sender: UITapGestureRecognizer) {
        let alert = UIAlertController(title: "Choose the color?", message: "Which color do you want to change?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Blue", style: .default, handler: changeColor))
        alert.addAction(UIAlertAction(title: "Green", style: .default, handler: changeColor))
        
        self.present(alert, animated: true)
    }
    
    func changeColor (action: UIAlertAction) {
        if (action.title == "Blue") {
            self.subView.backgroundColor = UIColor.blue
        }
        else {
            self.subView.backgroundColor = UIColor.green
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

