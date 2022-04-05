//
//  UserModel.swift
//  ARDemo
//
//  Created by rick on 2022/4/3.
//
import Foundation
import SwiftUI


struct UserModel: Identifiable {
    var id = UUID().uuidString
    var name:String
    var location:String
    var mood:String
    var habit:String
    var avatarResource:String
    var wantToMeet:String
}

