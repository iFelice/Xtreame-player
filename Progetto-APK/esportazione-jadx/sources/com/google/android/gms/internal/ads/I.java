package com.google.android.gms.internal.ads;

import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
public final class I implements InterfaceC1234e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13827a = new byte[4096];

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void a(C1534jr c1534jr, int i8, int i9) {
        c1534jr.k(i8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void b(long j8, int i8, int i9, int i10, C1183d0 c1183d0) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final int c(HL hl, int i8, boolean z7) throws EOFException {
        int iE = hl.e(this.f13827a, 0, Math.min(4096, i8));
        if (iE != -1) {
            return iE;
        }
        if (z7) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void d(C1804p0 c1804p0) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final int e(HL hl, int i8, boolean z7) {
        return c(hl, i8, z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void f(int i8, C1534jr c1534jr) {
        a(c1534jr, i8, 0);
    }
}
