//
//  ColorsViewController.swift
//  RandomColors
//
//  Created by Kresimir Ivanjko on 22.02.2023..
//

import UIKit

class ColorsViewController: UIViewController {
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! DetailsViewController
        destinationViewController.color = sender as? UIColor
    }
}

extension ColorsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
}
