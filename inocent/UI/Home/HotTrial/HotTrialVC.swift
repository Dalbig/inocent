//
//  HotTrialVC.swift
//  inocent
//
//  Created by User on 2018. 12. 9..
//  Copyright © 2018년 yulmong. All rights reserved.
//

import UIKit

class HotTrialVC: UIViewController {

}

extension HotTrialVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = UIStoryboard(name: "TrialDetail", bundle: nil).instantiateViewController(withIdentifier: "TrialDetailVC") as? TrialDetailVC else { return }
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension HotTrialVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HotTrialCollectionViewCell", for: indexPath) as! HotTrialCollectionViewCell
        
        return cell
    }
}
