//
//  ViewController.swift
//  AutoConstraint_Programtically
//
//  Created by prog on 2/20/19.
//  Copyright © 2019 prog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let bearImageView : UIImageView = {
        let image = UIImage(named: "bear_first") ?? nil
        let imageView = UIImageView(image:image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    let textView:UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "join us today to have fun and games", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\n \n \n are you ready for loads and loads of fun? dont wait anylonger we are hoping to be on the stores soon", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13),NSAttributedString.Key.foregroundColor:UIColor.gray]))
        textView.attributedText = attributedText
    textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
       setUpLayout()
        
        
    }
    private func setUpLayout(){
        
        let topContainerView = UIView()
//        topContainerView.backgroundColor = .gray
       
        
        
        
        
        view.addSubview(topContainerView)
        view.addSubview(textView)
        
        topContainerView.translatesAutoresizingMaskIntoConstraints=false
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        //add topcontainer  for halfof view and add bearimage view into it
        topContainerView.addSubview(bearImageView)
        
        
        bearImageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        bearImageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        textView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: 0).isActive = true
        textView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        textView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
    }

}

