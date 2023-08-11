//
//  SWPlanetsMVVMTests.swift
//  SWPlanetsMVVMTests
//
//  Created by Sean Murphy on 8/11/23.
//

import XCTest
@testable import SWPlanetsMVVM

final class SWPlanetsMVVMTests: XCTestCase {
    
    var networkManager: NetworkManager?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        networkManager = NetworkManager()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        networkManager = nil
    }

    func testDataNotNil() throws {
        let startingURL = "https://swapi.dev/api/planets/"
        guard let networkManager = networkManager else { return }
        networkManager.fetchData(with: startingURL) { data, error in
            XCTAssertNotNil(data)
        }
        
    }
    
    func testErrorIsNil() throws {
        let startingURL = "https://swapi.dev/api/planets/"
        guard let networkManager = networkManager else { return }
        networkManager.fetchData(with: startingURL) { data, error in
            XCTAssertNil(error)
        }
    }
    
    func testErrorIsNotNil() throws {
        let startingURL = ""
        guard let networkManager = networkManager else { return }
        networkManager.fetchData(with: startingURL) { data, error in
            XCTAssertNotNil(error)
        }
    }
    
    func testDataIsNil() throws {
        let startingURL = ""
        guard let networkManager = networkManager else { return }
        networkManager.fetchData(with: startingURL) { data, error in
            XCTAssertNil(data)
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
