//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Dany Asencio on 8/10/16.
//  Copyright © 2016 Dany Asencio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var nombreHamburguesa: UILabel!
    
    let pais = ColeccionDePaises()
    let hamburguesa = ColeccionDeHamburguesas()
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dameUnaHamburguesa() {
        nombrePais.text = pais.obtenPais()
        nombreHamburguesa.text = hamburguesa.obtenHamburguesa()
        view.backgroundColor = colores.regresaColorAleatorio()
        view.tintColor = colores.regresaColorAleatorio()
        
    }
}

