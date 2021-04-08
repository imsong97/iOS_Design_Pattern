//
//  ViewController.swift
//  iOS_MVVM
//
//  Created by YunHo on 2021/04/08.
//

import UIKit

// View
class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let dogView = DogView()
        
        let birth = Date(timeIntervalSinceNow: (-2*86500*380))
        
        let pome = Dog(name: "pomeranian", birth: birth, breed: .pomeranian)
        
        let viewModel = DogViewModel(dog: pome)
        viewModel.configure(dogView)
        
        self.view.addSubview(dogView)
        
        dogView.translatesAutoresizingMaskIntoConstraints = false
        dogView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:135).isActive = true
        dogView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        dogView.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant:0.9).isActive = true
        dogView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant:-100).isActive = true
    }
}

// Model
class Dog{
    enum Breed {
        case maltese
        case pug
        case pomeranian
        case poodle
    }
    
    let name:String
    let birth: Date
    let breed: Breed
    
    init(name: String, birth:Date, breed:Breed){
        self.name = name
        self.birth = birth
        self.breed = breed
    }
}
