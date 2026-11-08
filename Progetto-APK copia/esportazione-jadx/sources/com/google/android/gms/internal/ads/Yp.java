package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Yp implements Lw {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Up f17647G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final F5.g f17648H;

    public Yp(Up up, F5.g gVar) {
        this.f17647G = up;
        this.f17648H = gVar;
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void c(Iw iw, String str, Throwable th) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15651J5)).booleanValue() && Iw.RENDERER == iw) {
            Up up = this.f17647G;
            if (up.c() != 0) {
                p083k3.l.f25980A.f25990j.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime() - up.c();
                synchronized (up) {
                    try {
                        synchronized (up.f16896j) {
                            try {
                                up.f16891e = jElapsedRealtime;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void d(Iw iw, String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15651J5)).booleanValue() && Iw.RENDERER == iw) {
            Up up = this.f17647G;
            if (up.c() != 0) {
                p083k3.l.f25980A.f25990j.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime() - up.c();
                synchronized (up) {
                    try {
                        synchronized (up.f16896j) {
                            try {
                                up.f16891e = jElapsedRealtime;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void e(String str) {
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void i(Iw iw, String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15651J5)).booleanValue()) {
            if (Iw.RENDERER == iw) {
                Up up = this.f17647G;
                p083k3.l.f25980A.f25990j.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                synchronized (up) {
                    synchronized (up.f16895i) {
                        up.f16890d = jElapsedRealtime;
                    }
                }
                return;
            }
            if (Iw.PRELOADED_LOADER == iw || Iw.SERVER_TRANSACTION == iw) {
                Up up2 = this.f17647G;
                p083k3.l.f25980A.f25990j.getClass();
                up2.e(SystemClock.elapsedRealtime());
                F5.g gVar = this.f17648H;
                ((Rp) gVar.f24906b).a(new A0(gVar, this.f17647G.d()));
            }
        }
    }
}
