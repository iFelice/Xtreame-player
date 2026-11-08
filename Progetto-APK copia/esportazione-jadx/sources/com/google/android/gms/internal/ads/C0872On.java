package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p090l3.C3117z0;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.On, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0872On implements p051g3.b, InterfaceC1022Zj, InterfaceC3067a, InterfaceC1838pj, InterfaceC0659Aj, InterfaceC0674Bj, InterfaceC0779Ij, InterfaceC1993sj, Lw {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f15198G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0828Ln f15199H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f15200I;

    public C0872On(C0828Ln c0828Ln, AbstractC1317fg abstractC1317fg) {
        this.f15199H = c0828Ln;
        this.f15198G = Collections.singletonList(abstractC1317fg);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void a() {
        s(InterfaceC1838pj.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void b() {
        s(InterfaceC1838pj.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void c(Iw iw, String str, Throwable th) {
        s(Hw.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void d(Iw iw, String str) {
        s(Hw.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void e(String str) {
        s(Hw.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void g(InterfaceC1211dd interfaceC1211dd, String str, String str2) {
        s(InterfaceC1838pj.class, "onRewarded", interfaceC1211dd, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void i(Iw iw, String str) {
        s(Hw.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void m(Context context) {
        s(InterfaceC0674Bj.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        p083k3.l.f25980A.f25990j.getClass();
        p113o3.I.k("Ad Request Latency : " + (SystemClock.elapsedRealtime() - this.f15200I));
        s(InterfaceC0779Ij.class, "onAdLoaded", new Object[0]);
    }

    @Override // p051g3.b
    public final void o(String str, String str2) {
        s(p051g3.b.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void p(Context context) {
        s(InterfaceC0674Bj.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void q(Context context) {
        s(InterfaceC0674Bj.class, "onResume", context);
    }

    public final void s(Class cls, String str, Object... objArr) {
        String simpleName = cls.getSimpleName();
        List list = this.f15198G;
        String strConcat = "Event-".concat(simpleName);
        C0828Ln c0828Ln = this.f15199H;
        c0828Ln.getClass();
        if (((Boolean) AbstractC2019t8.f21041a.l()).booleanValue()) {
            ((P3.b) c0828Ln.f14551a).getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name("timestamp").value(jCurrentTimeMillis);
                jsonWriter.name("source").value(strConcat);
                jsonWriter.name("event").value(str);
                jsonWriter.name("components").beginArray();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    jsonWriter.value(it.next().toString());
                }
                jsonWriter.endArray();
                jsonWriter.name("params").beginArray();
                int length = objArr.length;
                for (int i8 = 0; i8 < length; i8++) {
                    Object obj = objArr[i8];
                    jsonWriter.value(obj != null ? obj.toString() : null);
                }
                jsonWriter.endArray();
                jsonWriter.endObject();
                jsonWriter.flush();
                jsonWriter.close();
            } catch (IOException e8) {
                p120p3.h.e("unable to log", e8);
            }
            p120p3.h.f("AD-DBG ".concat(String.valueOf(stringWriter.toString())));
        }
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        s(InterfaceC3067a.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        s(InterfaceC1993sj.class, "onAdFailedToLoad", Integer.valueOf(c3117z0.f26629G), c3117z0.f26630H, c3117z0.f26631I);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
        p083k3.l.f25980A.f25990j.getClass();
        this.f15200I = SystemClock.elapsedRealtime();
        s(InterfaceC1022Zj.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zza() {
        s(InterfaceC1838pj.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzb() {
        s(InterfaceC1838pj.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzc() {
        s(InterfaceC1838pj.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        s(InterfaceC0659Aj.class, "onAdImpression", new Object[0]);
    }
}
