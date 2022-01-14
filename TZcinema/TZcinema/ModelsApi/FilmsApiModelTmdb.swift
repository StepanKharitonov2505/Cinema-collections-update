//
//  FilmsApiModelTMDB.swift
//  TZcinema
//
//  Created by Степан Харитонов on 08.01.2022.
//

import Foundation

// MARK: - FilmsContainer
class FilmsContainerTmdb: Codable{
 
    let runtime: Int
    let status, backdropPath, overview, title: String
    let voteCount: Int
    let tagline: String
    let belongsToCollection: BelongsToCollection?
    let originalTitle, originalLanguage, posterPath: String
    let productionCountries: [ProductionCountry]
    let revenue: Int
    let homepage: String
    let video: Bool
    let imdbID: String
    let id: Int
    let releaseDate: String
    let budget: Int
    let popularity: Double
    let genres: [Genre]
    let productionCompanies: [ProductionCompany]?
    let adult: Bool
    let spokenLanguages: [SpokenLanguage]
    let voteAverage: Double

    enum CodingKeys: String, CodingKey {
        case runtime, status
        case backdropPath = "backdrop_path"
        case overview, title
        case voteCount = "vote_count"
        case tagline
        case belongsToCollection = "belongs_to_collection"
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case posterPath = "poster_path"
        case productionCountries = "production_countries"
        case revenue, homepage, video
        case imdbID = "imdb_id"
        case id
        case releaseDate = "release_date"
        case budget, popularity, genres
        case productionCompanies = "production_companies"
        case adult
        case spokenLanguages = "spoken_languages"
        case voteAverage = "vote_average"
    }

    init(runtime: Int, status: String, backdropPath: String, overview: String, title: String, voteCount: Int, tagline: String, belongsToCollection: BelongsToCollection, originalTitle: String, originalLanguage: String, posterPath: String, productionCountries: [ProductionCountry], revenue: Int, homepage: String, video: Bool, imdbID: String, id: Int, releaseDate: String, budget: Int, popularity: Double, genres: [Genre], productionCompanies: [ProductionCompany], adult: Bool, spokenLanguages: [SpokenLanguage], voteAverage: Double) {
        self.runtime = runtime
        self.status = status
        self.backdropPath = backdropPath
        self.overview = overview
        self.title = title
        self.voteCount = voteCount
        self.tagline = tagline
        self.belongsToCollection = belongsToCollection
        self.originalTitle = originalTitle
        self.originalLanguage = originalLanguage
        self.posterPath = posterPath
        self.productionCountries = productionCountries
        self.revenue = revenue
        self.homepage = homepage
        self.video = video
        self.imdbID = imdbID
        self.id = id
        self.releaseDate = releaseDate
        self.budget = budget
        self.popularity = popularity
        self.genres = genres
        self.productionCompanies = productionCompanies
        self.adult = adult
        self.spokenLanguages = spokenLanguages
        self.voteAverage = voteAverage
    }
}

// MARK: - BelongsToCollection
class BelongsToCollection: Codable {
    let backdropPath: String
    let id: Int
    let name, posterPath: String

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case id, name
        case posterPath = "poster_path"
    }

    init(backdropPath: String, id: Int, name: String, posterPath: String) {
        self.backdropPath = backdropPath
        self.id = id
        self.name = name
        self.posterPath = posterPath
    }
}

// MARK: - Genre
class Genre: Codable {
    let id: Int
    let name: String

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

// MARK: - ProductionCompany
class ProductionCompany: Codable {
    let logoPath: String?
    let id: Int
    let originCountry, name: String

    enum CodingKeys: String, CodingKey {
        case logoPath = "logo_path"
        case id
        case originCountry = "origin_country"
        case name
    }

    init(logoPath: String, id: Int, originCountry: String, name: String) {
        self.logoPath = logoPath
        self.id = id
        self.originCountry = originCountry
        self.name = name
    }
}

// MARK: - ProductionCountry
class ProductionCountry: Codable {
    let name, iso3166_1: String

    enum CodingKeys: String, CodingKey {
        case name
        case iso3166_1 = "iso_3166_1"
    }

    init(name: String, iso3166_1: String) {
        self.name = name
        self.iso3166_1 = iso3166_1
    }
}

// MARK: - SpokenLanguage
class SpokenLanguage: Codable {
    let englishName, name, iso639_1: String

    enum CodingKeys: String, CodingKey {
        case englishName = "english_name"
        case name
        case iso639_1 = "iso_639_1"
    }

    init(englishName: String, name: String, iso639_1: String) {
        self.englishName = englishName
        self.name = name
        self.iso639_1 = iso639_1
    }
}
