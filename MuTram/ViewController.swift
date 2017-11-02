//
//  ViewController.swift
//  MuTram
//
//  Created by Pongdec><MacBook on 11/1/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit
import MapKit
import os.log
import CoreLocation

class ViewController: UIViewController , UISearchBarDelegate  {

    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius:Double = 1000
    @IBOutlet weak var myMapView: MKMapView!
    @IBAction func searchButton(_ sender: Any) {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController,animated: true,completion: nil)
        
        
    }
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) {
 
    }
    
    
    
    @IBOutlet weak var leftBtn: UIBarButtonItem!
    @IBOutlet weak var rightBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        myMapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
//        centerMapOnUserLocation()
        Menus()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    
    // Function RevealMenu
    func Menus(){
        if revealViewController() != nil {
            leftBtn.target = revealViewController()
            leftBtn.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 175
            revealViewController().rightViewRevealWidth = 160
            
            rightBtn.target = revealViewController()
            rightBtn.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
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
extension ViewController: MKMapViewDelegate{
    func centerMapOnUserLocation(){
        guard let coordinate = locationManager.location?.coordinate else{return}
        let coordinationRegion = MKCoordinateRegionMakeWithDistance(coordinate, regionRadius * 2.0, regionRadius * 2.0)
        myMapView.setRegion(coordinationRegion, animated: true)
    }
}

extension ViewController: CLLocationManagerDelegate{
    func configureLocationServices(){
        if authorizationStatus == .notDetermined{
            locationManager.requestAlwaysAuthorization()
            
        }else{
            return
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//        centerMapOnUserLocation()
    }
}


