//
//  CustomCellClass.swift
//  TZcinema
//
//  Created by Степан Харитонов on 04.01.2022.
//

import UIKit

class FilmCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var actionLayer: UIView!
    @IBOutlet weak var nameFilm: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var iMDBNumber: UILabel!
    @IBOutlet weak var iMDBView: UIView!
    @IBOutlet weak var filmsAvatar: UIImageView!
}
