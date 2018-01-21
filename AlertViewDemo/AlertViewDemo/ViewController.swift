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
    
    func simpleAlertView(title: String , message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        //This is New lime
        alertController.addAction(ok)
   //     alertController.addAction(yes)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func alertActionPressed(_ sender: UIButton) {
          alertView(title: "Do You like tea", message: "YES OR NO") // ali Naveed
          // this is more improve version of commit style
    func responseAlertView(title: String , message: String) {
        
        let alertCotroller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let yes = UIAlertAction(title: "YES", style: .default) { (responseAction) in
            
            self.performSegue(withIdentifier: "SecondVC", sender: self)
        }
        let no = UIAlertAction(title: "NO", style: .default, handler: nil)
        alertCotroller.addAction(yes)
        alertCotroller.addAction(no)
        present(alertCotroller, animated: true, completion: nil)
    }
    
    @IBAction func alertActionPressed(_ sender: UIButton) {
        
          simpleAlertView(title: "2 + 2 = 4", message: "") // ali bajwa

  }
  
    @IBAction func responseAlertPressed(_ sender: UIButton) {
        
      responseAlertView(title: "Do you like pizza", message: "YES or No")
       
    }
    
    
    
}

