package p011b2;

import D0.U;
import a7.a;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.webkit.WebView;
import java.util.Set;
import okhttp3.HttpUrl;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import p019c2.n;
import p019c2.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9832a = 0;

    static {
        Uri.parse("*");
        Uri.parse(HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public static void a(WebView webView, String str, Set set, d dVar) {
        if (!n.f10637d.b()) {
            throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
        }
        U uC = c(webView);
        ((WebViewProviderBoundaryInterface) uC.f1868H).addWebMessageListener(str, (String[]) set.toArray(new String[0]), new a(new U(dVar, 18)));
    }

    public static PackageInfo b() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
    }

    public static U c(WebView webView) {
        return new U(o.f10639a.createWebView(webView), 20);
    }
}
