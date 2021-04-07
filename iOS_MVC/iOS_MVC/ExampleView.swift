//
//  ExampleView.swift
//  iOS_MVC
//
//  Created by YunHo on 2021/04/07.
//

import UIKit

// MVC - View
// cocoa touch class
class ExampleView: UIView {

    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .red
        addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with name:String){
        label.text = name
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(
            x:10 ,y:10, width: frame.size.width - 20, height: frame.size.height - 20
        )
    }
    
}
