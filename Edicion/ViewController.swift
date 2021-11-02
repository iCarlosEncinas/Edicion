//
//  ViewController.swift
//  Edicion
//
//  Created by Alumno on 11/1/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaContactoController
        celda.lblNombre.text = contactos[indexPath.row].Nombre
        celda.lblCorreo.text = contactos[indexPath.row].Correo
        celda.lblTelefono.text = contactos[indexPath.row].Telefono
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    var contactos : [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Contactos"
        
        contactos.append(Contacto(nombre: "Alexia Ruiz", correo: "-alexia@hotmail.com", telefono: "6442323463"))
        contactos.append(Contacto(nombre: "Carlos Encinas", correo: "carlos-encinas@hotmail.com", telefono: "6444205599"))
        contactos.append(Contacto(nombre: "Rubén Rubiusomg", correo: "rubenchetos@hotmail.com", telefono: "6444212223"))
    }


}

