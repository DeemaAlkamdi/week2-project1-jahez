//
//  VC2.swift
//  DeliveryFoodApp
//
//  Created by dmdm on 10/10/2021.
//

import UIKit

class VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC1!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "FoodCell",
            for: indexPath ) as! Cell2
        
        cell.foodName.text = food.name
        cell.foodPrice.text = "\(food.price)"
        cell.foodImage.image = UIImage(named: food.image)
        return cell
    }
    
    
    var restFromVC1: Rest? 
        
    @IBOutlet weak var menuTV: UITableView!
    
    @IBOutlet weak var restLogo: UIImageView!
    
    @IBOutlet weak var restName: UILabel!
    
    @IBOutlet weak var restType: UILabel!
    
    @IBOutlet weak var restState: UILabel!
    
    @IBOutlet weak var restRating: UILabel!
    
    @IBOutlet weak var restVsitor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restName.text = restFromVC1?.name
        restType.text = restFromVC1?.type
        restState.text = restFromVC1?.state
        restLogo.image = UIImage(named: restFromVC1!.logo)
        restRating.text = "\(restFromVC1!.rating)"
        
        let oldValue = counter[restFromVC1!.name] ?? 0
        restVsitor.text = "\(oldValue)"
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
    
}
