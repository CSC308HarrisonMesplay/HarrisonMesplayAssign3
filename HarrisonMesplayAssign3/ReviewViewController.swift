//
//  ReviewViewController.swift
//  HarrisonMesplayAssign3
//
//  Created by Mesplay, Harrison W. on 3/2/26.
//

import UIKit

class ReviewViewController: UIViewController {
    var selectedRating: Int = 0
    @IBOutlet var starButtons: [UIButton]!
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBAction func starTapped(_ sender: UIButton) {
        selectedRating = sender.tag
        updateStars()
    }
    
    func updateStars(){
        for button in starButtons{
            if button.tag <= selectedRating{
                button.setImage(UIImage(systemName: "star.fill"), for: .normal)
            }else{
                button.setImage(UIImage(systemName: "star"), for: .normal)
            }
            ratingLabel.text = "Your Rating: \(selectedRating)/5 ⭐️"
        }
    }
    
    @IBAction func sumbitTapped(_ sender: UIButton) {
        guard selectedRating > 0 else {
            let alert = UIAlertController(title: "No Rating Selected", message: "Please select a star rating before submitting.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        performSegue(withIdentifier: "unwindToHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
