package Y;

import Y.RunnableC0394f;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.LK;
import com.google.android.gms.internal.ads.M5;
import com.google.android.gms.internal.ads.Q5;
import com.google.android.gms.internal.measurement.C2592l0;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p021c4.C0574d1;
import p021c4.C0594k0;
import p021c4.C0597l0;
import p021c4.C0611t;
import p021c4.I1;
import p021c4.J1;
import p021c4.K0;

/* JADX INFO: renamed from: Y.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0394f implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7878G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f7879H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f7880I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f7881J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f7882K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f7883L;

    public RunnableC0394f(K0 k8, AtomicReference atomicReference, String str, String str2, boolean z7) {
        this.f7878G = 3;
        this.f7880I = atomicReference;
        this.f7881J = str;
        this.f7882K = str2;
        this.f7879H = z7;
        this.f7883L = k8;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0147  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundleZ0;
        int i8 = this.f7878G;
        boolean z7 = this.f7879H;
        Object obj = this.f7883L;
        Object obj2 = this.f7881J;
        Object obj3 = this.f7882K;
        Object obj4 = this.f7880I;
        switch (i8) {
            case 0:
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((d0) obj4).f7863c;
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = ((d0) obj2).f7863c;
                X x7 = S.f7790a;
                if (!z7) {
                    abstractComponentCallbacksC0406s.getClass();
                } else {
                    abstractComponentCallbacksC0406s2.getClass();
                }
                break;
            case 1:
                if (((WebView) obj3).getSettings().getJavaScriptEnabled()) {
                    try {
                        ((WebView) obj3).evaluateJavascript("(function() { return  {text:document.body.innerText}})();", (ValueCallback) obj4);
                    } catch (Throwable unused) {
                        ((ValueCallback) obj4).onReceiveValue(HttpUrl.FRAGMENT_ENCODE_SET);
                        return;
                    }
                }
                break;
            case 2:
                C0574d1 c0574d1R = ((AppMeasurementDynamiteService) obj).f24099G.r();
                c0574d1R.m();
                c0574d1R.n();
                c0574d1R.E(new LK(c0574d1R, (String) obj2, (String) obj3, c0574d1R.B(false), this.f7879H, (com.google.android.gms.internal.measurement.M) obj4));
                break;
            case 3:
                C0574d1 c0574d1R2 = ((C0597l0) ((K0) obj).f10616G).r();
                c0574d1R2.m();
                c0574d1R2.n();
                c0574d1R2.E(new LK(c0574d1R2, (AtomicReference) obj4, (String) obj2, (String) obj3, c0574d1R2.B(false), this.f7879H));
                break;
            case 4:
                C2592l0 c2592l0 = (C2592l0) obj;
                K0 k8 = (K0) c2592l0.f23192H;
                k8.m();
                String str = (String) obj3;
                Uri uri = (Uri) obj4;
                try {
                    C0597l0 c0597l0 = (C0597l0) k8.f10616G;
                    I1 i9 = c0597l0.f11261R;
                    p021c4.T t7 = c0597l0.f11258O;
                    C0597l0.i(i9);
                    try {
                        String str2 = "utm_medium";
                        if (TextUtils.isEmpty(str)) {
                            bundleZ0 = null;
                        } else {
                            try {
                                if (str.contains("gclid") || str.contains("gbraid") || str.contains("utm_campaign") || str.contains("utm_source") || str.contains("utm_medium") || str.contains("utm_id") || str.contains("dclid") || str.contains("srsltid") || str.contains("sfmc_id")) {
                                    bundleZ0 = i9.z0(Uri.parse("https://google.com/search?".concat(str)));
                                    if (bundleZ0 != null) {
                                        bundleZ0.putString("_cis", "referrer");
                                    }
                                } else {
                                    p021c4.T t8 = ((C0597l0) i9.f10616G).f11258O;
                                    C0597l0.k(t8);
                                    t8.f11046S.a("Activity created with data 'referrer' without required params");
                                    bundleZ0 = null;
                                }
                            } catch (RuntimeException e8) {
                                e = e8;
                                c2592l0 = c2592l0;
                                p021c4.T t9 = ((C0597l0) ((K0) c2592l0.f23192H).f10616G).f11258O;
                                C0597l0.k(t9);
                                t9.f11039L.b(e, "Throwable caught in handleReferrerForOnActivityCreated");
                                return;
                            }
                        }
                        String str3 = (String) obj2;
                        C0594k0 c0594k0 = k8.f10924X;
                        if (z7) {
                            I1 i10 = c0597l0.f11261R;
                            C0597l0.i(i10);
                            Bundle bundleZ1 = i10.z0(uri);
                            if (bundleZ1 != null) {
                                bundleZ1.putString("_cis", "intent");
                                if (!bundleZ1.containsKey("gclid") && bundleZ0 != null && bundleZ0.containsKey("gclid")) {
                                    bundleZ1.putString("_cer", "gclid=" + bundleZ0.getString("gclid"));
                                }
                                k8.y(str3, "_cmp", bundleZ1);
                                c0594k0.b(str3, bundleZ1);
                            } else {
                                str2 = "utm_medium";
                            }
                        } else {
                            str2 = "utm_medium";
                        }
                        if (!TextUtils.isEmpty(str)) {
                            C0597l0.k(t7);
                            p021c4.Q q7 = t7.f11046S;
                            q7.b(str, "Activity created with referrer");
                            if (c0597l0.f11256M.B(null, p021c4.E.f10725G0)) {
                                if (bundleZ0 != null) {
                                    k8.y(str3, "_cmp", bundleZ0);
                                    c0594k0.b(str3, bundleZ0);
                                } else {
                                    C0597l0.k(t7);
                                    q7.b(str, "Referrer does not contain valid parameters");
                                }
                                k8.H("auto", "_ldl", null, true);
                            } else if (!str.contains("gclid") || (!str.contains("utm_campaign") && !str.contains("utm_source") && !str.contains(str2) && !str.contains("utm_term") && !str.contains("utm_content"))) {
                                C0597l0.k(t7);
                                q7.a("Activity created with data 'referrer' without required params");
                            } else if (!TextUtils.isEmpty(str)) {
                                k8.H("auto", "_ldl", str, true);
                            }
                        }
                    } catch (RuntimeException e9) {
                        e = e9;
                        p021c4.T t10 = ((C0597l0) ((K0) c2592l0.f23192H).f10616G).f11258O;
                        C0597l0.k(t10);
                        t10.f11039L.b(e, "Throwable caught in handleReferrerForOnActivityCreated");
                        return;
                    }
                } catch (RuntimeException e10) {
                    e = e10;
                }
                break;
            default:
                C0574d1 c0574d1 = (C0574d1) obj;
                p021c4.G g8 = c0574d1.f11146J;
                if (g8 == null) {
                    p021c4.T t11 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t11);
                    t11.f11039L.a("Failed to send default event parameters to service");
                } else if (((C0597l0) c0574d1.f10616G).f11256M.B(null, p021c4.E.f10802m1)) {
                    J1 j8 = (J1) obj4;
                    com.bumptech.glide.c.h(j8);
                    c0574d1.t(g8, z7 ? null : (C0611t) obj2, j8);
                } else {
                    try {
                        J1 j9 = (J1) obj4;
                        com.bumptech.glide.c.h(j9);
                        g8.b1((Bundle) obj3, j9);
                        c0574d1.D();
                    } catch (RemoteException e11) {
                        p021c4.T t12 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t12);
                        t12.f11039L.b(e11, "Failed to send default event parameters to service");
                    }
                }
                break;
        }
    }

    public RunnableC0394f(C0574d1 c0574d1, J1 j8, boolean z7, C0611t c0611t, Bundle bundle) {
        this.f7878G = 5;
        this.f7880I = j8;
        this.f7879H = z7;
        this.f7881J = c0611t;
        this.f7882K = bundle;
        this.f7883L = c0574d1;
    }

    public RunnableC0394f(C2592l0 c2592l0, boolean z7, Uri uri, String str, String str2) {
        this.f7878G = 4;
        this.f7879H = z7;
        this.f7880I = uri;
        this.f7881J = str;
        this.f7882K = str2;
        this.f7883L = c2592l0;
    }

    public RunnableC0394f(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.M m7, String str, String str2, boolean z7) {
        this.f7878G = 2;
        this.f7880I = m7;
        this.f7881J = str;
        this.f7882K = str2;
        this.f7879H = z7;
        this.f7883L = appMeasurementDynamiteService;
    }

    public RunnableC0394f(Q5 q7, M5 m7, WebView webView, boolean z7) {
        this.f7878G = 1;
        this.f7881J = m7;
        this.f7882K = webView;
        this.f7879H = z7;
        this.f7883L = q7;
        this.f7880I = new ValueCallback() { // from class: com.google.android.gms.internal.ads.P5
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                RunnableC0394f runnableC0394f = this.f15333a;
                Q5 q8 = (Q5) runnableC0394f.f7883L;
                M5 m8 = (M5) runnableC0394f.f7881J;
                WebView webView2 = (WebView) runnableC0394f.f7882K;
                String str = (String) obj;
                boolean z8 = runnableC0394f.f7879H;
                q8.getClass();
                synchronized (m8.f14630g) {
                    m8.f14636m--;
                }
                try {
                    if (!TextUtils.isEmpty(str)) {
                        String strOptString = new JSONObject(str).optString("text");
                        if (q8.f15570T || TextUtils.isEmpty(webView2.getTitle())) {
                            m8.b(strOptString, z8, webView2.getX(), webView2.getY(), webView2.getWidth(), webView2.getHeight());
                        } else {
                            m8.b(webView2.getTitle() + "\n" + strOptString, z8, webView2.getX(), webView2.getY(), webView2.getWidth(), webView2.getHeight());
                        }
                    }
                    if (m8.e()) {
                        q8.f15560J.h(m8);
                    }
                } catch (JSONException unused) {
                    p120p3.h.b("Json string may be malformed.");
                } catch (Throwable th) {
                    p120p3.h.c("Failed to get webview content.", th);
                    p083k3.l.f25980A.f25987g.i("ContentFetchTask.processWebViewContent", th);
                }
            }
        };
    }

    public RunnableC0394f(C0397i c0397i, d0 d0Var, d0 d0Var2, boolean z7, p132r.f fVar) {
        this.f7878G = 0;
        this.f7883L = c0397i;
        this.f7880I = d0Var;
        this.f7881J = d0Var2;
        this.f7879H = z7;
        this.f7882K = fVar;
    }
}
