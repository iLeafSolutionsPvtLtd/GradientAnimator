import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(GradientAnimatorTests.allTests),
    ]
}
#endif
