package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Iz implements Gz {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C1079b f14094J = new C1079b(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Jz f14095G = new Jz();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile Gz f14096H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f14097I;

    public Iz(Gz gz) {
        this.f14096H = gz;
    }

    public final String toString() {
        Object objG = this.f14096H;
        if (objG == f14094J) {
            objG = p000a.r.g("<supplier that returned ", String.valueOf(this.f14097I), ">");
        }
        return p000a.r.g("Suppliers.memoize(", String.valueOf(objG), ")");
    }

    @Override // com.google.android.gms.internal.ads.Gz
    public final Object zza() {
        Gz gz = this.f14096H;
        C1079b c1079b = f14094J;
        if (gz != c1079b) {
            synchronized (this.f14095G) {
                try {
                    if (this.f14096H != c1079b) {
                        Object objZza = this.f14096H.zza();
                        this.f14097I = objZza;
                        this.f14096H = c1079b;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f14097I;
    }
}
