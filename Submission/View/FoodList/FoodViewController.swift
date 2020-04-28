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

class FoodViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var rightBarButtonItem: UIBarButtonItem? = nil
    private var viewModel: FoodViewModel
    private var disposeBag = DisposeBag()
    private var navigator: FoodNavigator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigator = FoodNavigator(navigationController: self.navigationController)
        self.setupTableView()
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
    
    private func setupTableView(){
        self.tableView.register(UINib(nibName: "FoodTableViewCell", bundle: nil), forCellReuseIdentifier: "FoodTableViewCell")
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.rx.setDelegate(self).disposed(by: self.disposeBag)
        self.tableView.allowsSelection = true
        self.tableView.rx.modelSelected(Any.self)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext:{ [weak self] data in
            if let foodData = data as? FoodResponseWrapper{
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
        self.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "avatar"), style: .plain, target: self, action: #selector(onRightBarButtonItemPressed))
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
}
