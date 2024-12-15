import XCTest

final class TiroUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
        
        // Wait for the app to be ready
        XCTAssertTrue(app.wait(for: .runningForeground, timeout: 5))
    }
    
    override func tearDownWithError() throws {
        app.terminate()
        app = nil
    }
    
    func testHelloWindowAppears() throws {
        // Wait for the window to appear
        let window = app.windows.firstMatch
        XCTAssertTrue(window.waitForExistence(timeout: 5), "Window should appear")
        
        // Verify the hello text appears
        let helloText = window.staticTexts["helloText"]
        XCTAssertTrue(helloText.waitForExistence(timeout: 5), "Hello text should appear in the window")
        XCTAssertEqual(helloText.value as? String, "Hello", "Text should say 'Hello'")
        
        // Take a screenshot for verification
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.lifetime = .keepAlways
        add(attachment)
    }
} 