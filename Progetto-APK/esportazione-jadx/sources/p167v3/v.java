package p167v3;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.InterfaceExecutorServiceC1504jC;
import com.google.android.gms.internal.ads.Q7;
import java.util.Locale;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class v extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WebView f30695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3194b f30696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f30697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WebViewClient f30698d;

    public v(WebView webView, C3194b c3194b, C1936re c1936re) {
        this.f30695a = webView;
        this.f30696b = c3194b;
        this.f30697c = c1936re;
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void doUpdateVisitedHistory(WebView webView, String str, boolean z7) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.doUpdateVisitedHistory(webView, str, z7);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void onFormResubmission(WebView webView, Message message, Message message2) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onFormResubmission(webView, message, message2);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void onLoadResource(WebView webView, String str) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final void onPageCommitVisible(WebView webView, String str) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onPageCommitVisible(webView, str);
    }

    public final void e(WebView webView, String str) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onPageFinished(webView, str);
    }

    public final void f(WebView webView, String str, Bitmap bitmap) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void onReceivedError(WebView webView, int i8, String str, String str2) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedError(webView, i8, str, str2);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return false;
        }
        return webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i8, SafeBrowsingResponse safeBrowsingResponse) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onSafeBrowsingHit(webView, webResourceRequest, i8, safeBrowsingResponse);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        x();
        e(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        x();
        f(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final void onScaleChanged(WebView webView, float f8, float f9) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onScaleChanged(webView, f8, f9);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final void onTooManyRedirects(WebView webView, Message message, Message message2) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onTooManyRedirects(webView, message, message2);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return;
        }
        webViewClient.onUnhandledKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return null;
        }
        return webViewClient.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return null;
        }
        return webViewClient.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return false;
        }
        return webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return false;
        }
        return webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        WebViewClient webViewClient = this.f30698d;
        if (webViewClient == null) {
            return false;
        }
        return webViewClient.shouldOverrideUrlLoading(webView, str);
    }

    public final void x() {
        this.f30695a.evaluateJavascript(String.format(Locale.getDefault(), (String) C3099q.f26624d.f26627c.a(Q7.Z8), this.f30696b.a()), null);
    }
}
