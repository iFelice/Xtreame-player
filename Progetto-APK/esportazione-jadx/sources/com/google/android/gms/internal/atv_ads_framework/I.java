package com.google.android.gms.internal.atv_ads_framework;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class I extends K {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f22262J;

    public I(byte[] bArr) {
        super(bArr);
        J.o(bArr.length);
        this.f22262J = 47;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.K, com.google.android.gms.internal.atv_ads_framework.J
    public final byte i(int i8) {
        int i9 = this.f22262J;
        if (((i9 - (i8 + 1)) | i8) >= 0) {
            return this.f22272I[i8];
        }
        if (i8 < 0) {
            throw new ArrayIndexOutOfBoundsException(p000a.r.f("Index < 0: ", i8));
        }
        throw new ArrayIndexOutOfBoundsException(U2.j("Index > length: ", i8, ", ", i9));
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.K, com.google.android.gms.internal.atv_ads_framework.J
    public final byte l(int i8) {
        return this.f22272I[i8];
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.K, com.google.android.gms.internal.atv_ads_framework.J
    public final int n() {
        return this.f22262J;
    }
}
