//
//  ViewController.swift
//  360ViewVin
//
//  Created by Malvin Santoso on 20/06/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import UIKit
import Image360

class ViewController: UIViewController {
    var image360Controller: Image360Controller!
    var image1 = UIImage(named: "park_2048.jpeg")
    override func viewDidLoad() {
        super.viewDidLoad()
        self.image360Controller.image = image1
        self.image360Controller.isDeviceMotionControlEnabled = false
        
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifier = segue.identifier
       let destination = segue.destination as? Image360Controller
        self.image360Controller = destination
        self.image360Controller.imageView.observer = self.image360Controller as? Image360ViewObserver
        self.image360Controller.inertia = 1
    }
    @IBAction func nextImage(_ sender: Any) {
        image1 = UIImage(named: "picture2.jpeg")
        self.image360Controller.image = image1
    }
    
    @IBAction func previousImage(_ sender: Any) {
        image1 = UIImage(named: "picture1.jpeg")
        self.image360Controller.image = image1
    }
    

}
//extension ViewController: Image360ViewObserver{
//    func image360View(_ view: Image360View, didRotateOverXZ rotationAngleXZ: Float) {
//        <#code#>
//    }
//
//    func image360View(_ view: Image360View, didRotateOverY rotationAngleY: Float) {
//        <#code#>
//    }
//
//    func image360View(_ view: Image360View, didChangeFOV cameraFov: Float) {
//        r
//    }
    
    


