package p083k3;

import D4.b;
import J6.r;
import Q3.c;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.AbstractC1346g8;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.H4;
import com.google.android.gms.internal.ads.InterfaceC1292f6;
import com.google.android.gms.internal.ads.InterfaceC1366gd;
import com.google.android.gms.internal.ads.Z7;
import java.util.Map;
import java.util.TreeMap;
import p019c2.h;
import p086l.C3061x;
import p086l.L0;
import p090l3.B0;
import p090l3.I;
import p090l3.InterfaceC3068a0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3104t;
import p090l3.InterfaceC3110w;
import p090l3.InterfaceC3113x0;
import p090l3.InterfaceC3116z;
import p090l3.U;
import p090l3.Y;
import p090l3.Y0;
import p090l3.b1;
import p090l3.d1;
import p090l3.h1;
import p120p3.a;

/* JADX INFO: loaded from: classes.dex */
public final class k extends I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final a f25971G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final d1 f25972H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final b f25973I = AbstractC1988se.f20906a.b(new h(this, 4));

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Context f25974J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C3061x f25975K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public WebView f25976L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public InterfaceC3110w f25977M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public H4 f25978N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public AsyncTask f25979O;

    public k(Context context, d1 d1Var, String str, a aVar) {
        String strConcat;
        this.f25974J = context;
        this.f25971G = aVar;
        this.f25972H = d1Var;
        this.f25976L = new WebView(context);
        C3061x c3061x = new C3061x();
        c3061x.f26410G = context.getApplicationContext();
        c3061x.f26411H = str;
        c3061x.f26412I = new TreeMap();
        String packageName = context.getPackageName();
        int i8 = 0;
        try {
            strConcat = packageName + "-" + c.a(context).c(0, context.getPackageName()).versionName;
        } catch (PackageManager.NameNotFoundException e8) {
            p120p3.h.e("Unable to get package version name for reporting", e8);
            strConcat = String.valueOf(packageName).concat("-missing");
        }
        c3061x.f26415L = strConcat;
        this.f25975K = c3061x;
        z3(0);
        this.f25976L.setVerticalScrollBarEnabled(false);
        this.f25976L.getSettings().setJavaScriptEnabled(true);
        this.f25976L.setWebViewClient(new i(this, i8));
        this.f25976L.setOnTouchListener(new L0(this, 1));
    }

    @Override // p090l3.J
    public final void A() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void C0(InterfaceC3110w interfaceC3110w) {
        this.f25977M = interfaceC3110w;
    }

    @Override // p090l3.J
    public final void D() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void E0(h1 h1Var) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void G0(Y0 y7) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void H2(boolean z7) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void I() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void L() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final boolean P() {
        return false;
    }

    @Override // p090l3.J
    public final boolean R() {
        return false;
    }

    @Override // p090l3.J
    public final void S() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void U() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void a2(Y y7) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void c0(Z7 z7) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final String e() {
        return null;
    }

    @Override // p090l3.J
    public final void f() {
        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
        this.f25979O.cancel(true);
        this.f25973I.cancel(false);
        this.f25976L.destroy();
        this.f25976L = null;
    }

    @Override // p090l3.J
    public final void g1(InterfaceC1366gd interfaceC1366gd) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void h2(InterfaceC3104t interfaceC3104t) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final boolean h3(b1 b1Var) {
        com.bumptech.glide.c.i(this.f25976L, "This Search Ad has already been torn down");
        C3061x c3061x = this.f25975K;
        c3061x.getClass();
        c3061x.f26413J = b1Var.f26526P.f26506G;
        Bundle bundle = b1Var.f26529S;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 != null) {
            String str = (String) AbstractC1346g8.f18905c.l();
            for (String str2 : bundle2.keySet()) {
                if (str.equals(str2)) {
                    c3061x.f26414K = bundle2.getString(str2);
                } else if (str2.startsWith("csa_")) {
                    ((Map) c3061x.f26412I).put(str2.substring(4), bundle2.getString(str2));
                }
            }
            ((Map) c3061x.f26412I).put("SDKVersion", this.f25971G.f28196G);
            if (((Boolean) AbstractC1346g8.f18903a.l()).booleanValue()) {
                Bundle bundleU = r.u((Context) c3061x.f26410G, (String) AbstractC1346g8.f18904b.l());
                for (String str3 : bundleU.keySet()) {
                    ((Map) c3061x.f26412I).put(str3, bundleU.get(str3).toString());
                }
            }
        }
        this.f25979O = new j(this).execute(new Void[0]);
        return true;
    }

    @Override // p090l3.J
    public final boolean j3() {
        return false;
    }

    @Override // p090l3.J
    public final void k2(InterfaceC1292f6 interfaceC1292f6) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void p0(U u7) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void r() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void t() {
        com.bumptech.glide.c.d("resume must be called on the main UI thread.");
    }

    @Override // p090l3.J
    public final void u0(d1 d1Var) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // p090l3.J
    public final void v() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final void y0() {
        com.bumptech.glide.c.d("pause must be called on the main UI thread.");
    }

    public final void z3(int i8) {
        if (this.f25976L == null) {
            return;
        }
        this.f25976L.setLayoutParams(new ViewGroup.LayoutParams(-1, i8));
    }

    @Override // p090l3.J
    public final Bundle zzd() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p090l3.J
    public final d1 zzg() {
        return this.f25972H;
    }

    @Override // p090l3.J
    public final InterfaceC3110w zzi() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // p090l3.J
    public final U zzj() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // p090l3.J
    public final InterfaceC3113x0 zzk() {
        return null;
    }

    @Override // p090l3.J
    public final B0 zzl() {
        return null;
    }

    @Override // p090l3.J
    public final R3.a zzn() {
        com.bumptech.glide.c.d("getAdFrame must be called on the main UI thread.");
        return new R3.b(this.f25976L);
    }

    public final String zzq() {
        String str = (String) this.f25975K.f26414K;
        if (true == TextUtils.isEmpty(str)) {
            str = "www.google.com";
        }
        return p000a.r.g("https://", str, (String) AbstractC1346g8.f18906d.l());
    }

    @Override // p090l3.J
    public final String zzr() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // p090l3.J
    public final String zzs() {
        return null;
    }

    @Override // p090l3.J
    public final void D2(R3.a aVar) {
    }

    @Override // p090l3.J
    public final void N2(InterfaceC3100q0 interfaceC3100q0) {
    }

    @Override // p090l3.J
    public final void d3(InterfaceC3068a0 interfaceC3068a0) {
    }

    @Override // p090l3.J
    public final void s3(boolean z7) {
    }

    @Override // p090l3.J
    public final void S2(b1 b1Var, InterfaceC3116z interfaceC3116z) {
    }
}
