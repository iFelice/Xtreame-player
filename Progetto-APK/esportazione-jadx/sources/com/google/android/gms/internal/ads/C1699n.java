package com.google.android.gms.internal.ads;

import U0.C0340f;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1699n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1647m f20031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final U0.I f20032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20033c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f20036f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f20039i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f20034d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f20035e = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f20037g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f20038h = -9223372036854775807L;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f20040j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InterfaceC1840pl f20041k = InterfaceC1840pl.f20481a;

    public C1699n(Context context, InterfaceC1647m interfaceC1647m) {
        this.f20031a = interfaceC1647m;
        this.f20032b = new U0.I(context, 1);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x007a  */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0115, code lost:
    
        if (r6 > 100000) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0120, code lost:
    
        if (r29 >= r33) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0125, code lost:
    
        if (r26.f20033c != false) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int a(long r27, long r29, long r31, long r33, boolean r35, U0.C r36) {
        /*
            Method dump skipped, instruction units count: 618
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1699n.a(long, long, long, long, boolean, U0.C):int");
    }

    public final void b() {
        this.f20033c = true;
        ((Nr) this.f20041k).getClass();
        this.f20036f = Et.t(SystemClock.elapsedRealtime());
        U0.I i8 = this.f20032b;
        i8.f6654a = true;
        i8.f6663j = 0L;
        i8.f6666m = -1L;
        i8.f6664k = -1L;
        C1855q c1855q = (C1855q) i8.f6669p;
        if (c1855q != null) {
            r rVar = (r) i8.f6670q;
            rVar.getClass();
            rVar.f20665H.sendEmptyMessage(2);
            Looper looperMyLooper = Looper.myLooper();
            p113o3.r.x(looperMyLooper);
            Handler handler = new Handler(looperMyLooper, null);
            DisplayManager displayManager = c1855q.f20518a;
            displayManager.registerDisplayListener(c1855q, handler);
            U0.I.e(c1855q.f20519b, displayManager.getDisplay(0));
        }
        i8.h(false);
    }

    public final void c() {
        this.f20033c = false;
        this.f20038h = -9223372036854775807L;
        U0.I i8 = this.f20032b;
        i8.f6654a = false;
        C1855q c1855q = (C1855q) i8.f6669p;
        if (c1855q != null) {
            c1855q.f20518a.unregisterDisplayListener(c1855q);
            r rVar = (r) i8.f6670q;
            rVar.getClass();
            rVar.f20665H.sendEmptyMessage(3);
        }
        i8.f();
    }

    public final void d(float f8) {
        U0.I i8 = this.f20032b;
        i8.f6656c = f8;
        C0340f c0340f = (C0340f) i8.f6668o;
        c0340f.f6742a.e();
        c0340f.f6743b.e();
        c0340f.f6744c = false;
        c0340f.f6745d = -9223372036854775807L;
        c0340f.f6746e = 0;
        i8.g();
    }

    public final boolean e(boolean z7) {
        boolean z8 = true;
        if (z7 && this.f20034d == 3) {
            this.f20038h = -9223372036854775807L;
        } else {
            if (this.f20038h == -9223372036854775807L) {
                return false;
            }
            ((Nr) this.f20041k).getClass();
            if (SystemClock.elapsedRealtime() >= this.f20038h) {
                z8 = false;
                this.f20038h = -9223372036854775807L;
            }
        }
        return z8;
    }

    public final void f(int i8) {
        this.f20034d = Math.min(this.f20034d, i8);
    }
}
