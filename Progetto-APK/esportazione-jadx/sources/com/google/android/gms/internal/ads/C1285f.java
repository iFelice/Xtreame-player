package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1285f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f18632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final U0.C f18633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C1804p0 f18634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f18635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f18636f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18637g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f18638h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18639i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f18640j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InterfaceC2270y f18641k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Executor f18642l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ C1337g f18643m;

    public C1285f(C1337g c1337g, Context context) {
        this.f18643m = c1337g;
        this.f18631a = context;
        Et.d(context);
        this.f18632b = new ArrayList();
        this.f18633c = new U0.C();
        this.f18638h = -9223372036854775807L;
        this.f18641k = InterfaceC2270y.f21969m;
        this.f18642l = C1337g.f18857m;
    }

    public final void a() {
        if (this.f18634d == null) {
            return;
        }
        new ArrayList(this.f18632b);
        C1804p0 c1804p0 = this.f18634d;
        c1804p0.getClass();
        p113o3.r.x(null);
        C1928rL c1928rL = c1804p0.f20396z;
        if (c1928rL == null || !c1928rL.d()) {
            C1928rL c1928rL2 = C1928rL.f20712h;
        }
        StringBuilder sb = new StringBuilder("width must be positive, but is: ");
        int i8 = c1804p0.f20389s;
        sb.append(i8);
        p113o3.r.L(i8 > 0, sb.toString());
        StringBuilder sb2 = new StringBuilder("height must be positive, but is: ");
        int i9 = c1804p0.f20390t;
        sb2.append(i9);
        p113o3.r.L(i9 > 0, sb2.toString());
        throw null;
    }

    public final void b(boolean z7) {
        this.f18639i = false;
        this.f18638h = -9223372036854775807L;
        C1337g c1337g = this.f18643m;
        if (c1337g.f18869l == 1) {
            c1337g.f18868k++;
            c1337g.f18860c.a();
            C2054ts c2054ts = c1337g.f18866i;
            p113o3.r.x(c2054ts);
            c2054ts.b(new RunnableC1026Zn(c1337g, 26));
        }
        if (z7) {
            C1699n c1699n = c1337g.f18859b;
            U0.I i8 = c1699n.f20032b;
            i8.f6663j = 0L;
            i8.f6666m = -1L;
            i8.f6664k = -1L;
            c1699n.f20037g = -9223372036854775807L;
            c1699n.f20035e = -9223372036854775807L;
            c1699n.f(1);
            c1699n.f20038h = -9223372036854775807L;
        }
    }

    public final void c(C1804p0 c1804p0) {
        C1337g c1337g = this.f18643m;
        p113o3.r.M(c1337g.f18869l == 0);
        C1928rL c1928rL = c1804p0.f20396z;
        if (c1928rL == null || !c1928rL.d()) {
            c1928rL = C1928rL.f20712h;
        }
        if (c1928rL.f20715c != 7 || Et.f13234a < 34) {
        }
        Looper looperMyLooper = Looper.myLooper();
        p113o3.r.x(looperMyLooper);
        c1337g.f18866i = ((Nr) c1337g.f18862e).a(looperMyLooper, null);
        try {
            C1182d c1182d = c1337g.f18861d;
            C1969sA c1969sA = AbstractC2073uA.f21207H;
            PA pa = PA.f15340K;
            c1182d.a();
            Pair pair = c1337g.f18867j;
            if (pair == null) {
                throw null;
            }
            ((Br) pair.second).getClass();
            throw null;
        } catch (C0865Og e8) {
            throw new C2322z(e8, c1804p0);
        }
    }

    public final void d(long j8, long j9) {
        try {
            C1337g.a(this.f18643m, j8, j9);
        } catch (C1512jK e8) {
            C1804p0 c1804p0 = this.f18634d;
            if (c1804p0 == null) {
                c1804p0 = new C1804p0(new K());
            }
            throw new C2322z(e8, c1804p0);
        }
    }

    public final void e(Surface surface, Br br) {
        C1337g c1337g = this.f18643m;
        Pair pair = c1337g.f18867j;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((Br) c1337g.f18867j.second).equals(br)) {
            return;
        }
        c1337g.f18867j = Pair.create(surface, br);
        br.getClass();
    }

    public final void f(long j8, long j9, long j10, long j11) {
        this.f18635e = j8;
        this.f18636f = j10;
        this.f18637g = j11;
    }

    public final boolean g(long j8, boolean z7, long j9, long j10, C1441i c1441i) throws C2322z {
        C1337g c1337g = this.f18643m;
        p113o3.r.M(false);
        long j11 = j8 - this.f18636f;
        try {
            if (c1337g.f18859b.a(j11, j9, j10, this.f18635e, z7, this.f18633c) != 4) {
                if (j11 < this.f18637g && !z7) {
                    c1441i.f19202c.m0(c1441i.f19200a, c1441i.f19201b);
                    return true;
                }
                d(j9, j10);
                long j12 = this.f18640j;
                if (j12 != -9223372036854775807L) {
                    if (c1337g.f18868k == 0) {
                        long j13 = c1337g.f18860c.f20823i;
                        if (j13 != -9223372036854775807L && j13 >= j12) {
                            a();
                            this.f18640j = -9223372036854775807L;
                        }
                    }
                }
                p113o3.r.x(null);
                throw null;
            }
            return false;
        } catch (C1512jK e8) {
            C1804p0 c1804p0 = this.f18634d;
            p113o3.r.x(c1804p0);
            throw new C2322z(e8, c1804p0);
        }
    }
}
