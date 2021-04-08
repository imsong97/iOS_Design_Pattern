//
//  ViewModel.swift
//  iOS_MVVM
//
//  Created by YunHo on 2021/04/08.
//

import Foundation
import UIKit

// View Model
class DogViewModel{
    let dog:Dog
    let calender:Calendar
    
    init(dog:Dog){
        self.dog = dog
        self.calender = Calendar(identifier: .gregorian)
    }
    
    var name:String{
        return dog.name
    }
    
    var ageText:String{
        let today = calender.startOfDay(for: Date())
        let birth = calender.startOfDay(for: dog.birth)
        let components = calender.dateComponents([.year], from: birth, to: today)
        let age = components.year == nil ? 0 : components.year!
        
        return "\(age) years old"
    }
    
    var adoptionFeeText:String {
        switch dog.breed{
        case .maltese:
            return "maltese"
        case .pomeranian:
            return "pomeranian"
        case .poodle:
            return "poodle"
        case .pug:
            return "pug"
        }
    }
}

extension DogViewModel{
    func configure(_ view:DogView){
        view.nameLabel.text = name
        view.ageLabel.text = ageText
        view.adoptionFeeLabel.text = adoptionFeeText
    }
}
