//
//  MovieDetailsViewController.swift
//  MovieApp
//
//  Created by Marin Maletić on 30.03.2022..
//

import Foundation
import SnapKit


class MovieDetailsViewController: UIViewController {
    
    private var topView: UIView!
    private var middleView: UIView!
    private var bottomView: UIView!
    private var bottomtrack : UIView!
    private var logoView: UIImageView!
    let logoImg = UIImage(named:"logo.png")
    private var movieView: UIImageView!
    let movieImg = UIImage(named:"ironman.png")
    private var backButton: UIButton!
    let buttonImg = UIImage(named:"backButton.png")
    private var listButton : UIButton!
    let listImg = UIImage(named:"Vectorlist.png")
    private var heartButton : UIButton!
    let heartImg = UIImage(named:"Vectorheart.png")
    private var bookmarkButton : UIButton!
    let bookmarkImg = UIImage(named:"Vectorbookmark.png")
    private var starButton : UIButton!
    let starImg = UIImage(named:"Vectorstar.png")
    private var homeButton : UIButton!
    private var favouritesButton : UIButton!
    

    private var percentage: UILabel!
    private var userscore: UILabel!
    private var movieName: UILabel!
    private var movieYear: UILabel!
    private var movieDetails: UILabel!
    private var overviewHeadline: UILabel!
    private var overview: UILabel!
    private var characters: UILabel!
    private var characters2: UILabel!
    private var characters3: UILabel!
//    private var homeicon: UILabel!
//    private var favicon: UILabel!
    let homeiconImg = UIImage(named:"Homeicon.png")
    let faviconImg = UIImage(named:"Favicon.png")
    private var homeicon: UIImageView!
    private var home: UILabel!
    private var favicon: UIImageView!
    private var fav: UILabel!
    
    
//    view.safeAreaLayoutGuide.bottomAnchor.
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        buildViews()
        addConstraints()
        
    }
    
    
    private func buildViews() {
        view.backgroundColor = .white
        
        topView = UIView()
        topView.backgroundColor = .white
        topView.layer.backgroundColor = UIColor(red: 0.043, green: 0.145, blue: 0.247, alpha: 1).cgColor

        middleView = UIView()
        middleView.backgroundColor = .white
        
        bottomView = UIView()
        bottomView.backgroundColor = UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1)
        
        bottomtrack = UIView()
        bottomtrack.backgroundColor = .white
        
        logoView = UIImageView()
        logoView.backgroundColor = .white
        logoView.image = logoImg
        
        movieView = UIImageView()
        movieView.backgroundColor = .white
        movieView.image = movieImg
        movieView.contentMode = .scaleAspectFill
        
        backButton = UIButton()
        backButton.setBackgroundImage(buttonImg, for:.normal)
        
        listButton = UIButton()
        listButton.setImage(listImg, for:.normal)
        listButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25)
        
        heartButton = UIButton()
        heartButton.setImage(heartImg, for:.normal)
        heartButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25)
        
        bookmarkButton = UIButton()
        bookmarkButton.setImage(bookmarkImg, for:.normal)
        bookmarkButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25)
        
        starButton = UIButton()
        starButton.setImage(starImg, for:.normal)
        starButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25)
        
        homeButton = UIButton()
        homeButton.backgroundColor = .white
        
        favouritesButton = UIButton()
        favouritesButton.backgroundColor = .white

        
        
        
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.35
        
        percentage = UILabel()
        percentage.textColor = .white
        let attrs_percentage = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Bold", size: 25)]
        let percentage_text = NSMutableAttributedString(string: "76%", attributes: attrs_percentage as [NSAttributedString.Key : Any])
        percentage_text.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:NSMakeRange(0, percentage_text.length))
        percentage.attributedText = percentage_text
        
        
        userscore = UILabel()
        userscore.textColor = .white
        let attrs_score = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Bold", size: 20)]
        let userscore_text = NSMutableAttributedString(string: "User Score", attributes: attrs_score as [NSAttributedString.Key : Any])
        userscore_text.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:NSMakeRange(0, userscore_text.length))
        userscore.attributedText = userscore_text

        
        movieName = UILabel()
        movieName.textColor = .white
        let attrs_name = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Extrabld", size: 34)]
        let name_text = NSMutableAttributedString(string: "Iron man", attributes: attrs_name as [NSAttributedString.Key : Any])
        name_text.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:NSMakeRange(0, name_text.length))
        movieName.attributedText = name_text
        
        movieYear = UILabel()
        movieYear.textColor = .white
        let attrs_year = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Regular", size: 34)]
        let year_text = NSMutableAttributedString(string: "(2008)", attributes: attrs_year as [NSAttributedString.Key : Any])
        name_text.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:NSMakeRange(0, year_text.length))
        movieYear.attributedText = year_text
        
        
        movieDetails = UILabel()
        movieDetails.textColor = .white
        movieDetails.numberOfLines = 0
        movieDetails.lineBreakMode = .byWordWrapping
        let attrs_details = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Regular", size: 20)]
        let movieDetails_text = NSMutableAttributedString(string: "05/02/2008 (US) \nAction, Science Fiction, Adventure 2h 6m", attributes: attrs_details as [NSAttributedString.Key : Any])
        movieDetails_text.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, movieDetails_text.length))
        movieDetails.attributedText = movieDetails_text

        
        overviewHeadline = UILabel()
        overviewHeadline.textColor = .black
        let attrs_overview = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Extrabld", size: 32)]
        let overviewHeadline_text = NSMutableAttributedString(string: "Overview", attributes: attrs_overview as [NSAttributedString.Key : Any])
        overviewHeadline_text.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, overviewHeadline_text.length))
        overviewHeadline.attributedText = overviewHeadline_text


        overview = UILabel()
        overview.textColor = .black
        overview.numberOfLines = 0
        overview.lineBreakMode = .byWordWrapping
        let attrs_overview2 = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Regular", size: 19)]
        let overview_text = NSMutableAttributedString(string: "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.", attributes: attrs_overview2 as [NSAttributedString.Key : Any])
        overview_text.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, overview_text.length))
        overview.attributedText = overview_text


        characters = UILabel()
        characters.textColor = .black
        characters.numberOfLines = 0
        characters.lineBreakMode = .byWordWrapping
        let attrs_char = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Extrabld", size: 18)]
        let char_text = NSMutableAttributedString(string: "Don Heck\nCharacters", attributes: attrs_char as [NSAttributedString.Key : Any])
        char_text.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, char_text.length))
        characters.attributedText = char_text
        
        characters2 = UILabel()
        characters2.textColor = .black
        characters2.numberOfLines = 0
        characters2.lineBreakMode = .byWordWrapping
        let attrs_char2 = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Extrabld", size: 18)]
        let char2_text = NSMutableAttributedString(string: "Jack Kirby\nCharacters", attributes: attrs_char2 as [NSAttributedString.Key : Any])
        char2_text.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, char2_text.length))
        characters2.attributedText = char2_text
        
        characters3 = UILabel()
        characters3.textColor = .black
        characters3.numberOfLines = 0
        characters3.lineBreakMode = .byWordWrapping
        let attrs_char3 = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Extrabld", size: 18)]
        let char3_text = NSMutableAttributedString(string: "Jon Favreau\nCharacters", attributes: attrs_char3 as [NSAttributedString.Key : Any])
        char3_text.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, char3_text.length))
        characters3.attributedText = char3_text
        
        homeicon = UIImageView()
        homeicon.backgroundColor = .white
        homeicon.image = homeiconImg
        homeicon.contentMode = .scaleAspectFill
        
        favicon = UIImageView()
        favicon.backgroundColor = .white
        favicon.image = faviconImg
        favicon.contentMode = .scaleAspectFill
        
        home = UILabel()
        home.textColor = UIColor(red: 0.741, green: 0.741, blue: 0.741, alpha: 1)
        let attrs_home = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Bold", size: 10)]
        let home_text = NSMutableAttributedString(string: "Home", attributes: attrs_home as [NSAttributedString.Key : Any])
        home_text.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:NSMakeRange(0, home_text.length))
        home.attributedText = home_text
        
        fav = UILabel()
        fav.textColor = UIColor(red: 0.043, green: 0.145, blue: 0.247, alpha: 1)
        let attrs_fav = [NSAttributedString.Key.font : UIFont(name: "ProximaNova-Bold", size: 10)]
        let fav_text = NSMutableAttributedString(string: "Favourites", attributes: attrs_fav as [NSAttributedString.Key : Any])
        fav_text.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:NSMakeRange(0, fav_text.length))
        fav.attributedText = fav_text
        
        
        


        view.addSubview(topView)
        view.addSubview(middleView)
        movieView.addSubview(bottomView)
        view.addSubview(bottomtrack)
        topView.addSubview(logoView)
        middleView.addSubview(movieView)
        topView.addSubview(backButton)
        view.addSubview(listButton)
        view.addSubview(heartButton)
        view.addSubview(bookmarkButton)
        view.addSubview(starButton)
        
        view.addSubview(percentage)
        view.addSubview(userscore)
        view.addSubview(movieName)
        view.addSubview(movieYear)
        view.addSubview(movieDetails)
        bottomView.addSubview(overviewHeadline)
        bottomView.addSubview(overview)
        bottomView.addSubview(characters)
        bottomView.addSubview(characters2)
        bottomView.addSubview(characters3)
        
        bottomtrack.addSubview(homeButton)
        bottomtrack.addSubview(favouritesButton)
        homeButton.addSubview(homeicon)
        homeButton.addSubview(home)
        favouritesButton.addSubview(favicon)
        favouritesButton.addSubview(fav)
        
        
        
    }
    
    private func addConstraints() {
        
        let bounds = UIScreen.main.bounds
        
//        view.snp.makeConstraints{(view) -> Void in
//            view.left.equalTo(self.view)
//            view.right.equalTo(self.view)
//            view.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
//            view.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
//        }
        
        topView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(0)
            $0.top.equalToSuperview().offset(0)
            $0.width.equalTo(bounds.width)
            $0.height.equalTo(bounds.height * 0.125)
        }
        
        middleView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(0)
            $0.top.equalTo(topView.snp_bottomMargin).offset(0)
            $0.width.equalTo(bounds.width)
            $0.height.equalTo(bounds.height * 0.5)
        }
        
        bottomView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(0)
            $0.top.equalTo(middleView.snp_bottomMargin).offset(0)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalTo(bounds.width)
            $0.height.equalTo(bounds.height * 0.4)
        }
        
        bottomtrack.snp.makeConstraints {
            $0.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalTo(bounds.width)
            $0.height.equalTo(bounds.height * 0.0835)
        }
        
        logoView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.303)
            $0.top.equalToSuperview().offset(bounds.height * 0.05625)
            $0.width.equalTo(bounds.width * 0.394)
            $0.height.equalTo(bounds.height * 0.0547)
        }
        
        movieView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(0)
            $0.top.equalTo(topView.snp_bottomMargin).offset(0)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalTo(bounds.width)
            $0.height.equalTo(bounds.height)
        }
        
        
        let layer0 = CAGradientLayer()
        layer0.colors = [
          UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor,
          UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ]
        layer0.locations = [0, 1]
        layer0.startPoint = CGPoint(x: 0.4, y: 0.6)
        layer0.endPoint = CGPoint(x: 0.95, y: 0.6)
        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: 1, c: -1, d: 0, tx: 1, ty: 0))
        layer0.bounds = middleView.bounds.insetBy(dx: -1.1*view.bounds.size.width, dy: -1.1*view.bounds.size.height)
        layer0.position = middleView.center
        movieView.layer.addSublayer(layer0)
        
        
        backButton.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.044)
            $0.top.equalToSuperview().offset(bounds.height * 0.0656)
            $0.width.equalTo(bounds.width * 0.032)
            $0.height.equalTo(bounds.height * 0.031)
        }
        
        listButton.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.075)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.43)
            $0.width.equalTo(bounds.width * 0.115)
            $0.height.equalTo(bounds.height * 0.055)
        }
        listButton.layer.cornerRadius = bounds.width * 0.056
        listButton.clipsToBounds = true
        
        heartButton.snp.makeConstraints {
            $0.leading.equalTo(listButton.snp_trailingMargin).inset(-bounds.width * 0.075)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.43)
            $0.width.equalTo(bounds.width * 0.115)
            $0.height.equalTo(bounds.height * 0.055)
        }
        heartButton.layer.cornerRadius = bounds.width * 0.056
        heartButton.clipsToBounds = true
        
        bookmarkButton.snp.makeConstraints {
            $0.leading.equalTo(heartButton.snp_trailingMargin).inset(-bounds.width * 0.075)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.43)
            $0.width.equalTo(bounds.width * 0.115)
            $0.height.equalTo(bounds.height * 0.055)
        }
        bookmarkButton.layer.cornerRadius = bounds.width * 0.056
        bookmarkButton.clipsToBounds = true
        
        starButton.snp.makeConstraints {
            $0.leading.equalTo(bookmarkButton.snp_trailingMargin).inset(-bounds.width * 0.075)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.43)
            $0.width.equalTo(bounds.width * 0.115)
            $0.height.equalTo(bounds.height * 0.055)
        }
        starButton.layer.cornerRadius = bounds.width * 0.056
        starButton.clipsToBounds = true
        
        
        percentage.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.086)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.19)
            $0.width.equalTo(bounds.width * 0.5)
            $0.height.equalTo(bounds.height * 0.08)
        }
        
        userscore.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.25)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.1915)
            $0.width.equalTo(bounds.width * 0.5)
            $0.height.equalTo(bounds.height * 0.08)
        }
        
        movieName.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.05)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.27)
            $0.width.equalTo(bounds.width * 0.34)
            $0.height.equalTo(bounds.height * 0.053)
        }
        
        movieYear.snp.makeConstraints {
            $0.leading.equalTo(movieName.snp_trailingMargin).inset(-bounds.width * 0.03)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.278)
            $0.width.equalTo(bounds.width * 0.86)
            $0.height.equalTo(bounds.height * 0.053)
        }
        
        movieDetails.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.05)
            $0.top.equalTo(topView.snp_bottomMargin).offset(bounds.height * 0.34)
            $0.width.equalTo(bounds.width * 0.95)
            $0.height.equalTo(bounds.height * 0.0625)
        }
        
        overviewHeadline.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.05)
            $0.top.equalTo(middleView.snp_bottomMargin).offset(bounds.height * 0.018)
            $0.width.equalTo(bounds.width * 0.88)
            $0.height.equalTo(bounds.height * 0.08)
        }
        
        overview.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.05)
            $0.top.equalTo(overviewHeadline.snp_bottomMargin).offset(bounds.height * 0.001)
            $0.width.equalTo(bounds.width * 0.88)
            $0.height.equalTo(bounds.height * 0.12)
        }
        
        
        homeButton.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.2)
            $0.top.equalToSuperview()
            $0.width.equalTo(bounds.width * 0.26)
            $0.height.equalToSuperview()
        }
        
        favouritesButton.snp.makeConstraints {
            $0.leading.equalTo(homeButton.snp_trailingMargin).inset(-bounds.width * 0.11)
            $0.top.equalToSuperview()
            $0.width.equalTo(bounds.width * 0.26)
            $0.height.equalToSuperview()
        }
        
        characters.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(bounds.width * 0.044)
            $0.top.equalTo(overview.snp_bottomMargin).offset(bounds.height * 0.03)
            $0.width.equalTo(bounds.width * 0.26)
            $0.height.equalTo(bounds.height * 0.0625)
        
        }
        
        characters2.snp.makeConstraints {
            $0.leading.equalTo(characters.snp_trailingMargin).inset(-bounds.width * 0.095)
            $0.top.equalTo(overview.snp_bottomMargin).offset(bounds.height * 0.03)
            $0.width.equalTo(bounds.width * 0.26)
            $0.height.equalTo(bounds.height * 0.0625)
        
        }
        
        characters3.snp.makeConstraints {
            $0.leading.equalTo(characters2.snp_trailingMargin).inset(-bounds.width * 0.1)
            $0.top.equalTo(overview.snp_bottomMargin).offset(bounds.height * 0.03)
            $0.width.equalTo(bounds.width * 0.26)
            $0.height.equalTo(bounds.height * 0.0625)
        
        }
        
        homeicon.snp.makeConstraints {
            $0.leading.equalTo(homeButton.snp_leadingMargin).inset(bounds.width * 0.095)
            $0.top.equalTo(homeButton.snp_topMargin).offset(bounds.height * 0.017)
//            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalTo(bounds.width * 0.044)
            $0.height.equalTo(bounds.height * 0.025)
        }

        favicon.snp.makeConstraints {
            $0.leading.equalTo(favouritesButton.snp_leadingMargin).inset(bounds.width * 0.095)
            $0.top.equalTo(favouritesButton.snp_topMargin).offset(bounds.height * 0.017)
//            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalTo(bounds.width * 0.044)
            $0.height.equalTo(bounds.height * 0.025)
        }
        
        home.snp.makeConstraints {
            $0.leading.equalTo(homeButton.snp_leadingMargin).inset(bounds.width * 0.083)
            $0.top.equalTo(homeButton.snp_topMargin).offset(bounds.height * 0.042)
//            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalTo(bounds.width * 0.075)
            $0.height.equalTo(bounds.height * 0.01875)
        }
        
        fav.snp.makeConstraints {
            $0.leading.equalTo(favouritesButton.snp_leadingMargin).inset(bounds.width * 0.064)
            $0.top.equalTo(favouritesButton.snp_topMargin).offset(bounds.height * 0.042)
//            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalTo(bounds.width * 0.12)
            $0.height.equalTo(bounds.height * 0.01875)
        }
        
        
        
        
        
        
        
    }
}


