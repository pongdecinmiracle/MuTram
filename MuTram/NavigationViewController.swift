//
//  NavigationViewController.swift
//  MuTram
//
//  Created by Pongdec><MacBook on 11/1/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let Start = ["MCL","ตึกวิทยาศาสตร์","ตึกอธิการ","ประตู 4"]
    let Stop = ["MCL","ตึกวิทยาศาสตร์","ตึกอธิการ","ประตู 4"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return Start.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return Start[row]
        
    }

    
    @IBOutlet weak var stopNavigation: UIPickerView!
    @IBOutlet weak var startPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startPickerView.delegate = self
        self.startPickerView.dataSource = self
        startPickerView.selectRow(2, inComponent: 0, animated: true)
        self.stopNavigation.delegate = self
        self.stopNavigation.dataSource = self
        stopNavigation.selectRow(1, inComponent: 0, animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
