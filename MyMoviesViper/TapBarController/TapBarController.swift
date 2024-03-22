//
//  TapBarController.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 20/03/24.
//

import UIKit


class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view1 = self.createNavController(for:  MostPopularMoviesRouter.createModule(), title: "Most popular", image: UIImage(systemName: "star.fill") ?? UIImage())
        let view2 = self.createNavController(for: UpcomingResponseRouter.createModule(), title: "Upcoming", image: UIImage(systemName: "arrowshape.zigzag.forward.fill") ?? UIImage())
        let view3 = self.createNavController(for: NowPlayingMoviesRouter.createModule(), title: "Playing Now", image: UIImage(systemName: "play.fill") ?? UIImage())

        self.viewControllers = [ view1, view2, view3]
    }

    func createNavController(for mainViewController: UIViewController, title: String, image : UIImage ) -> UIViewController {
        let navController = UINavigationController(rootViewController: mainViewController)
        navController.tabBarItem.title = "\(title)"
        mainViewController.navigationItem.title = "\(title)"
        navController.tabBarItem.image = image
        mainViewController.navigationItem.backButtonTitle = "Atras"
        return navController
    }
}
