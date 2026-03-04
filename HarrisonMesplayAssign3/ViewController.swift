//
//  ViewController.swift
//  HarrisonMesplayAssign3
//
//  Created by Mesplay, Harrison W. on 2/28/26.
//

import UIKit

class Dish {
    var name: String
    var imageName: String
    var description: String
    
    init(name: String, imageName: String, description: String) {
        self.name = name
        self.imageName = imageName
        self.description = description
    }
}
class ViewController: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var salsaButton: UIButton!
    @IBOutlet weak var sausageButton: UIButton!
    @IBOutlet weak var pestoButton: UIButton!
    
    @IBAction func unwindToHomeWithSegue(_ segue: UIStoryboardSegue){
        if let reviewVC = segue.source as? ReviewViewController{
            let rating = reviewVC.selectedRating
            statusLabel.text = "Your rating: \(rating) / 5 ⭐️"
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPasta"{
            let detailVC = segue.destination as! DetailViewController
            detailVC.selectedDish = pestoPasta
        }
    }
    @IBAction func sausageTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.selectedDish = sausageVeggies
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
    //3 dishes
    let salsaChicken = Dish(
        name: "Salsa Chicken",
        imageName: "salsa_chicken",
        description: "Ingredients: 2-3 lbs chicken breasts (or thighs), 1 jar (16 oz) salsa, 1 block (8 oz) cream cheese (optional, for creaminess), Tortillas or rice for serving.\nInstructions:Prep the Chicken: Place the chicken breasts or thighs in the bottom of a slow cooker. Season with salt and pepper if desired, although the salsa often provides enough flavor.\nAdd Salsa: Pour the entire jar of salsa over the chicken, ensuring it is well-covered.\nSlow Cook: Cover and cook on Low for 4–6 hours or High for 2–3 hours.\nShred: Once the chicken is tender and easily pulls apart, remove it to a bowl and shred it with two forks.\nAdd Cream Cheese\nCombine: Return the shredded chicken to the pot and stir to coat.\nServe: Serve hot on tortillas, over rice, or with chips.",
    )
    let sausageVeggies = Dish(
        name: "Sausage and Veggies",
        imageName: "sausage_veggies",
        description: "Ingredients: 1 package smoked sausage or kielbasa (sliced), 1 lb broccoli florets or asparagus, 2-3 bell peppers (diced), 2 tablespoons olive oil, 1 tablespoon Cajun or Italian seasoning.\nPrep: Preheat oven to 400°F (200°C). Line a large baking sheet with parchment paper or foil for easy cleanup.\nChop: Slice the sausage into 1/2-inch rounds. Chop the broccoli into bite-sized florets and dice the bell peppers.\nSeason: Place the sausage and vegetables onto the baking sheet. Drizzle with olive oil and sprinkle with the seasoning. Toss directly on the pan until everything is evenly coated, then spread into a single layer.\nRoast: Bake for 20–25 minutes, or until the vegetables are tender and the sausage is browned.\nServe: Serve immediately. This can be eaten as is, or over rice or quinoa.",
    )
    let pestoPasta = Dish(
        name: "Pesto Pasta",
        imageName: "pesto_pasta",
        description: "Ingredients: 1 lb pasta (rotini or penne), 1 jar (8 oz) basil pesto, 2 cups pre-cooked chicken (rotisserie chicken works best), 1 cup cherry tomatoes (halved).\nBoil Pasta: Bring a large pot of salted water to a boil. Cook the pasta according to package instructions until al dente.\nPrep Ingredients: While the pasta cooks, shred or cube the pre-cooked chicken and halve the cherry tomatoes.\nReserve Water: Before draining the pasta, reserve about 1/2 cup of the starchy pasta water.\nCombine: Drain the pasta and return it to the pot over low heat. Add the jar of pesto, the cooked chicken, and the cherry tomatoes.\nMix & Heat: Stir everything together until well-combined and heated through, about 2 minutes. If the sauce is too thick, add a splash of the reserved pasta water to make it creamy.\nServe: Serve with extra parmesan cheese if desired.",
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        salsaButton.layer.cornerRadius = 12
        salsaButton.clipsToBounds = true
        sausageButton.layer.cornerRadius = 12
        sausageButton.clipsToBounds = true
        pestoButton.layer.cornerRadius = 12
        pestoButton.clipsToBounds = true
        
    }
}

