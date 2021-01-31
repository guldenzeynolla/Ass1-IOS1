//
//  HistoryViewController.swift
//  Ass1_IOS1
//
//  Created by Гулден Зейнолла on 27.01.2021.
//

import UIKit

class HistoryViewController: UIViewController {
    var arr = [HistoryItem]()
    let cellid = "TableViewCell"
    
    @IBOutlet weak var tableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        testDataConfigure()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        self.configureTableView()

    }
    
    func testDataConfigure(){
        arr.append(HistoryItem(id: 1,attempt: "1 att", histScore: "2"))
    
        tableView.reloadData()
        
    }
    
    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellid, bundle: nil), forCellReuseIdentifier: cellid)
        tableView.tableFooterView = UIView()
    }


}

    extension HistoryViewController: UITableViewDelegate, UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arr.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as! TableViewCell
            let item = arr[indexPath.row]
            cell.attemptLabel.text = item.attempt
            cell.histScoreLabel.text = item.histScore
            
            return cell        }

}
