package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2564g2 extends C2582j2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f23135J;

    public C2564g2(byte[] bArr, int i8) {
        super(bArr);
        AbstractC2576i2.o(0, i8, bArr.length);
        this.f23135J = i8;
    }

    @Override // com.google.android.gms.internal.measurement.C2582j2, com.google.android.gms.internal.measurement.AbstractC2576i2
    public final byte i(int i8) {
        int i9 = this.f23135J;
        if (((i9 - (i8 + 1)) | i8) >= 0) {
            return this.f23170I[i8];
        }
        if (i8 < 0) {
            throw new ArrayIndexOutOfBoundsException(p000a.r.f("Index < 0: ", i8));
        }
        throw new ArrayIndexOutOfBoundsException(com.google.protobuf.U2.j("Index > length: ", i8, ", ", i9));
    }

    @Override // com.google.android.gms.internal.measurement.C2582j2, com.google.android.gms.internal.measurement.AbstractC2576i2
    public final byte l(int i8) {
        return this.f23170I[i8];
    }

    @Override // com.google.android.gms.internal.measurement.C2582j2, com.google.android.gms.internal.measurement.AbstractC2576i2
    public final int n() {
        return this.f23135J;
    }
}
