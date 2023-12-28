//
//  ViewController.swift
//  Easyfy
//
//  Created by Matias Luna on 28/12/2023.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var title_label : UILabel!
    @IBOutlet var image_label : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .gray
        self.title_label.text = "Easyfy"
        self.title_label.backgroundColor = .green
    }
    
    @IBAction func importPicture(){
        let imagePicker : UIImagePickerController = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("H")
        let selectedImage : UIImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        print("Hello")
        self.image_label.image = selectedImage
        print("Selected.")
        self.dismiss(animated: true)
    }
    
    
        

    
    


}

