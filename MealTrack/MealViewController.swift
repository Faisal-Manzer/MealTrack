//
//  MealViewController.swift
//  MealTrack
//
//  Created by Faisal Manzer on 25/04/18.
//  Copyright © 2018 Faisal Manzer. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //MARK: Properties
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var imagePicker: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    //MARK: DefaultValues
    let defaultTextInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textInput.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }

    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismissPicker()
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Changing the imageView image to selectedImage
        imagePicker.image = selectedImage
        
        dismissPicker()
    }
    
    //MARK: Action
    @IBAction func pickImageFromPhotos(_ sender: UITapGestureRecognizer) {
        
        print("ok")
        hideKeyboard()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    //MARK: HelperFunction
    func hideKeyboard(){
        // Hide Keyboard
        textInput.resignFirstResponder()
    }
    func dismissPicker() {
        dismiss(animated: true, completion: nil)
    }
    
}

