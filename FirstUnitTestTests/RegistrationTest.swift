//
//  RegistrationTest.swift
//  FirstUnitTestTests
//
//  Created by Pradeep on 06/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import XCTest
@testable import FirstUnitTest

class RegistrationTest: XCTestCase {

    var sut: UserRegistrationModel!
    var firstName = "pradeep"
    var lastName = "sagar"
    var email = "abc@gmail.com"
    var password = "123456789"
    var repeatPassword = "123456789"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
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

    func testUserModelStruc_canCreateNewInstance(){

        
        sut = UserRegistrationModel(firstName: firstName, lastName: lastName, email: email, password: password, repeatPassword: repeatPassword)
        
        XCTAssertNotNil(sut)
    }
    

    func testUserFirstName_shouldPassIfValidFirstName() {
        
        sut = UserRegistrationModel(firstName: firstName, lastName: lastName, email: email, password: password, repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidFirstName())
        
    }
    func testUserFirstName_shouldPassIfFirstNameLessThanMinLength() {
        sut = UserRegistrationModel(firstName: "S",
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertFalse(sut.isValidFirstName())
    }
    
    func testUserLastName_shouldPassIfValidLastName() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidLastName())
    }
    
    func testUserLastName_shouldPassIfLastNameLessThanMinLength() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: "",
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertFalse(sut.isValidLastName())
    }
    
    func testUserRegistrationModel_shouldPassIfValidEmail() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidEmail())
    }
    
    func testUserRegistrationModel_shouldPassIfInValidEmail() {
        
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: "test.com",
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertFalse(sut.isValidEmail())
    }
    
    func testUserRegistrationModel_shouldPassIfValidPasswordLength() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidPasswordLength())
    }
    
    func testUserPassword_passwordAndRepeatPasswordMustMatch() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.doPasswordsMatch())
    }
    
    func testUserPassword_shouldPassIfPasswordIsValid() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidPassword())
    }
}
