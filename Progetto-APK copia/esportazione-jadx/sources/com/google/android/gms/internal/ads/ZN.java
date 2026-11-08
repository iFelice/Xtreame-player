package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class ZN implements UN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UN f17763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17764b;

    public ZN(UN un, long j8) {
        this.f17763a = un;
        this.f17764b = j8;
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final int a(long j8) {
        return this.f17763a.a(j8 - this.f17764b);
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final int b(C0871Om c0871Om, VJ vj, int i8) {
        int iB = this.f17763a.b(c0871Om, vj, i8);
        if (iB != -4) {
            return iB;
        }
        vj.f16995g += this.f17764b;
        return -4;
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final void zzd() {
        this.f17763a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final boolean zze() {
        return this.f17763a.zze();
    }
}
