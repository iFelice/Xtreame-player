package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.util.AbstractCollection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Uw implements Runnable {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Object f16906O = new Object();

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final Object f16907P = new Object();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final Object f16908Q = new Object();

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static Boolean f16909R;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f16910G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p120p3.a f16911H;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f16914K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1842pn f16915L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AbstractCollection f16916M;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Xw f16912I = C1076ax.B();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f16913J = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f16917N = false;

    public Uw(Context context, p120p3.a aVar, C1842pn c1842pn, C2272y1 c2272y1) {
        this.f16910G = context;
        this.f16911H = aVar;
        this.f16915L = c1842pn;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.d8)).booleanValue()) {
            this.f16916M = p113o3.O.x();
        } else {
            C1969sA c1969sA = AbstractC2073uA.f21207H;
            this.f16916M = PA.f15340K;
        }
    }

    public static boolean a() {
        boolean zBooleanValue;
        synchronized (f16906O) {
            try {
                if (f16909R == null) {
                    if (((Boolean) AbstractC1656m8.f19912b.l()).booleanValue()) {
                        f16909R = Boolean.valueOf(Math.random() < ((Double) AbstractC1656m8.f19911a.l()).doubleValue());
                    } else {
                        f16909R = Boolean.FALSE;
                    }
                }
                zBooleanValue = f16909R.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }

    public final void b(Qw qw) {
        AbstractC1988se.f20906a.a(new RunnableC1170co(11, this, qw));
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] bArrD;
        if (a()) {
            Object obj = f16907P;
            synchronized (obj) {
                try {
                    if (((C1076ax) this.f16912I.f20255H).A() == 0) {
                        return;
                    }
                    try {
                        synchronized (obj) {
                            bArrD = ((C1076ax) this.f16912I.b()).d();
                            Xw xw = this.f16912I;
                            xw.d();
                            C1076ax.C((C1076ax) xw.f20255H);
                        }
                        Ip ip = new Ip((String) C3099q.f26624d.f26627c.a(Q7.X7), 60000, new HashMap(), bArrD, "application/x-protobuf", false);
                        Context context = this.f16910G;
                        String str = this.f16911H.f28196G;
                        Binder.getCallingUid();
                        new C0871Om(context, str).k(ip);
                    } catch (Exception e8) {
                        if ((e8 instanceof C0679Bo) && ((C0679Bo) e8).f12497G == 3) {
                            return;
                        }
                        p083k3.l.f25980A.f25987g.h("CuiMonitor.sendCuiPing", e8);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
