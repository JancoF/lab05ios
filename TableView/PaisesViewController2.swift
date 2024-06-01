//
//  PaisesViewController2.swift
//  TableView
//
//  Created by Noe Flores on 1/06/24.
//

import UIKit

class PaisesViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tablaPaises: UITableView!
    
    
        let paises = ["Estados Unidos", "Francia", "Japón", "México", "Italia"]
        let destinos = [
            ["Nueva York", "Las Vegas", "San Francisco"],
            ["París", "Niza", "Lyon"],
            ["Tokio", "Kioto", "Osaka"],
            ["Ciudad de México", "Cancún", "Oaxaca"],
            ["Roma", "Venecia", "Florencia"]
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tablaPaises.delegate = self
        tablaPaises.dataSource = self
        title = "Países"
    }
    
   
 
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return paises.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaisCell", for: indexPath)
        cell.textLabel?.text = paises[indexPath.row]
               return cell
    }
    //puede ser cambiado
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           performSegue(withIdentifier: "mostrarDestinos", sender: indexPath.row)
       }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "mostrarDestinos" {
                let destinosVC = segue.destination as! DestinosViewController2
                let indice = sender as! Int
                destinosVC.pais = paises[indice]
                destinosVC.destinos = destinos[indice]
            }
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
