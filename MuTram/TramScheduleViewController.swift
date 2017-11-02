//
//  TramScheduleViewController.swift
//  MuTram
//
//  Created by Pongdec><MacBook on 11/1/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit

class TramScheduleViewController: UIViewController {
    

    @IBOutlet weak var mlcRedFlag: UIButton!
    @IBOutlet weak var mlcGreenFlag: UIButton!
    @IBOutlet weak var mlcBlueFlag: UIButton!
    
    @IBOutlet weak var scRedFlag: UIButton!
    @IBOutlet weak var scGreenFlag: UIButton!
    @IBOutlet weak var scBlueFlag: UIButton!
    @IBOutlet weak var scYellowFlag: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


                mlcRedFlag.layer.cornerRadius = 10
                mlcRedFlag.layer.borderWidth = 1
                mlcRedFlag.layer.borderColor = UIColor.black.cgColor
        
        mlcGreenFlag.layer.cornerRadius = 10
        mlcGreenFlag.layer.borderWidth = 1
        mlcGreenFlag.layer.borderColor = UIColor.black.cgColor
        
        mlcBlueFlag.layer.cornerRadius = 10
        mlcBlueFlag.layer.borderWidth = 1
        mlcBlueFlag.layer.borderColor = UIColor.black.cgColor
        
        scRedFlag.layer.cornerRadius = 10
        scRedFlag.layer.borderWidth = 1
        scRedFlag.layer.borderColor = UIColor.black.cgColor
        
        scGreenFlag.layer.cornerRadius = 10
        scGreenFlag.layer.borderWidth = 1
        scGreenFlag.layer.borderColor = UIColor.black.cgColor
        
        scBlueFlag.layer.cornerRadius = 10
        scBlueFlag.layer.borderWidth = 1
        scBlueFlag.layer.borderColor = UIColor.black.cgColor
        
        scYellowFlag.layer.cornerRadius = 10
        scYellowFlag.layer.borderWidth = 1
        scYellowFlag.layer.borderColor = UIColor.black.cgColor
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backBtn(segue: UIStoryboardSegue) {
        
        self.navigationController?.popViewController(animated: true)
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
