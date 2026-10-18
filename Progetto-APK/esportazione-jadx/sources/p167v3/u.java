package p167v3;

import android.os.Build;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.C1936re;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import p011b2.e;
import p019c2.b;
import p019c2.d;
import p019c2.n;
import p083k3.l;
import p113o3.O;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30693G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ v f30694H;

    public /* synthetic */ u(v vVar, int i8) {
        this.f30693G = i8;
        this.f30694H = vVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebViewClient webViewClient;
        int i8 = this.f30693G;
        v vVar = this.f30694H;
        switch (i8) {
            case 0:
                vVar.getClass();
                try {
                    O o4 = l.f25980A.f25983c;
                    int i9 = Build.VERSION.SDK_INT;
                    WebView webView = vVar.f30695a;
                    if (i9 < 26) {
                        if (c.o("GET_WEB_VIEW_CLIENT")) {
                            try {
                                int i10 = e.f9832a;
                                b bVar = n.f10635b;
                                if (bVar.a()) {
                                    webViewClient = d.d(webView);
                                } else {
                                    if (!bVar.b()) {
                                        throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                                    }
                                    webViewClient = ((WebViewProviderBoundaryInterface) e.c(webView).f1868H).getWebViewClient();
                                }
                            } catch (RuntimeException e8) {
                                l.f25980A.f25987g.i("AdUtil.getWebViewClient", e8);
                            }
                        }
                        throw new IllegalStateException("getWebViewClient not supported");
                    }
                    webViewClient = webView.getWebViewClient();
                    if (webViewClient == vVar) {
                        return;
                    }
                    if (webViewClient != null) {
                        vVar.f30698d = webViewClient;
                    }
                    webView.setWebViewClient(vVar);
                    vVar.x();
                    return;
                } catch (IllegalStateException unused) {
                    return;
                }
            default:
                vVar.getClass();
                ((C1936re) vVar.f30697c).execute(new u(vVar, 0));
                return;
        }
    }
}
