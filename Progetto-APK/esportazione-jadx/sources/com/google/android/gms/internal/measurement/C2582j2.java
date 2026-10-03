package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.j2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2582j2 extends AbstractC2576i2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f23170I;

    public C2582j2(byte[] bArr) {
        this.f23166G = 0;
        bArr.getClass();
        this.f23170I = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2576i2) || n() != ((AbstractC2576i2) obj).n()) {
            return false;
        }
        if (n() == 0) {
            return true;
        }
        if (!(obj instanceof C2582j2)) {
            return obj.equals(this);
        }
        C2582j2 c2582j2 = (C2582j2) obj;
        int i8 = this.f23166G;
        int i9 = c2582j2.f23166G;
        if (i8 != 0 && i9 != 0 && i8 != i9) {
            return false;
        }
        int iN = n();
        if (iN > c2582j2.n()) {
            throw new IllegalArgumentException("Length too large: " + iN + n());
        }
        if (iN > c2582j2.n()) {
            throw new IllegalArgumentException(com.google.protobuf.U2.j("Ran off end of other: 0, ", iN, ", ", c2582j2.n()));
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < iN) {
            if (this.f23170I[i10] != c2582j2.f23170I[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2576i2
    public byte i(int i8) {
        return this.f23170I[i8];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2576i2
    public byte l(int i8) {
        return this.f23170I[i8];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2576i2
    public int n() {
        return this.f23170I.length;
    }
}
