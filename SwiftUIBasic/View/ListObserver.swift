//
//  ListObserve.swift
//  SwiftUIBasic
//
//  Created by Kitabisa.com on 12/03/20.
//  Copyright © 2020 fachrudin. All rights reserved.
//
import Alamofire

class ListObserver : ObservableObject{
    @Published var movies = [Movie]()
    
    init() {
        getMovies()
    }
    
    func getMovies(menuType: String = "popular") {
        //https://api.themoviedb.org/3/movie/popular?api_key=7b9a9c338b6d93043d12922e317605f1&language=en-US&page=1

        let apiKey = "7b9a9c338b6d93043d12922e317605f1"

        Alamofire.request("http://api.themoviedb.org/3/movie/\(menuType)?api_key=\(apiKey)&language=en-US&page=1")
            .responseJSON {
                response in
                if let json = response.result.value {
                    if  (json as? [String : AnyObject]) != nil{
                        if let dictionaryArray = json as? Dictionary<String, AnyObject?> {
                            let jsonArray = dictionaryArray["results"]

                            if let jsonArray = jsonArray as? Array<Dictionary<String, AnyObject?>>{
                                for i in 0..<jsonArray.count{
                                    let json = jsonArray[i]
                                    if let id = json["id"] as? Int,
                                        let title = json["title"] as? String,
                                        let posterPath = json["poster_path"] as? String,
                                        let overview = json["overview"] as? String,
                                        let releaseDate = json["release_date"] as? String
                                    {
                                        self.movies.append(
                                            Movie(
                                                id: id,
                                                title: title,
                                                posterPath: posterPath,
                                                overview: overview,
                                                releaseDate: releaseDate
                                            )
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
        }
    }
}
