package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class Y1 extends C2425a2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f22563J;

    public Y1(byte[] bArr) {
        super(bArr);
        Z1.o(bArr.length);
        this.f22563J = 47;
    }

    @Override // com.google.android.gms.internal.cast.C2425a2, com.google.android.gms.internal.cast.Z1
    public final byte i(int i8) {
        int i9 = this.f22563J;
        if (((i9 - (i8 + 1)) | i8) >= 0) {
            return this.f22626I[i8];
        }
        if (i8 < 0) {
            throw new ArrayIndexOutOfBoundsException(p000a.r.f("Index < 0: ", i8));
        }
        throw new ArrayIndexOutOfBoundsException(com.google.protobuf.U2.j("Index > length: ", i8, ", ", i9));
    }

    @Override // com.google.android.gms.internal.cast.C2425a2, com.google.android.gms.internal.cast.Z1
    public final byte l(int i8) {
        return this.f22626I[i8];
    }

    @Override // com.google.android.gms.internal.cast.C2425a2, com.google.android.gms.internal.cast.Z1
    public final int n() {
        return this.f22563J;
    }
}
