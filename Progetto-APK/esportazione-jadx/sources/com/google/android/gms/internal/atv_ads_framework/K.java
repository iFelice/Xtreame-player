package com.google.android.gms.internal.atv_ads_framework;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public class K extends J {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f22272I;

    public K(byte[] bArr) {
        this.f22271G = 0;
        bArr.getClass();
        this.f22272I = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof J) || n() != ((J) obj).n()) {
            return false;
        }
        if (n() == 0) {
            return true;
        }
        if (!(obj instanceof K)) {
            return obj.equals(this);
        }
        K k8 = (K) obj;
        int i8 = this.f22271G;
        int i9 = k8.f22271G;
        if (i8 != 0 && i9 != 0 && i8 != i9) {
            return false;
        }
        int iN = n();
        if (iN > k8.n()) {
            throw new IllegalArgumentException("Length too large: " + iN + n());
        }
        if (iN > k8.n()) {
            throw new IllegalArgumentException(U2.j("Ran off end of other: 0, ", iN, ", ", k8.n()));
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < iN) {
            if (this.f22272I[i10] != k8.f22272I[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.J
    public byte i(int i8) {
        return this.f22272I[i8];
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.J
    public byte l(int i8) {
        return this.f22272I[i8];
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.J
    public int n() {
        return this.f22272I.length;
    }
}
