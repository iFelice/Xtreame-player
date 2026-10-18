package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Rm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class CallableC0913Rm implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p083k3.a f16352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f16353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0738Fn f16354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1172cq f16355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f16356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final H4 f16357f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p120p3.a f16358g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1488ix f16359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BinderC1431hq f16360i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Zv f16361j;

    public CallableC0913Rm(Context context, Executor executor, H4 h8, p120p3.a aVar, p083k3.a aVar2, C1172cq c1172cq, C1488ix c1488ix, C0738Fn c0738Fn, BinderC1431hq binderC1431hq, Zv zv) {
        this.f16353b = context;
        this.f16356e = executor;
        this.f16357f = h8;
        this.f16358g = aVar;
        this.f16352a = aVar2;
        this.f16355d = c1172cq;
        this.f16359h = c1488ix;
        this.f16354c = c0738Fn;
        this.f16360i = binderC1431hq;
        this.f16361j = zv;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        C0941Tm c0941Tm = new C0941Tm(this);
        synchronized (c0941Tm) {
            final String str = (String) C3099q.f26624d.f26627c.a(Q7.f15973x3);
            final Context context = c0941Tm.f16728c;
            final H4 h8 = c0941Tm.f16731f;
            final p120p3.a aVar = c0941Tm.f16732g;
            final p083k3.a aVar2 = c0941Tm.f16727b;
            final BinderC1431hq binderC1431hq = c0941Tm.f16736k;
            final Zv zv = c0941Tm.f16737l;
            KB kbB2 = Cw.b2(Cw.W1(new QB() { // from class: com.google.android.gms.internal.ads.Kf
                @Override // com.google.android.gms.internal.ads.QB
                public final D4.b zza() throws C0835Mf {
                    C2272y1 c2272y1 = p083k3.l.f25980A.f25984d;
                    InterfaceC0715Ef interfaceC0715EfE = C2272y1.e(context, new A2.i(0, 0, 0, 5), aVar, aVar2, null, h8, new C2173w6(), null, binderC1431hq, null, null, zv, HttpUrl.FRAGMENT_ENCODE_SET, false, false);
                    C1862q6 c1862q6 = new C1862q6(interfaceC0715EfE);
                    interfaceC0715EfE.zzN().f17463M = new C0790Jf(c1862q6, 0);
                    interfaceC0715EfE.loadUrl(str);
                    return c1862q6;
                }
            }, AbstractC1988se.f20910e), new C0917Sc(c0941Tm, 1), c0941Tm.f16730e);
            c0941Tm.f16738m = kbB2;
            AbstractC2987b.d0(kbB2, "NativeJavascriptExecutor.initializeEngine");
        }
        return c0941Tm;
    }
}
