package p157u0;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import p117p0.M;
import p141s0.A;
import p141s0.C3187l;
import p141s0.C3188m;
import p141s0.I;

/* JADX INFO: loaded from: classes.dex */
public final class d extends UrlRequest.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f30385a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f30386b;

    public d(e eVar) {
        this.f30386b = eVar;
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final synchronized void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        try {
            if (this.f30385a) {
                return;
            }
            if ((cronetException instanceof NetworkException) && ((NetworkException) cronetException).getErrorCode() == 1) {
                this.f30386b.f30387A = new UnknownHostException();
            } else {
                this.f30386b.f30387A = cronetException;
            }
            this.f30386b.f30400o.f();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final synchronized void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        if (this.f30385a) {
            return;
        }
        this.f30386b.f30400o.f();
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final synchronized void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        C3188m c3188m;
        if (this.f30385a) {
            return;
        }
        this.f30386b.f30407v.getClass();
        this.f30386b.f30408w.getClass();
        C3188m c3188m2 = this.f30386b.f30409x;
        c3188m2.getClass();
        int httpStatusCode = urlResponseInfo.getHttpStatusCode();
        if (c3188m2.f29965c == 2 && (httpStatusCode == 307 || httpStatusCode == 308)) {
            e eVar = this.f30386b;
            urlResponseInfo.getHttpStatusText();
            Map<String, List<String>> allHeaders = urlResponseInfo.getAllHeaders();
            String str2 = M.f28050a;
            eVar.f30387A = new A(httpStatusCode, null, allHeaders);
            this.f30386b.f30400o.f();
            return;
        }
        e eVar2 = this.f30386b;
        if (eVar2.f30395j) {
            eVar2.f30401p.getClass();
            eVar2.f30389C = SystemClock.elapsedRealtime() + ((long) eVar2.f30393h);
        }
        CookieHandler cookieManager = CookieHandler.getDefault();
        if (cookieManager == null && this.f30386b.f30396k) {
            cookieManager = new CookieManager();
        }
        String url = urlResponseInfo.getUrl();
        Map<String, List<String>> allHeaders2 = urlResponseInfo.getAllHeaders();
        I.e(url, allHeaders2, cookieManager);
        String strC = I.c(url, allHeaders2, cookieManager);
        e eVar3 = this.f30386b;
        boolean z7 = eVar3.f30404s && c3188m2.f29965c == 2 && httpStatusCode == 302;
        if (!z7 && (!eVar3.f30396k || TextUtils.isEmpty(strC))) {
            urlRequest.followRedirect();
            return;
        }
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
        e eVar4 = this.f30386b;
        UrlRequest urlRequest2 = eVar4.f30407v;
        if (urlRequest2 != null) {
            urlRequest2.cancel();
            eVar4.f30407v = null;
        }
        d dVar = eVar4.f30408w;
        if (dVar != null) {
            dVar.f30385a = true;
            eVar4.f30408w = null;
        }
        try {
            this.f30386b.w(c3188m);
            this.f30386b.f30407v.start();
        } catch (IOException e8) {
            this.f30386b.f30387A = e8;
        }
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final synchronized void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        if (this.f30385a) {
            return;
        }
        I.e(urlResponseInfo.getUrl(), urlResponseInfo.getAllHeaders(), CookieHandler.getDefault());
        e eVar = this.f30386b;
        eVar.f30411z = urlResponseInfo;
        eVar.f30400o.f();
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final synchronized void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        if (this.f30385a) {
            return;
        }
        e eVar = this.f30386b;
        eVar.f30388B = true;
        eVar.f30400o.f();
    }
}
