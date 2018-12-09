//
//  TrialListVC.swift
//  inocent
//
//  Created by User on 2018. 12. 8..
//  Copyright © 2018년 yulmong. All rights reserved.
//

import UIKit

class TrialListVC: UIViewController {

}


extension TrialListVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = UIStoryboard(name: "TrialDetail", bundle: nil).instantiateViewController(withIdentifier: "TrialDetailVC") as? TrialDetailVC else { return }
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension TrialListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrialListTableViewCell", for: indexPath) as! TrialListTableViewCell
        
        return cell
    }
}
