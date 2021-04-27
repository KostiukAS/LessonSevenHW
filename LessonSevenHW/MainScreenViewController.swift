//
//  ViewController.swift
//  LessonSevenHW
//
//  Created by admin on 27.04.2021.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let background = mainView.backgroundColor else { return }
        guard segue.identifier ==  "editSegue" else { return }
        let editVC = segue.destination as! EditingViewController
        editVC.colorView.backgroundColor = background
    }
}

