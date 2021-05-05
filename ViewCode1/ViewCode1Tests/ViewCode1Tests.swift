//
//  ViewCode1Tests.swift
//  ViewCode1Tests
//
//  Created by Lucas Alcalde Bie da Silva on 04/05/21.
//

import XCTest
@testable import ViewCode1

class ViewCode1Tests: XCTestCase {
    
    /// View color validation
    func testViewColorValidation() {
        let viewController = UIViewController()
        let view = MyView()
        viewController.view.addSubview(view)
        
        XCTAssertEqual(viewController.view.subviews.first?.backgroundColor, .red)
        XCTAssertNotEqual(viewController.view.subviews.first?.backgroundColor, .white)
    }

}
