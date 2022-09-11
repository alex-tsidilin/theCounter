//
//  ViewController.swift
//  sprint3counter
//
//  Created by Alexey Tsidilin on 11.09.2022.
//

import UIKit

//Делаю градиентный бэкграунд
extension UIView {
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}

class ViewController: UIViewController {

    // Делаю связи с элементами в Main
    @IBOutlet var mainContainer: UIView!
    @IBOutlet weak var theOnlyButton: UIButton!
    @IBOutlet weak var counterView: UILabel!
    
    //Переменные
    var counterValue: Int = 0
    
    

    
    //Что происходит при загрузке приложения
    override func viewDidLoad() {
        super.viewDidLoad()
        mainContainer.applyGradient(colours: [UIColor(red: 0.25, green: 0.56, blue: 0.57, alpha: 0.80), UIColor(red: 0.16, green: 0.37, blue: 0.38, alpha: 0.80)], locations: [0.0, 1.0])
        theOnlyButton.tintColor = UIColor(red: 0.16, green: 0.37, blue: 0.38, alpha: 1.00)
        counterView.textColor = UIColor(red: 0.80, green: 0.64, blue: 0.63, alpha: 1.00)
        counterView.shadowColor = UIColor(red: 0.58, green: 0.49, blue: 0.49, alpha: 1.00)
        counterView.text = "\(counterValue)"
        // Do any additional setup after loading the view.
    }
    
    //Экшены
    @IBAction func plusOne(_ sender: Any) {
        counterValue += 1
        counterView.text = "\(counterValue)"
    }
    


}

