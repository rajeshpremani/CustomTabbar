//
//  HomeViewController.swift
//  CustomTabbar
//
//  Created by Rajesh Kumar on 24/09/2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
}


//MARK: Setup View
private extension HomeViewController{
    func setView(){
        setTopView()
        setTableView()
    }
    
    func setTopView(){
        topView.clipsToBounds = true
        topView.layer.cornerRadius = 50
        topView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
    }
    
    func setTableView() {
        tableView.register(UINib.init(nibName: String(describing: HomeTableViewCell.self), bundle: .main), forCellReuseIdentifier: String(describing: HomeTableViewCell.self))
        self.tableView.backgroundColor = .clear
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MockData.homeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HomeTableViewCell.self)) as?
                HomeTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(data: MockData.homeData[indexPath.row])
        return cell
    }
    
}
