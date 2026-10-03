package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2931o extends C2939q {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f24479K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f24480L;

    public C2931o(byte[] bArr, int i8, int i9) {
        super(bArr);
        r.c(i8, i8 + i9, bArr.length);
        this.f24479K = i8;
        this.f24480L = i9;
    }

    @Override // com.google.protobuf.C2939q, com.google.protobuf.r
    public final byte b(int i8) {
        int i9 = this.f24480L;
        if (((i9 - (i8 + 1)) | i8) >= 0) {
            return this.f24490J[this.f24479K + i8];
        }
        if (i8 < 0) {
            throw new ArrayIndexOutOfBoundsException(p000a.r.f("Index < 0: ", i8));
        }
        throw new ArrayIndexOutOfBoundsException(U2.j("Index > length: ", i8, ", ", i9));
    }

    @Override // com.google.protobuf.C2939q, com.google.protobuf.r
    public final byte n(int i8) {
        return this.f24490J[this.f24479K + i8];
    }

    @Override // com.google.protobuf.C2939q, com.google.protobuf.r
    public final int size() {
        return this.f24480L;
    }

    @Override // com.google.protobuf.C2939q
    public final int v() {
        return this.f24479K;
    }
}
