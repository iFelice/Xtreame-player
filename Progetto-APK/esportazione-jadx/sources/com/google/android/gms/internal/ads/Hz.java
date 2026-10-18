package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class Hz implements Serializable, Gz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Jz f13823G = new Jz();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Gz f13824H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile transient boolean f13825I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public transient Object f13826J;

    public Hz(Gz gz) {
        this.f13824H = gz;
    }

    public final String toString() {
        return p000a.r.g("Suppliers.memoize(", (this.f13825I ? p000a.r.g("<supplier that returned ", String.valueOf(this.f13826J), ">") : this.f13824H).toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.Gz
    public final Object zza() {
        if (!this.f13825I) {
            synchronized (this.f13823G) {
                try {
                    if (!this.f13825I) {
                        Object objZza = this.f13824H.zza();
                        this.f13826J = objZza;
                        this.f13825I = true;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f13826J;
    }
}
