//
//  ViewController.swift
//  Peliculas
//
//  Created by Alumno on 9/18/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableView, UITableViewDataSource {
    
    var peliculas : [Pelicula] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "Sharknado", director: "Chikimarko", año: 2019))
        peliculas.append(Pelicula(titulo: "Super Cool", director: "Tarantino", año: 2005))
        peliculas.append(Pelicula(titulo: "Hangover", director: "Nolan", año: 2012))
    
    }
    
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Que tantas filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    //Contenido de cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        
        celda?.lblPelicula.text = peliculas[indexPath.row].titulo
        celda?.lblDirector.text = peliculas[indexPath.row].director
        celda?.lblAño.text = peliculas[indexPath.row].director
        
        return celda!
    }


}

