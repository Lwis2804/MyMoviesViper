//
//  PopularMoviesPaths.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 21/02/24.
//

import Foundation

enum MoviesPath {
    case getMostPopularMovies
    case getUpcomingResponse
    case getNowPlayingMovies
    
    func getPath() -> String {
        switch self {
        case .getMostPopularMovies:
            return "/3/movie/popular?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        case .getUpcomingResponse:
            return "/3/movie/upcoming?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        case .getNowPlayingMovies:
            return "/3/movie/now_playing?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        }
    }
}
