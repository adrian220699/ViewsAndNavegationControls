//
//  ViewController.swift
//  ViewsAndNavegationControls
//
//  Created by Adrian Flores Herrera on 7/30/24.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFakeView: UIView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My View Controller"
  
        myWebView.load(URLRequest(url: URL(string: "https://google.mx")!))
        
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 42.1392, longitude: 87.9290)
        
    }
    @IBAction func myButtonAction(_ sender: Any) {
        
        myFakeView.isHidden = true
        
    }
    
}

