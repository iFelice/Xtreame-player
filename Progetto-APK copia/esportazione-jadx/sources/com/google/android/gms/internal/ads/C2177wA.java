package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2177wA extends Nz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Uri f21645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f21646f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f21647g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f21648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f21649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1296fA f21650j;

    public C2177wA(byte[] bArr) {
        C1296fA c1296fA = new C1296fA(bArr);
        super(false);
        this.f21650j = c1296fA;
        p113o3.r.J(bArr.length > 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws C2231xC {
        j(cd);
        this.f21645e = cd.f12592a;
        byte[] bArr = this.f21650j.f18729a;
        this.f21646f = bArr;
        int length = bArr.length;
        long j8 = length;
        long j9 = cd.f12594c;
        if (j9 > j8) {
            throw new C2231xC(2008);
        }
        int i8 = (int) j9;
        this.f21647g = i8;
        int i9 = length - i8;
        this.f21648h = i9;
        long j10 = cd.f12595d;
        if (j10 != -1) {
            this.f21648h = (int) Math.min(i9, j10);
        }
        this.f21649i = true;
        k(cd);
        return j10 != -1 ? j10 : this.f21648h;
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) {
        if (i9 == 0) {
            return 0;
        }
        int i10 = this.f21648h;
        if (i10 == 0) {
            return -1;
        }
        int iMin = Math.min(i9, i10);
        byte[] bArr2 = this.f21646f;
        p113o3.r.x(bArr2);
        System.arraycopy(bArr2, this.f21647g, bArr, i8, iMin);
        this.f21647g += iMin;
        this.f21648h -= iMin;
        zzg(iMin);
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f21645e;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        if (this.f21649i) {
            this.f21649i = false;
            i();
        }
        this.f21645e = null;
        this.f21646f = null;
    }
}
