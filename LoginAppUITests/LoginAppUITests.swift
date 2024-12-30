////
////  LoginAppUITests.swift
////  LoginAppUITests
////
////  Created by iPhone Apps Nano Nino on 28/12/24.
////
//
//import XCTest
//
//final class LoginAppUITests: XCTestCase {
//    func testLoginSuccess() {
//           let mockService = MockNetworkService()
//           mockService.shouldReturnError = false
//
//        let viewModel = LoginViewModel(networkService: mockService)
//           let expectation = XCTestExpectation(description: "Login success")
//
//           viewModel.login(email: "test@test.com", password: "password") { message in
//               XCTAssertEqual(message, "Welcome, Test User!")
//               expectation.fulfill()
//           }
//
//           wait(for: [expectation], timeout: 1.0)
//       }
//
//       func testLoginFailure() {
//           let mockService = MockNetworkService()
//           mockService.shouldReturnError = true
//
//           let viewModel = LoginViewModel(networkService: mockService)
//           let expectation = XCTestExpectation(description: "Login failure")
//
//           viewModel.login(email: "test@test.com", password: "password") { message in
//               XCTAssertEqual(message, "Login failed. Please try again.")
//               expectation.fulfill()
//           }
//
//           wait(for: [expectation], timeout: 1.0)
//       }
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//
//        // In UI tests it is usually best to stop immediately when a failure occurs.
//        continueAfterFailure = false
//
//        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    @MainActor
//    func testExample() throws {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    @MainActor
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
//}
//class MockNetworkService: NetworkServiceProtocol {
//    var shouldReturnError = false
//
//    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
//        if shouldReturnError {
//            completion(.failure(NSError(domain: "", code: -1, userInfo: nil)))
//        } else {
//            let user = User(id: 1, name: "Test User", email: email)
//            completion(.success(user))
//        }
//    }
//}
