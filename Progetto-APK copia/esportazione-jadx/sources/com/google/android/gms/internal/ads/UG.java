package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class UG extends VG {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f16820J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f16821K;

    public UG(byte[] bArr, int i8, int i9) {
        super(bArr);
        XG.v(i8, i8 + i9, bArr.length);
        this.f16820J = i8;
        this.f16821K = i9;
    }

    @Override // com.google.android.gms.internal.ads.VG
    public final int A() {
        return this.f16820J;
    }

    @Override // com.google.android.gms.internal.ads.VG, com.google.android.gms.internal.ads.XG
    public final byte c(int i8) {
        XG.z(i8, this.f16821K);
        return this.f16987I[this.f16820J + i8];
    }

    @Override // com.google.android.gms.internal.ads.VG, com.google.android.gms.internal.ads.XG
    public final byte i(int i8) {
        return this.f16987I[this.f16820J + i8];
    }

    @Override // com.google.android.gms.internal.ads.VG, com.google.android.gms.internal.ads.XG
    public final int n() {
        return this.f16821K;
    }

    @Override // com.google.android.gms.internal.ads.VG, com.google.android.gms.internal.ads.XG
    public final void o(byte[] bArr, int i8, int i9, int i10) {
        System.arraycopy(this.f16987I, this.f16820J + i8, bArr, i9, i10);
    }
}
