//
//  ListObserve.swift
//  SwiftUIBasic
//
//  Created by Kitabisa.com on 12/03/20.
//  Copyright © 2020 fachrudin. All rights reserved.
//
import Alamofire

class ListObserver : ObservableObject{
    @Published var jokes = [JokesData]()

    init() {
        getJokes()
    }
    
    func getJokes(count: Int = 5) {
        Alamofire.request("http://api.icndb.com/jokes/random/\(count)")
            .responseJSON {
                response in
                if let json = response.result.value {
                    if  (json as? [String : AnyObject]) != nil{
                        if let dictionaryArray = json as? Dictionary<String, AnyObject?> {
                            let jsonArray = dictionaryArray["value"]

                            if let jsonArray = jsonArray as? Array<Dictionary<String, AnyObject?>>{
                                for i in 0..<jsonArray.count{
                                    let json = jsonArray[i]
                                    if let id = json["id"] as? Int, let jokeString = json["joke"] as? String{
                                    self.jokes.append(JokesData(id: id, joke: jokeString))
                                    }
                                }
                            }
                        }
                    }
                }
        }
    }
    
    func getMovies(count: Int = 5) {
        Alamofire.request("http://api.icndb.com/jokes/random/\(count)")
            .responseJSON {
                response in
                if let json = response.result.value {
                    if  (json as? [String : AnyObject]) != nil{
                        if let dictionaryArray = json as? Dictionary<String, AnyObject?> {
                            let jsonArray = dictionaryArray["value"]

                            if let jsonArray = jsonArray as? Array<Dictionary<String, AnyObject?>>{
                                for i in 0..<jsonArray.count{
                                    let json = jsonArray[i]
                                    if let id = json["id"] as? Int, let jokeString = json["joke"] as? String{
                                    self.jokes.append(JokesData(id: id, joke: jokeString))
                                    }
                                }
                            }
                        }
                    }
                }
        }
    }
}
