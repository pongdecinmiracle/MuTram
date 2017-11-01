//
//  TramScheduleViewController.swift
//  MuTram
//
//  Created by Pongdec><MacBook on 11/1/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit

class TramScheduleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ViewController =  segue.destination as? ViewController {
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
