//
//  ViewController.swift
//  Randomphoto
//
//  Created by MacBookPro on 3/23/22.
//

import UIKit

class ViewController: UIViewController {

    private let imageview: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView .backgroundColor = .white
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor =  .orange
        button.setTitle("Click here", for: .normal)
        button.setTitleColor(.black,for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        view.addSubview(imageview)
        imageview.frame = CGRect(x: 0, y: 0, width: 400, height:600)
        imageview.center = view.center
        view.addSubview(button)
        getRandomPhoto()
        button.addTarget(self, action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    @objc func didTapButton(){
         getRandomPhoto()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
    
    
     button.frame = CGRect(x: 30,
                              y:
                            view.frame.size.height-150-view.safeAreaInsets.bottom,
                              width: view.frame.size.width-60
                              , height: 55)
     
       
        
      
        }
        
        func getRandomPhoto() {
            let urlString =
            "https://source.unsplash.com/random/600*600"
            let url = URL(string: urlString)!
            guard let data = try? Data(contentsOf: url) else{
                return
            }
            imageview.image=UIImage(data: data)
        }
            
            
        }
    
    



