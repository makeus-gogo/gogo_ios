//
//  Api.swift
//  GoGo
//
//  Created by Gaeng on 2021/03/03.
//

import UIKit
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser
import Alamofire

class Api {
    
    static let host: String = "http://52.78.179.189/"
    
    static let prefix: String = "api/v1/"
    static let signUp = "signUp/"
    static let member = "member/" // get -> 정보 불러오기 / patch -> 정보 수정
    static let board = "board/" // post -> 고민업로드
    static let search = "search/" //
    static let list = "list/"
    static let comment = "comment/"
    
    
    class func signInToKakao() {
        let url: String = host + prefix + "auth/kakao"
        
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk { (oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    
                    let token = oauthToken!.accessToken
                    // url에 get 메소드로 token 값 같이 보냄
                    var components = URLComponents(string: url)
                    let q = URLQueryItem(name: "accessToken", value: token)
                    components?.queryItems = [q]
                    let resUrl = try! components?.asURL()
                    
                    AF.request(resUrl!).response { (response) in
                    }
                    
                }
            }
            
            UserApi.shared.accessTokenInfo { (accessTokenInfo, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("accessTokenInfo() success.")
                    
                    print(accessTokenInfo)
                }
            }
        }
        
        
    }
    
    class func signOutToKakao() {
        UserApi.shared.logout { (error) in
            if let error = error {
                print(error)
            }
            else {
                print("logout() success")
            }
        }
        
    }
}
