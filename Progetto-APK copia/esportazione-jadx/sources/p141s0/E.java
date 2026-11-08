package p141s0;

import android.net.Uri;
import android.net.http.HttpException;
import android.net.http.UrlRequest;
import android.net.http.UrlResponseInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class E implements UrlRequest.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f29870a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ H f29871b;

    public E(H h8) {
        this.f29871b = h8;
    }

    @Override // android.net.http.UrlRequest.Callback
    public final synchronized void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
    }

    @Override // android.net.http.UrlRequest.Callback
    public final synchronized void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, HttpException httpException) {
        try {
            if (this.f29870a) {
                return;
            }
            if (B.i(httpException) && B.b(httpException).getErrorCode() == 1) {
                this.f29871b.f29897y = new UnknownHostException();
            } else {
                this.f29871b.f29897y = httpException;
            }
            this.f29871b.f29887o.f();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.net.http.UrlRequest.Callback
    public final synchronized void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        if (this.f29870a) {
            return;
        }
        this.f29871b.f29887o.f();
    }

    @Override // android.net.http.UrlRequest.Callback
    public final synchronized void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        C3188m c3188m;
        if (this.f29870a) {
            return;
        }
        C3188m c3188m2 = this.f29871b.f29893u;
        c3188m2.getClass();
        int httpStatusCode = urlResponseInfo.getHttpStatusCode();
        if (c3188m2.f29965c == 2 && (httpStatusCode == 307 || httpStatusCode == 308)) {
            H h8 = this.f29871b;
            urlResponseInfo.getHttpStatusText();
            Map asMap = urlResponseInfo.getHeaders().getAsMap();
            String str2 = M.f28050a;
            h8.f29897y = new A(httpStatusCode, null, asMap);
            this.f29871b.f29887o.f();
            return;
        }
        H h9 = this.f29871b;
        if (h9.f29882j) {
            h9.f29888p.getClass();
            h9.f29876A = SystemClock.elapsedRealtime() + ((long) h9.f29880h);
        }
        CookieHandler cookieManager = CookieHandler.getDefault();
        if (cookieManager == null && this.f29871b.f29883k) {
            cookieManager = new CookieManager();
        }
        String url = urlResponseInfo.getUrl();
        Map asMap2 = urlResponseInfo.getHeaders().getAsMap();
        I.e(url, asMap2, cookieManager);
        String strC = I.c(url, asMap2, cookieManager);
        H h10 = this.f29871b;
        boolean z7 = h10.f29890r && c3188m2.f29965c == 2 && httpStatusCode == 302;
        if (!z7 && (!h10.f29883k || TextUtils.isEmpty(strC))) {
            urlRequest.followRedirect();
            return;
        }
        urlRequest.cancel();
        if (z7 || c3188m2.f29965c != 2) {
            c3188m = new C3188m(Uri.parse(str), c3188m2.f29964b, c3188m2.f29965c, c3188m2.f29966d, c3188m2.f29967e, c3188m2.f29968f, c3188m2.f29969g, c3188m2.f29970h, c3188m2.f29971i, c3188m2.f29972j);
        } else {
            C3187l c3187lA = c3188m2.a();
            c3187lA.f29953a = Uri.parse(str);
            c3187lA.f29955c = 1;
            c3187lA.f29956d = null;
            c3188m = c3187lA.a();
        }
        if (!TextUtils.isEmpty(strC)) {
            HashMap map = new HashMap();
            map.putAll(c3188m2.f29967e);
            map.put("Cookie", strC);
            C3187l c3187lA2 = c3188m.a();
            c3187lA2.f29957e = map;
            c3188m = c3187lA2.a();
        }
        try {
            G gW = this.f29871b.w(c3188m);
            G g8 = this.f29871b.f29894v;
            if (g8 != null) {
                g8.f29875b.f29870a = true;
                g8.f29874a.cancel();
            }
            this.f29871b.f29894v = gW;
            gW.f29874a.start();
        } catch (IOException e8) {
            this.f29871b.f29897y = e8;
        }
    }

    @Override // android.net.http.UrlRequest.Callback
    public final synchronized void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        if (this.f29870a) {
            return;
        }
        I.e(urlResponseInfo.getUrl(), urlResponseInfo.getHeaders().getAsMap(), CookieHandler.getDefault());
        H h8 = this.f29871b;
        h8.f29896x = urlResponseInfo;
        h8.f29887o.f();
    }

    @Override // android.net.http.UrlRequest.Callback
    public final synchronized void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        if (this.f29870a) {
            return;
        }
        H h8 = this.f29871b;
        h8.f29898z = true;
        h8.f29887o.f();
    }
}
