//
//  ViewController.swift
//  AlertViewDemo
//
//  Created by Ali Bajwa on 21/01/2018.
//  Copyright © 2018 SSASoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alertView(title: String , message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let yes = UIAlertAction(title: "YES", style: .cancel, handler: nil)
        let no = UIAlertAction(title: "YES", style: .default, handler: nil)
        
        alertController.addAction(no)
        alertController.addAction(yes)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func alertActionPressed(_ sender: UIButton) {
          alertView(title: "Do You like pizza", message: "YES OR NO")
    }
    


}

