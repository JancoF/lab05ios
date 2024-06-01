//
//  ImagenDestinoViewController.swift
//  TableView
//
//  Created by Noe Flores on 31/05/24.
//

import UIKit

class ImagenDestinoViewController: UIViewController {
   
    @IBOutlet weak var imagenView: UIImageView!
    @IBOutlet weak var labelDestino: UILabel!
    
    var destino: String?
    var paisSeleccionado: String?
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Buscando imagen para destino: \(destino ?? "nil") en país: \(paisSeleccionado ?? "nil")")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDestino.text = destino
        
        if let nombreDestino = destino?.lowercased().replacingOccurrences(of: " ", with: "_"),
           let nombrePais = paisSeleccionado?.lowercased().replacingOccurrences(of: " ", with: "_") {
            let nombreCompleto = "\(nombrePais)/\(nombreDestino)"
            if let imagen = UIImage(named: nombreCompleto) {
                imagenView.image = imagen
            } else if let imagen = UIImage(named: nombreDestino) {
                imagenView.image = imagen
            } else {
                imagenView.image = UIImage(named: "nueva_york")
                print("No se encontró la imagen: \(nombreCompleto) ni \(nombreDestino)")
            }
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
