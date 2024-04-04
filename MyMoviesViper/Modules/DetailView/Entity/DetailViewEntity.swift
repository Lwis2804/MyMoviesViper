//
//  DetailViewEntity.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 27/03/24.
//

import Foundation

struct SearchResponse : Codable {
    var page : Int?
    var results : [ResultSearchResponse]?
    var total_pages : Int?
    var total_results : Int?
}

struct ResultSearchResponse : Codable {
    let adult : Bool?
    let backdrop_path : String?
    let genre_ids : [Int]?
    let id : Int?
    let original_language : String?
    let original_title : String?
    let overview : String?
    let popularity : Double?
    let poster_path : String?
    let release_date : String?
    let title : String?
    let video : Bool?
    let vote_average : Double?
    let vote_count : Int?


}
