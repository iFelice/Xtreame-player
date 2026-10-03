package p167v3;

import C2.C0091g;
import K.a;
import U2.m;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.AbstractC2175w8;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C1488ix;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.H4;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Zv;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p043f3.e;
import p043f3.f;
import p083k3.l;
import p086l.RunnableC3036k;
import p090l3.C3099q;
import p113o3.F;
import p113o3.O;
import p120p3.h;

/* JADX INFO: renamed from: v3.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3193a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WebView f30587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H4 f30588c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Zv f30589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f30590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0783In f30591f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f30592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1936re f30593h = AbstractC1988se.f20910e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1488ix f30594i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final x f30595j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C3194b f30596k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final v f30597l;

    public C3193a(WebView webView, H4 h8, C0783In c0783In, C1488ix c1488ix, Zv zv, x xVar, C3194b c3194b, v vVar) {
        this.f30587b = webView;
        Context context = webView.getContext();
        this.f30586a = context;
        this.f30588c = h8;
        this.f30591f = c0783In;
        Q7.a(context);
        J7 j8 = Q7.P8;
        C3099q c3099q = C3099q.f26624d;
        this.f30590e = ((Integer) c3099q.f26627c.a(j8)).intValue();
        this.f30592g = ((Boolean) c3099q.f26627c.a(Q7.Q8)).booleanValue();
        this.f30594i = c1488ix;
        this.f30589d = zv;
        this.f30595j = xVar;
        this.f30596k = c3194b;
        this.f30597l = vVar;
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        try {
            l lVar = l.f25980A;
            lVar.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strE = this.f30588c.f13700b.e(this.f30586a, str, this.f30587b);
            if (this.f30592g) {
                lVar.f25990j.getClass();
                m.m(this.f30591f, "csg", new Pair("clat", String.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
            }
            return strE;
        } catch (RuntimeException e8) {
            h.e("Exception getting click signals. ", e8);
            l.f25980A.f25987g.i("TaggingLibraryJsInterface.getClickSignals", e8);
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    @JavascriptInterface
    public String getClickSignalsWithTimeout(String str, int i8) {
        if (i8 <= 0) {
            h.d("Invalid timeout for getting click signals. Timeout=" + i8);
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        try {
            return (String) AbstractC1988se.f20906a.b(new F(2, this, str)).get(Math.min(i8, this.f30590e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e8) {
            h.e("Exception getting click signals with timeout. ", e8);
            l.f25980A.f25987g.i("TaggingLibraryJsInterface.getClickSignalsWithTimeout", e8);
            return e8 instanceof TimeoutException ? "17" : HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    @JavascriptInterface
    public String getQueryInfo() {
        O o4 = l.f25980A.f25983c;
        String string = UUID.randomUUID().toString();
        Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        t tVar = new t(string, 0, this);
        if (((Boolean) AbstractC2175w8.f21644b.l()).booleanValue()) {
            this.f30595j.b(this.f30587b, tVar);
        } else {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.S8)).booleanValue()) {
                this.f30593h.execute(new a(this, bundle, tVar, 10, 0));
            } else {
                C0091g.s(this.f30586a, new f((e) new e(3).e(bundle)), tVar);
            }
        }
        return string;
    }

    @JavascriptInterface
    public String getViewSignals() {
        try {
            l lVar = l.f25980A;
            lVar.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strZzh = this.f30588c.f13700b.zzh(this.f30586a, this.f30587b, null);
            if (this.f30592g) {
                lVar.f25990j.getClass();
                m.m(this.f30591f, "vsg", new Pair("vlat", String.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
            }
            return strZzh;
        } catch (RuntimeException e8) {
            h.e("Exception getting view signals. ", e8);
            l.f25980A.f25987g.i("TaggingLibraryJsInterface.getViewSignals", e8);
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    @JavascriptInterface
    public String getViewSignalsWithTimeout(int i8) {
        if (i8 <= 0) {
            h.d("Invalid timeout for getting view signals. Timeout=" + i8);
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        try {
            return (String) AbstractC1988se.f20906a.b(new p019c2.h(this, 5)).get(Math.min(i8, this.f30590e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e8) {
            h.e("Exception getting view signals with timeout. ", e8);
            l.f25980A.f25987g.i("TaggingLibraryJsInterface.getViewSignalsWithTimeout", e8);
            return e8 instanceof TimeoutException ? "17" : HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    @JavascriptInterface
    public void recordClick(String str) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.U8)).booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        AbstractC1988se.f20906a.execute(new RunnableC3036k(this, str, 21));
    }

    @JavascriptInterface
    public void reportTouchEvent(String str) {
        int i8;
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i9 = jSONObject.getInt("x");
            int i10 = jSONObject.getInt("y");
            int i11 = jSONObject.getInt("duration_ms");
            float f8 = (float) jSONObject.getDouble("force");
            int i12 = jSONObject.getInt("type");
            if (i12 == 0) {
                i8 = 0;
            } else if (i12 == 1) {
                i8 = 1;
            } else if (i12 != 2) {
                i8 = i12 != 3 ? -1 : 3;
            } else {
                i8 = 2;
            }
            try {
                this.f30588c.f13700b.zzk(MotionEvent.obtain(0L, i11, i8, i9, i10, f8, 1.0f, 0, 1.0f, 1.0f, 0, 0));
            } catch (RuntimeException e8) {
                e = e8;
                h.e("Failed to parse the touch string. ", e);
                l.f25980A.f25987g.i("TaggingLibraryJsInterface.reportTouchEvent", e);
            } catch (JSONException e9) {
                e = e9;
                h.e("Failed to parse the touch string. ", e);
                l.f25980A.f25987g.i("TaggingLibraryJsInterface.reportTouchEvent", e);
            }
        } catch (RuntimeException | JSONException e10) {
            e = e10;
        }
    }
}
