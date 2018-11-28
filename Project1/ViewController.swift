//
//  ViewController.swift
//  Project1
//
//  Created by Venkata Satya Harsha Vardhan Lolla on 11/27/18.
//  Copyright © 2018 Venkata Satya Harsha Vardhan Lolla. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    var mapView: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyD3YDqsLs_Wpyz9gwuYjVcVcC2MA5-VS_Q")
        let cameraPosition=GMSCameraPosition.camera(withLatitude: 32.770682, longitude: -117.067124, zoom: 15)
        mapView=GMSMapView.map(withFrame: CGRect.zero, camera: cameraPosition)
        let currentLocation=CLLocationCoordinate2D(latitude: 32.717368, longitude: -117.169599)
        let marker=GMSMarker(position: currentLocation)
        marker.title="My Home"
        marker.map=mapView
        view=mapView
        //next()
        let coordinate0 = CLLocation(latitude: 32.770682, longitude: -117.067124)
        let coordinate1 = CLLocation(latitude: 32.717368, longitude: -117.169599)
        let distanceInMeters = coordinate0.distance(from: coordinate1)
        print((distanceInMeters)/1609.34)
        navigationItem.rightBarButtonItem=UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(getter: self.next))
    }
    func next(){
        let nextLocation=CLLocationCoordinate2D(latitude: 32.882793, longitude: -117.120848)
        mapView?.camera=GMSCameraPosition.camera(withLatitude: nextLocation.latitude, longitude: nextLocation.latitude, zoom: 13)
        let marker=GMSMarker(position: nextLocation)
        marker.title="Miramar Air Show"
        marker.map=mapView
        view=mapView
    }
}

