package com.google.android.gms.internal.pal;

import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes.dex */
public final class N6 implements InterfaceC2871z3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final O4 f23612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f23613b;

    public N6(O4 o4, int i8) throws InvalidAlgorithmParameterException {
        this.f23612a = o4;
        this.f23613b = i8;
        if (i8 < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        o4.a(i8, new byte[0]);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2871z3
    public final byte[] a(byte[] bArr) {
        return this.f23612a.a(this.f23613b, bArr);
    }
}
