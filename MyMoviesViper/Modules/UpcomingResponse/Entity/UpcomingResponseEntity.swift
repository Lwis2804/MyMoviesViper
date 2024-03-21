//
//  UpcomingResponseEntity.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 20/03/24.
//


import Foundation
struct UpcomingResults : Codable {
    var adult : Bool?
    var backdrop_path : String?
    var genre_ids : [Int]?
    var id : Int?
    var original_language : String?
    var original_title : String?
    var overview : String?
    var popularity : Double?
    var poster_path : String?
    var release_date : String?
    var title : String?
    var video : Bool?
    var vote_average : Double?
    var vote_count : Int?
}

