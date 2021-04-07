//
//  ViewController.swift
//  iOS_MVC
//
//  Created by YunHo on 2021/04/07.
//

import UIKit

// MVC - Controller
class ViewController: UIViewController {
    
    let person = Person(name:"song", gender:"male", age:25)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ExampleView(frame: CGRect(x:0, y:0, width: 250, height: 250))
        myView.center = view.center
        myView.configure(with: "\(person.name), \(person.age)")
        view.addSubview(myView)
    }

}

// MVC - Model
struct Person {
    let name:String
    let gender:String
    let age:Int
}

