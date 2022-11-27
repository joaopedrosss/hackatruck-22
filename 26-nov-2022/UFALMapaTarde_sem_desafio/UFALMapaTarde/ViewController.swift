//
//  ViewController.swift
//  UFALMapaTarde
//
//  Created by Student on 26/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapa: MKMapView!
    
    var locationManager = CLLocationManager()//gerenciar localizacao
    
    var userLocation = CLLocation()//localizar dispositivo movel
    
    // 1 - configuar mapa
    func setupLocationManager(){
        
        locationManager.delegate = self //"delegate, faca oque quiser aqui"
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //definir a precisao
        
        locationManager.requestWhenInUseAuthorization()//mensgaem info.plist
        
        locationManager.startUpdatingLocation()//atualizar a localizacao ; devolver um pacote com um array [CLLLOC]
        
    }
    
    //2 - definir localizaco do usuario
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]){
        
        if locations.count > 0{
            if let location = locations.last{
                userLocation = location
                print("A localizacao atual eh \(userLocation.coordinate)")
            }
        }
    }
    
    // 3 - adcionar um ponto no mapa
    
    @objc func addAnotationToMap(gestureRecognizer: UIGestureRecognizer){
        let touchPoint = gestureRecognizer.location(in: mapa)//recber o toque na tela
        
        let newCoordinate : CLLocationCoordinate2D = mapa.convert(touchPoint, toCoordinateFrom:mapa)
        
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Picole do JAJA"
        
        newAnnotation.subtitle = String(describing: "latitute: \(newCoordinate.latitude) longitutde: \(newCoordinate.longitude)")
        
        mapa.addAnnotation(newAnnotation)
        
    }
    // 4 - configurar o long press no mapa
    func addGesture(){
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnotationToMap(gestureRecognizer:)))
        
        longPress.minimumPressDuration = 0.8
        mapa.addGestureRecognizer(longPress)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mapa.showsUserLocation = true
        setupLocationManager()
        addGesture()
        
    }


}

