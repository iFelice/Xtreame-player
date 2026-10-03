package pe.hf.black20;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
public class OpenSourceLicenseActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public WebView f28804G;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_open_source_license);
        WebView webView = (WebView) findViewById(R.id.webView);
        this.f28804G = webView;
        webView.loadUrl("file:///android_asset/opensourcelicense.html");
    }
}
