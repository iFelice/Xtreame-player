package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Bh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0672Bh implements G5, InterfaceC0674Bj, p105n3.m, InterfaceC0659Aj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2251xh f12471G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2303yh f12472H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0957Va f12474J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Executor f12475K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final P3.a f12476L;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final HashSet f12473I = new HashSet();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AtomicBoolean f12477M = new AtomicBoolean(false);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C0657Ah f12478N = new C0657Ah();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f12479O = false;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public WeakReference f12480P = new WeakReference(this);

    public C0672Bh(C0971Wa c0971Wa, C2303yh c2303yh, Executor executor, C2251xh c2251xh, P3.a aVar) {
        this.f12471G = c2251xh;
        Charset charset = AbstractC0873Pa.f15388a;
        c0971Wa.a();
        this.f12474J = new C0957Va(c0971Wa.f17247b);
        this.f12472H = c2303yh;
        this.f12475K = executor;
        this.f12476L = aVar;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final synchronized void F(F5 f8) {
        C0657Ah c0657Ah = this.f12478N;
        c0657Ah.f12021a = f8.f13321j;
        c0657Ah.f12025e = f8;
        a();
    }

    @Override // p105n3.m
    public final synchronized void O2() {
        this.f12478N.f12022b = false;
        a();
    }

    @Override // p105n3.m
    public final void Y() {
    }

    public final synchronized void a() {
        try {
            if (this.f12480P.get() == null) {
                b();
                return;
            }
            if (this.f12479O || !this.f12477M.get()) {
                return;
            }
            try {
                C0657Ah c0657Ah = this.f12478N;
                ((P3.b) this.f12476L).getClass();
                c0657Ah.f12023c = SystemClock.elapsedRealtime();
                JSONObject jSONObjectZzb = this.f12472H.zzb(this.f12478N);
                Iterator it = this.f12473I.iterator();
                while (true) {
                    int i8 = 0;
                    if (!it.hasNext()) {
                        C0957Va c0957Va = this.f12474J;
                        c0957Va.getClass();
                        C0957Va c0957Va2 = new C0957Va(1, c0957Va, jSONObjectZzb);
                        D4.b bVar = (D4.b) c0957Va.f17066c;
                        C1936re c1936re = AbstractC1988se.f20911f;
                        Cw.h2(Cw.d2(bVar, c0957Va2, c1936re), new J("ActiveViewListener.callActiveViewJs", 2, 0), c1936re);
                        return;
                    }
                    this.f12475K.execute(new RunnableC2355zh((InterfaceC0715Ef) it.next(), jSONObjectZzb, i8));
                }
            } catch (Exception e8) {
                p113o3.I.l("Failed to call ActiveViewJS", e8);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        c();
        this.f12479O = true;
    }

    public final void c() {
        Iterator it = this.f12473I.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String str = "/untrackActiveViewUnit";
            String str2 = "/updateActiveView";
            C2251xh c2251xh = this.f12471G;
            if (!zHasNext) {
                C2199wh c2199wh = c2251xh.f21910e;
                C0971Wa c0971Wa = c2251xh.f21907b;
                D4.b bVar = c0971Wa.f17247b;
                int i8 = 0;
                C0929Ta c0929Ta = new C0929Ta(i8, str2, c2199wh);
                C1936re c1936re = AbstractC1988se.f20911f;
                KB kbB2 = Cw.b2(bVar, c0929Ta, c1936re);
                c0971Wa.f17247b = kbB2;
                c0971Wa.f17247b = Cw.b2(kbB2, new C0929Ta(i8, str, c2251xh.f21911f), c1936re);
                return;
            }
            InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) it.next();
            interfaceC0715Ef.D0("/updateActiveView", c2251xh.f21910e);
            interfaceC0715Ef.D0("/untrackActiveViewUnit", c2251xh.f21911f);
        }
    }

    @Override // p105n3.m
    public final void k3() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final synchronized void m(Context context) {
        this.f12478N.f12024d = "u";
        a();
        c();
        this.f12479O = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final synchronized void p(Context context) {
        this.f12478N.f12022b = true;
        a();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final synchronized void q(Context context) {
        this.f12478N.f12022b = false;
        a();
    }

    @Override // p105n3.m
    public final void r1(int i8) {
    }

    @Override // p105n3.m
    public final synchronized void u3() {
        this.f12478N.f12022b = true;
        a();
    }

    @Override // p105n3.m
    public final void v0() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final synchronized void zzr() {
        int i8 = 0;
        if (this.f12477M.compareAndSet(false, true)) {
            C2251xh c2251xh = this.f12471G;
            C2199wh c2199wh = c2251xh.f21910e;
            C0971Wa c0971Wa = c2251xh.f21907b;
            c0971Wa.a();
            D4.b bVar = c0971Wa.f17247b;
            C0957Va c0957Va = new C0957Va(i8, "/updateActiveView", c2199wh);
            C1936re c1936re = AbstractC1988se.f20911f;
            c0971Wa.f17247b = Cw.d2(bVar, c0957Va, c1936re);
            C2199wh c2199wh2 = c2251xh.f21911f;
            c0971Wa.a();
            c0971Wa.f17247b = Cw.d2(c0971Wa.f17247b, new C0957Va(i8, "/untrackActiveViewUnit", c2199wh2), c1936re);
            c2251xh.f21909d = this;
            a();
        }
    }
}
