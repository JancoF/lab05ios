//
//  ViewController.swift
//  TableView
//
//  Created by Noe Flores on 8/04/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var Tabla: UITableView!
    
    var contenidoCeldas = ["Recurso1", "Recurso2", "Recurso3" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tabla.dataSource = self
        Tabla.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //print("Hizo clic en la fila: \(indexPath.row)")
        let recursoSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: recursoSeleccionado)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaDosSegue"{
            let idrecursoRecibido = sender as! Int
            let pantalla2: ViewController2 = segue.destination as! ViewController2
            pantalla2.recursoRecibido = contenidoCeldas[idrecursoRecibido]
        }
    }


}

