package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ja, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0785Ja {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f14157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f14158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p120p3.a f14159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uw f14160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C0770Ia f14161f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f14156a = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14162g = 1;

    public C0785Ja(Context context, p120p3.a aVar, String str, Uw uw) {
        this.f14158c = str;
        this.f14157b = context.getApplicationContext();
        this.f14159d = aVar;
        this.f14160e = uw;
    }

    public final C0725Fa a() {
        p113o3.I.k("getEngine: Trying to acquire lock");
        synchronized (this.f14156a) {
            try {
                p113o3.I.k("getEngine: Lock acquired");
                p113o3.I.k("refreshIfDestroyed: Trying to acquire lock");
                synchronized (this.f14156a) {
                    try {
                        p113o3.I.k("refreshIfDestroyed: Lock acquired");
                        C0770Ia c0770Ia = this.f14161f;
                        if (c0770Ia != null && this.f14162g == 0) {
                            c0770Ia.r(new K4(this, 18), new C0650Aa(0));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                p113o3.I.k("refreshIfDestroyed: Lock released");
                C0770Ia c0770Ia2 = this.f14161f;
                if (c0770Ia2 != null && c0770Ia2.o() != -1) {
                    int i8 = this.f14162g;
                    if (i8 == 0) {
                        p113o3.I.k("getEngine (NO_UPDATE): Lock released");
                        return this.f14161f.s();
                    }
                    if (i8 != 1) {
                        p113o3.I.k("getEngine (UPDATING): Lock released");
                        return this.f14161f.s();
                    }
                    this.f14162g = 2;
                    b();
                    p113o3.I.k("getEngine (PENDING_UPDATE): Lock released");
                    return this.f14161f.s();
                }
                this.f14162g = 2;
                this.f14161f = b();
                p113o3.I.k("getEngine (NULL or REJECTED): Lock released");
                return this.f14161f.s();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final C0770Ia b() {
        Ow owH = U4.a.h(this.f14157b, 6);
        owH.zzi();
        C0770Ia c0770Ia = new C0770Ia();
        p113o3.I.k("loadJavascriptEngine > Before UI_THREAD_EXECUTOR");
        AbstractC1988se.f20910e.execute(new RunnableC0755Ha(this, c0770Ia));
        p113o3.I.k("loadNewJavascriptEngine: Promise created");
        c0770Ia.r(new C0710Ea(this, c0770Ia, owH), new C0710Ea(this, c0770Ia, owH));
        return c0770Ia;
    }
}
