import UIKit
import Flutter
import MapKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let mapFactory = MapFactory()
    registrar(forPlugin: "testapp")!.register(mapFactory, withId: "MapView")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

class MapFactory: NSObject, FlutterPlatformViewFactory {
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return MapView(frame, viewId: viewId, args: args)
    }
}

class MapView: NSObject, FlutterPlatformView {
    let frame: CGRect
    let viewId: Int64

    init(_ frame: CGRect, viewId: Int64, args: Any?) {
        self.frame = frame
        self.viewId = viewId
    }

    func view() -> UIView {
        return MKMapView(frame: frame)
    }
}

public class MapPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let viewFactory = MapFactory()
    registrar.register(viewFactory, withId: "testapp/maps")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
