package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class VG extends XG {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f16987I;

    public VG(byte[] bArr) {
        bArr.getClass();
        this.f16987I = bArr;
    }

    public int A() {
        return 0;
    }

    public final boolean B(XG xg, int i8, int i9) {
        if (i9 > xg.n()) {
            throw new IllegalArgumentException("Length too large: " + i9 + n());
        }
        int i10 = i8 + i9;
        if (i10 > xg.n()) {
            int iN = xg.n();
            StringBuilder sbD = A0.O.D("Ran off end of other: ", i8, ", ", i9, ", ");
            sbD.append(iN);
            throw new IllegalArgumentException(sbD.toString());
        }
        if (!(xg instanceof VG)) {
            return xg.s(i8, i10).equals(s(0, i9));
        }
        VG vg = (VG) xg;
        int iA = A() + i9;
        int iA2 = A();
        int iA3 = vg.A() + i8;
        while (iA2 < iA) {
            if (this.f16987I[iA2] != vg.f16987I[iA3]) {
                return false;
            }
            iA2++;
            iA3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public byte c(int i8) {
        return this.f16987I[i8];
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XG) || n() != ((XG) obj).n()) {
            return false;
        }
        if (n() == 0) {
            return true;
        }
        if (!(obj instanceof VG)) {
            return obj.equals(this);
        }
        VG vg = (VG) obj;
        int i8 = this.f17402G;
        int i9 = vg.f17402G;
        if (i8 == 0 || i9 == 0 || i8 == i9) {
            return B(vg, 0, n());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public byte i(int i8) {
        return this.f16987I[i8];
    }

    @Override // com.google.android.gms.internal.ads.XG
    public int n() {
        return this.f16987I.length;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public void o(byte[] bArr, int i8, int i9, int i10) {
        System.arraycopy(this.f16987I, i8, bArr, i9, i10);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final /* bridge */ /* synthetic */ int p() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final /* bridge */ /* synthetic */ boolean q() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final int r(int i8, int i9, int i10) {
        int iA = A() + i9;
        Charset charset = AbstractC2288yH.f22010a;
        for (int i11 = iA; i11 < iA + i10; i11++) {
            i8 = (i8 * 31) + this.f16987I[i11];
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final XG s(int i8, int i9) {
        int iV = XG.v(i8, i9, n());
        if (iV == 0) {
            return XG.f17401H;
        }
        return new UG(this.f16987I, A() + i8, iV);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final AbstractC1200dH t() {
        return AbstractC1200dH.e(this.f16987I, A(), n(), true);
    }

    @Override // com.google.android.gms.internal.ads.XG
    public final void u(S3.e eVar) {
        eVar.u(A(), this.f16987I, n());
    }
}
