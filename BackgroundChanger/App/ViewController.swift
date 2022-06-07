//
//  ViewController.swift
//  ColorUserDefaults
//
//  Created by Ambroise COLLON on 08/10/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var backgroundImage: UIImageView!
    private let color = Color()

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        displaySelectedColor()
    }

    // MARK: - Actions

    @IBAction private func changeColor(_ sender: UIButton) {
        //view.backgroundColor = sender.backgroundColor
        color.selected = sender.titleLabel!.text!
        displaySelectedColor()
    }

    // MARK: - Private

    private func displaySelectedColor() {
        
        switch color.selected {
        case "Rouge":
            view.backgroundColor = UIColor.red
            backgroundImage.image = UIImage(imageLiteralResourceName: "crops")
            backgroundImage.isHidden = false
        case "Bleu":
            view.backgroundColor = UIColor.blue
            backgroundImage.image = UIImage(imageLiteralResourceName: "ocean")
            backgroundImage.isHidden = false
        case "Vert":
            view.backgroundColor = UIColor.green
            backgroundImage.image = UIImage(imageLiteralResourceName: "mountains")
            backgroundImage.isHidden = false
        default:
            view.backgroundColor = UIColor.systemGray2
            backgroundImage.isHidden = true
        }
    }
}
