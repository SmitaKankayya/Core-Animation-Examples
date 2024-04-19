//
//  TableViewController.swift
//  CoreAnimationDemo
//
//  Created by Smita Kankayya on 19/04/24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet var animationTableView: UITableView!
    
    let viewControllers = [
        TableItem(title: "Move", viewController: MoveViewController()),
        TableItem(title: "Scale", viewController: ScaleViewController()),
        TableItem(title: "Rotate", viewController: RotateViewController()),
        TableItem(title: "Shake", viewController: ShakeViewController()),
        TableItem(title: "Circling", viewController: CirclingViewController()),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationTableView.dataSource = self
        animationTableView.delegate = self
    }
}

extension TableViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewControllers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animationTableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = viewControllers[indexPath.row].title
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
    }
}

extension TableViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let viewControllerIdentifiers = ["MoveViewController", "ScaleViewController", "RotateViewController", "ShakeViewController", "CirclingViewController"]
        
        guard indexPath.row < viewControllerIdentifiers.count else {
            return
        }
        
        if let viewController = self.storyboard?.instantiateViewController(withIdentifier: viewControllerIdentifiers[indexPath.row]) {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        
    }
}
