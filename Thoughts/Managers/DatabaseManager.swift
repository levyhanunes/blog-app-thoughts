//
//  DatabaseManager.swift
//  Thoughts
//
//  Created by user on 13/07/21.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager {
    static let shared = DatabaseManager()
    
    private let database = Firestore.firestore()
    
    private init() {}
    
    public func insert(
        blogPost: BlogPost,
        user: User,
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    public func getAllPosts(completion: @escaping ([BlogPost]) -> Void
    ){
        
    }
    
    public func getPosts(
        for user: User,
        completion: @escaping ([BlogPost]) -> Void
    ){
        
    }
    
    public func insert(
        user: User,
        completion: @escaping (Bool) -> Void
    ){
        
    }
}
