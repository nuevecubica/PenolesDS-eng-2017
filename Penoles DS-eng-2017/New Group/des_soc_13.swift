//
//  des_soc_13.swift
//  Penoles DS-2017
//
//  Created by alex vaught on 6/21/18.
//  Copyright © 2018 nuevecubica. All rights reserved.
//

import UIKit

class des_soc_13Page: ImagePage {
    override var viewController: UIViewController {
        return des_soc_13ViewController(image: UIImage(named: imageName)!)
    }
}

class des_soc_13ViewController: PageWithButtonsViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let imageScale = view.bounds.width / imageView.image!.size.width
        
        let icon = "plus"
        
        
        //*************************************
        //**************************************
        // Button Nivel de plomo
        //**************************************
        let button_np = UIButton(frame: CGRect())
        button_np.addTarget(self, action: #selector(button_np_Pressed(_:)), for: .touchUpInside)
        button_np.setImage(UIImage(named : icon), for: UIControlState.normal)
        imageView.addSubview(button_np)
        button_np.translatesAutoresizingMaskIntoConstraints = false
        
        // Image coords divided by 3
        NSLayoutConstraint.activate([
            button_np.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 40.0 * imageScale),
            button_np.topAnchor.constraint(equalTo: imageView.topAnchor, constant:  280.0 * imageScale)
            ])
        //*************************************
        
    }
    
    //*****************************************
    // PRESS FUNCTIONS
    //*****************************************
    
    @IBAction func button_np_Pressed(_ sender: UIButton) {
        showImagePopup(image:#imageLiteral(resourceName: "pag13_NiveldePlomoenSangre"))
    }
    
}
