//
//  StoreManager.swift
//  Thoughts
//
//  Created by user on 13/07/21.
//

import Foundation
import FirebaseStorage

final class FirebaseStorage {
    static let shared = FirebaseStorage()
    
    private let container = Storage.storage().reference()
    
    private init() {}
    
    
    public func uploadUserProfilePicture(
        email: String,
        image: UIImage?,
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    public func downloadUrlForProfilePicture(
        user: User,
        completion: @escaping(URL?) -> Void
    ){
        
    }
    
    public func uploadBlogHeaderImage(
        blogPost: BlogPost,
        image: UIImage?,
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    public func downloadUrlForPostHeader(
        blogPost: BlogPost,
        completion: @escaping(URL?) -> Void
    ){
        
    }
}
