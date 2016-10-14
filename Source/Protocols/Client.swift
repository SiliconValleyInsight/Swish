import Foundation
import Argo
import Result

public protocol Client {
  @discardableResult
  func perform<T: Request>(request: T, completionHandler: @escaping (Result<T.ResponseObject, SwishError>) -> ()) -> URLSessionDataTask
}
