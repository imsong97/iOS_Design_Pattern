//
//  View.swift
//  iOS_MVVM
//
//  Created by YunHo on 2021/04/08.
//

import Foundation
import UIKit

// View
// 스토리보드 없이 UI 구현
class DogView: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 30/255, alpha: 1)
        
        addSubview(nameLabel)
        addSubview(ageLabel)
        addSubview(adoptionFeeLabel)
        
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: self.widthAnchor, constant:0.9).isActive = true
        nameLabel.heightAnchor.constraint(equalTo: self.heightAnchor, constant:0.9).isActive = true
        
        ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20).isActive = true
        ageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0).isActive = true
        
        adoptionFeeLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 20).isActive = true
        adoptionFeeLabel.leadingAnchor.constraint(equalTo: ageLabel.leadingAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        
        nameLabel.textAlignment = .left
        nameLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic", size: 20)
        nameLabel.textColor = .white
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return nameLabel
    }()
    
    let ageLabel: UILabel = {
        let ageLabel = UILabel()
        
        ageLabel.textAlignment = .left
        ageLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic", size: 20)
        ageLabel.textColor = .white
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return ageLabel
    }()
    
    let adoptionFeeLabel: UILabel = {
        let adoptionFeeLabel = UILabel()
        
        adoptionFeeLabel.textAlignment = .left
        adoptionFeeLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic", size: 20)
        adoptionFeeLabel.textColor = .white
        adoptionFeeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return adoptionFeeLabel
    }()
}
