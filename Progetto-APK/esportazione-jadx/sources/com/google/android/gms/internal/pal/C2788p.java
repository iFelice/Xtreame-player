package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2788p extends C2796q {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f23979J;

    public C2788p(byte[] bArr, int i8) {
        super(bArr);
        r.n(0, i8, bArr.length);
        this.f23979J = i8;
    }

    @Override // com.google.android.gms.internal.pal.C2796q, com.google.android.gms.internal.pal.r
    public final byte b(int i8) {
        int i9 = this.f23979J;
        if (((i9 - (i8 + 1)) | i8) >= 0) {
            return this.f23982I[i8];
        }
        if (i8 < 0) {
            throw new ArrayIndexOutOfBoundsException(p000a.r.f("Index < 0: ", i8));
        }
        throw new ArrayIndexOutOfBoundsException(com.google.protobuf.U2.j("Index > length: ", i8, ", ", i9));
    }

    @Override // com.google.android.gms.internal.pal.C2796q, com.google.android.gms.internal.pal.r
    public final byte c(int i8) {
        return this.f23982I[i8];
    }

    @Override // com.google.android.gms.internal.pal.C2796q, com.google.android.gms.internal.pal.r
    public final int i() {
        return this.f23979J;
    }

    @Override // com.google.android.gms.internal.pal.C2796q, com.google.android.gms.internal.pal.r
    public final void l(byte[] bArr, int i8) {
        System.arraycopy(this.f23982I, 0, bArr, 0, i8);
    }
}
