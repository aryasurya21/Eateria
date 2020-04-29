//
//  PlayerViewController.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import SnapKit

class FoodViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var rightBarButtonItem: UIBarButtonItem?
    private var navigator: FoodNavigator?
    private var viewModel: FoodViewModel
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Eateria"
        self.navigator = FoodNavigator(navigationController: self.navigationController)
        self.setupTableView()
        self.setupRightBarButton()
        self.setupColours()
        self.bindUI()
    }
    
    init(){
        self.viewModel = FoodViewModel()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    private func setupColours(){
        self.view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        self.tableView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }
    
    private func setupTableView(){
        self.tableView.register(UINib(nibName: "FoodTableViewCell", bundle: nil), forCellReuseIdentifier: "FoodTableViewCell")
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.rx.setDelegate(self).disposed(by: self.disposeBag)
        self.tableView.allowsSelection = true
        self.tableView.rx.modelSelected(Any.self)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext:{ [weak self] data in
            if let foodData = data as? FoodModel{
                self?.navigator?.goToDetail(foodData)
            }
            self?.deselectTableView()
        },onError: nil, onCompleted: nil, onDisposed: nil)
        .disposed(by: self.disposeBag)
    }
    
    private func deselectTableView(){
        if let index = self.tableView.indexPathForSelectedRow{
            self.tableView.deselectRow(at: index, animated: true)
        }
    }
    
    private func bindUI(){
        let didLoad = Driver.just(())
        
        let output = self.viewModel.transform(input: FoodViewModel.Input(
            refreshTrigger: didLoad
        ))
        
        output.data.drive(tableView.rx.items(cellIdentifier: "FoodTableViewCell", cellType: FoodTableViewCell.self)){ (_, data, cell) in
            cell.setCell(data)
        }.disposed(by: self.disposeBag)
    }
    
    private func setupRightBarButton(){
        self.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "avatarBarButton"), style: .plain, target: self, action: #selector(onRightBarButtonItemPressed))
        
        self.navigationItem.rightBarButtonItem = self.rightBarButtonItem
        
    }
    
    @objc func onRightBarButtonItemPressed(){
        self.navigator?.goToProfile()
    }
}

extension FoodViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 70))
                  
        let label = UILabel()
        label.text = "Eateria's Menu"
        label.textColor = UIColor.black
        label.font = UIFont(name: "Zapfino", size: 30.0)
        containerView.addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
       
        return containerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }
}
