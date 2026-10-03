package p113o3;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.Q7;
import java.util.concurrent.Callable;
import okhttp3.HttpUrl;
import p021c4.A1;
import p021c4.BinderC0608r0;
import p021c4.C0590j;
import p021c4.C0602o;
import p021c4.C0620x0;
import p021c4.EnumC0618w0;
import p021c4.J1;
import p090l3.C3099q;
import p167v3.C3193a;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f27878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f27879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f27880c;

    public /* synthetic */ F(int i8, Object obj, Object obj2) {
        this.f27878a = i8;
        this.f27879b = obj;
        this.f27880c = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        SharedPreferences sharedPreferences;
        int i8 = this.f27878a;
        boolean z7 = false;
        Object obj = this.f27880c;
        Object obj2 = this.f27879b;
        switch (i8) {
            case 0:
                Context context = (Context) obj2;
                Context context2 = (Context) obj;
                if (context != null) {
                    I.k("Attempting to read user agent from Google Play Services.");
                    sharedPreferences = context.getSharedPreferences("admob_user_agent", 0);
                } else {
                    I.k("Attempting to read user agent from local cache.");
                    sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                    z7 = true;
                }
                String string = sharedPreferences.getString("user_agent", HttpUrl.FRAGMENT_ENCODE_SET);
                if (TextUtils.isEmpty(string)) {
                    I.k("Reading user agent from WebSettings");
                    string = WebSettings.getDefaultUserAgent(context2);
                    if (z7) {
                        sharedPreferences.edit().putString("user_agent", string).apply();
                        I.k("Persisting user agent.");
                    }
                }
                return string;
            case 1:
                J j8 = O.f27924l;
                WebSettings webSettings = (WebSettings) obj;
                webSettings.setDatabasePath(((Context) obj2).getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15606E0)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return Boolean.TRUE;
            case 2:
                return ((C3193a) obj2).getClickSignals((String) obj);
            case 3:
                BinderC0608r0 binderC0608r0 = (BinderC0608r0) obj;
                binderC0608r0.f11346G.i();
                C0602o c0602o = binderC0608r0.f11346G.f10654I;
                A1.I(c0602o);
                return c0602o.u((String) obj2);
            case 4:
                BinderC0608r0 binderC0608r1 = (BinderC0608r0) obj;
                binderC0608r1.f11346G.i();
                return new C0590j(binderC0608r1.f11346G.Z(((J1) obj2).f10876G));
            default:
                J1 j9 = (J1) obj2;
                String str = j9.f10876G;
                c.h(str);
                A1 a8 = (A1) obj;
                C0620x0 c0620x0I0 = a8.i0(str);
                EnumC0618w0 enumC0618w0 = EnumC0618w0.ANALYTICS_STORAGE;
                if (c0620x0I0.k(enumC0618w0) && C0620x0.e(100, j9.f10896a0).k(enumC0618w0)) {
                    return a8.b0(j9).d();
                }
                a8.b().f11047T.a("Analytics storage consent denied. Returning null app instance id");
                return null;
        }
    }

    public /* synthetic */ F(Object obj, Object obj2, int i8) {
        this.f27878a = i8;
        this.f27880c = obj;
        this.f27879b = obj2;
    }
}
