//
//  AuthManager.swift
//  Thoughts
//
//  Created by user on 13/07/21.
//

import Foundation
import FirebaseAuth

final class AuthManager {
    static let shared = AuthManager() //iniciar estático para poder chamar de qualquer lugar do app
    
    private let auth = Auth.auth()
    
    private init() {}
    
    
    //verificar se
    public var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    
    
    //função registrar
    public func signUp(email: String, password: String, completion: @escaping (Bool) -> Void //escapping cloujure para mostrar se o usuário foi bem sucedido no singUp
    ){
        //validação de registro no firebase, sem email e senhas inválidas
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              password.count >= 6 else { return }
        
        
        auth.signIn(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else { //se o resultado não é nulo e o erro é, podemos ir em frente
                completion(false)
                return
            }
            
            
            //conta criada
            completion(true)
        }
    }
    
    
    //função login
    public func signIn(email: String,
                       password: String,
                       completion: @escaping (Bool) -> Void
    ){}
    
    
    //função deslogar
    public func signOut(completion: (Bool) -> Void
    ){
        do {
            try auth.signOut()
            completion(true)
        } catch {
            print(error)
            completion(false)
        }
    }
}
