import XCTest
@testable import VoiceActivityDetector

final class VoiceActivityDetectorTests: XCTestCase {
    func testVADInitialization() {
        let vad = VoiceActivityDetector()
        XCTAssertNotNil(vad, "VAD should initialize successfully with default sample rate")
    }
}
