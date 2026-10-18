import UIKit
import Capacitor

@objc(DocumentExporterPlugin)
class DocumentExporterPlugin: CAPPlugin, CAPBridgedPlugin, UIDocumentPickerDelegate {
    let identifier = "DocumentExporterPlugin"
    let jsName = "DocumentExporter"
    let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "exportFile", returnType: CAPPluginReturnPromise)
    ]

    private var pendingCall: CAPPluginCall?

    @objc func exportFile(_ call: CAPPluginCall) {
        guard pendingCall == nil else {
            call.reject("Un salvataggio è già in corso")
            return
        }
        guard let path = call.getString("path") else {
            call.reject("Percorso file mancante")
            return
        }

        let fileURL: URL
        if let parsedURL = URL(string: path), parsedURL.isFileURL {
            fileURL = parsedURL
        } else {
            fileURL = URL(fileURLWithPath: path)
        }
        guard FileManager.default.fileExists(atPath: fileURL.path) else {
            call.reject("Il file temporaneo non esiste")
            return
        }

        pendingCall = call
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let picker = UIDocumentPickerViewController(forExporting: [fileURL], asCopy: true)
            picker.delegate = self
            picker.shouldShowFileExtensions = true
            self.bridge?.viewController?.present(picker, animated: true)
        }
    }

    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        pendingCall?.resolve(["path": urls.first?.absoluteString ?? ""])
        pendingCall = nil
    }

    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        pendingCall?.reject("Export canceled", "EXPORT_CANCELED")
        pendingCall = nil
    }
}

class AppBridgeViewController: CAPBridgeViewController {
    override func capacitorDidLoad() {
        bridge?.registerPluginInstance(DocumentExporterPlugin())
    }
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = AppBridgeViewController()
        window?.makeKeyAndVisible()

        SceneDelegateProxy.shared.scene(scene, willConnectTo: session, options: connectionOptions)
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.clearStreamingCaches()
    }

    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        SceneDelegateProxy.shared.scene(scene, openURLContexts: URLContexts)
    }

    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        SceneDelegateProxy.shared.scene(scene, continue: userActivity)
    }
}
