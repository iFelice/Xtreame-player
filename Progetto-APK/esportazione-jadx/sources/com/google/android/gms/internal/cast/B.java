package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class B implements A {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile A f22417G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f22418H;

    public final String toString() {
        Object objG = this.f22417G;
        if (objG == C2517y.f22823H) {
            objG = p000a.r.g("<supplier that returned ", String.valueOf(this.f22418H), ">");
        }
        return p000a.r.g("Suppliers.memoize(", String.valueOf(objG), ")");
    }

    @Override // com.google.android.gms.internal.cast.A
    public final Object zza() {
        A a8 = this.f22417G;
        C2517y c2517y = C2517y.f22823H;
        if (a8 != c2517y) {
            synchronized (this) {
                try {
                    if (this.f22417G != c2517y) {
                        Object objZza = this.f22417G.zza();
                        this.f22418H = objZza;
                        this.f22417G = c2517y;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f22418H;
    }
}
