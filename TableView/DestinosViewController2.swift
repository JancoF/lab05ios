//
//  DestinosViewController2.swift
//  TableView
//
//  Created by Noe Flores on 1/06/24.
//

import UIKit

class DestinosViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    @IBOutlet var tablaDestinos: UITableView!
    
      var pais: String?
      var destinos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaDestinos.delegate = self
        tablaDestinos.dataSource = self
        title = pais


    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return destinos.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DestinoCell", for: indexPath)
        cell.textLabel?.text = destinos[indexPath.row]
        return cell
    }
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mostrarImagen", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "mostrarImagen" {
                let imagenVC = segue.destination as! ImagenDestinoViewController
                let indice = sender as! Int
                imagenVC.destino = destinos[indice]
            }
        }
  

}
