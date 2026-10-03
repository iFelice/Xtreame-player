package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class BN implements InterfaceC2087uO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC2087uO f12363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0961Ve f12364b;

    public BN(InterfaceC2087uO interfaceC2087uO, C0961Ve c0961Ve) {
        this.f12363a = interfaceC2087uO;
        this.f12364b = c0961Ve;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BN)) {
            return false;
        }
        BN bn = (BN) obj;
        return this.f12363a.equals(bn.f12363a) && this.f12364b.equals(bn.f12364b);
    }

    public final int hashCode() {
        return this.f12363a.hashCode() + ((this.f12364b.hashCode() + 527) * 31);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final int zza(int i8) {
        return this.f12363a.zza(i8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final int zzb(int i8) {
        return this.f12363a.zzb(i8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final int zzc() {
        return this.f12363a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final C1804p0 zzd(int i8) {
        return this.f12364b.f17072d[this.f12363a.zza(i8)];
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final C0961Ve zze() {
        return this.f12364b;
    }
}
