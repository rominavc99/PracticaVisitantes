//
//  ViewController.swift
//  PracticaVisitantes
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var lblNombre: UITextField!
    
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var sldTemperatura: UISlider!
    
    @IBOutlet weak var btnCapturar: UIButton!
    @IBOutlet weak var imagenResultado: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    
    
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagenResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCapturar.isEnabled = true
        sldTemperatura.isEnabled = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doChangeTemperatura(_ sender: Any) {
        lblTemperatura.text = "\(String(format: "%.1f", sldTemperatura.value))°C"
        //if sldTemperatura.value >= 38.0 {
         //   lblTemperatura.textColor = UIColor.red
        //}
       // else {
        //    lblTemperatura.textColor = UIColor.black
        //}
        if sldTemperatura.value < 38.0{
            lblTemperatura.textColor = UIColor.black
        }
        else {
            lblTemperatura.textColor = UIColor.red
        }
        
        
        
    }
    
    @IBAction func doTapCapturar(_ sender: Any) {
        if sldTemperatura.value >= 38.0 {
            imagenResultado.image = UIImage(named: "incorrecto")
            lblResultado.text = "Ingreso NO autorizado de \(lblNombre.text!)"
            
        }
        else{
            imagenResultado.image = UIImage(named: "correcto")
            lblResultado.text = "Ingreso autorizado de \(lblNombre.text!)"
            
        }
        
        imagenResultado.isHidden = false
        lblResultado.isHidden = false
        btnNuevo.isHidden = false
        btnCapturar.isEnabled = false
        sldTemperatura.isEnabled = false
        lblNombre.isEnabled = false
        sldTemperatura.tintColor = UIColor.gray
        
        
    }
    
    
    @IBAction func doTapNuevo(_ sender: Any) {
        imagenResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        sldTemperatura.isEnabled = true
        btnCapturar.isEnabled = true
        sldTemperatura.tintColor = UIColor.systemBlue
        lblNombre.text = ""
        lblNombre.isEnabled  = true
    }
    
    
    
    
    


}

