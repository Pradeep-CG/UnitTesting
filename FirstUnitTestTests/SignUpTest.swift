//
//  SignUpTest.swift
//  FirstUnitTestTests
//
//  Created by Pradeep on 06/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import XCTest
@testable import FirstUnitTest

class SignUpTest: XCTestCase {

    var signUp: SignUpViewController!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        signUp = storyboard.instantiateViewController(withIdentifier: "signUp") as? SignUpViewController
        signUp.loadViewIfNeeded()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        signUp = nil
    }
    

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_whenLoaded_TextFieldAreConnected()  {
        
        _ = try? XCTUnwrap(signUp.firstName)
        _ = try? XCTUnwrap(signUp.lastName)
        _ = try? XCTUnwrap(signUp.email)
        _ = try? XCTUnwrap(signUp.phone)
        _ = try? XCTUnwrap(signUp.password)
        _ = try? XCTUnwrap(signUp.rePassword)
        _ = try? XCTUnwrap(signUp.signUpLbl)
    }
    
    func test_emailKeyboardType_EmailAddress()  {
        
        XCTAssertEqual(signUp.email.keyboardType, UIKeyboardType.emailAddress)
    }
    
    func test_passwordIsSecureEntry()  {
        
        XCTAssertTrue(signUp.password.isSecureTextEntry)
    }

    
}
