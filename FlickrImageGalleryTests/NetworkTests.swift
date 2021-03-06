//
//  NetworkTests.swift
//  FlickrImageGalleryTests
//
//  Created by Avie on 02/10/17.
//  Copyright © 2017 xyz. All rights reserved.
//

import XCTest
@testable import FlickrImageGallery

class NetworkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFetch() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let e = expectation(description: "Asyn Parsing.")
        
        Network().fetch(url: FeedData.feedURL, completion: { data in
            XCTAssertNotNil(data)
            e.fulfill()
        })
        
        waitForExpectations(timeout: 10, handler: nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
