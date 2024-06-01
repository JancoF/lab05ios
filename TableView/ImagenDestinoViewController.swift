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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDestino.text = destino
        imagenView.image = UIImage(named: destino?.replacingOccurrences(of: " ", with: "_").lowercased() ?? "no_disponible")
           

        // Do any additional setup after loading the view.
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
