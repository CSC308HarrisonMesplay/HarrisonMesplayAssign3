//
//  DetailViewController.swift
//  HarrisonMesplayAssign3
//
//  Created by Mesplay, Harrison W. on 3/2/26.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedDish: Dish?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let dish = selectedDish {
            titleLabel.text = dish.name
            dishImageView.image = UIImage(named: dish.imageName)
            descriptionLabel.text = dish.description
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
