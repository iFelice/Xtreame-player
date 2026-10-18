package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class F implements M {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HL f13262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f13263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f13264d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13267g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f13265e = new byte[65536];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13261a = new byte[4096];

    static {
        R7.a("media3.extractor");
    }

    public F(InterfaceC1556kC interfaceC1556kC, long j8, long j9) {
        this.f13262b = interfaceC1556kC;
        this.f13264d = j8;
        this.f13263c = j9;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final boolean b(byte[] bArr, int i8, int i9, boolean z7) throws EOFException, InterruptedIOException {
        int iMin;
        int i10 = this.f13267g;
        if (i10 == 0) {
            iMin = 0;
        } else {
            iMin = Math.min(i10, i9);
            System.arraycopy(this.f13265e, 0, bArr, i8, iMin);
            m(iMin);
        }
        int iK = iMin;
        while (iK < i9 && iK != -1) {
            iK = k(bArr, i8, i9, iK, z7);
        }
        if (iK != -1) {
            this.f13264d += (long) iK;
        }
        return iK != -1;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final int c(int i8, byte[] bArr, int i9) throws EOFException, InterruptedIOException {
        int iMin;
        l(i9);
        int i10 = this.f13267g;
        int i11 = this.f13266f;
        int i12 = i10 - i11;
        if (i12 == 0) {
            iMin = k(this.f13265e, i11, i9, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f13267g += iMin;
        } else {
            iMin = Math.min(i9, i12);
        }
        System.arraycopy(this.f13265e, this.f13266f, bArr, i8, iMin);
        this.f13266f += iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final boolean d(byte[] bArr, int i8, int i9, boolean z7) {
        if (!i(i9, z7)) {
            return false;
        }
        System.arraycopy(this.f13265e, this.f13266f - i9, bArr, i8, i9);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws EOFException, InterruptedIOException {
        int i10 = this.f13267g;
        int iK = 0;
        if (i10 != 0) {
            int iMin = Math.min(i10, i9);
            System.arraycopy(this.f13265e, 0, bArr, i8, iMin);
            m(iMin);
            iK = iMin;
        }
        if (iK == 0) {
            iK = k(bArr, i8, i9, 0, true);
        }
        if (iK != -1) {
            this.f13264d += (long) iK;
        }
        return iK;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void g(int i8, byte[] bArr, int i9) {
        d(bArr, i8, i9, false);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void h(int i8, byte[] bArr, int i9) throws EOFException, InterruptedIOException {
        b(bArr, i8, i9, false);
    }

    public final boolean i(int i8, boolean z7) throws EOFException, InterruptedIOException {
        l(i8);
        int iK = this.f13267g - this.f13266f;
        while (iK < i8) {
            iK = k(this.f13265e, this.f13266f, i8, iK, z7);
            if (iK == -1) {
                return false;
            }
            this.f13267g = this.f13266f + iK;
        }
        this.f13266f += i8;
        return true;
    }

    public final void j(int i8) throws EOFException, InterruptedIOException {
        int iMin = Math.min(this.f13267g, i8);
        m(iMin);
        int iK = iMin;
        while (iK < i8 && iK != -1) {
            iK = k(this.f13261a, -iK, Math.min(i8, iK + 4096), iK, false);
        }
        if (iK != -1) {
            this.f13264d += (long) iK;
        }
    }

    public final int k(byte[] bArr, int i8, int i9, int i10, boolean z7) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int iE = this.f13262b.e(bArr, i8 + i10, i9 - i10);
        if (iE != -1) {
            return i10 + iE;
        }
        if (i10 == 0 && z7) {
            return -1;
        }
        throw new EOFException();
    }

    public final void l(int i8) {
        int i9 = this.f13266f + i8;
        int length = this.f13265e.length;
        if (i9 > length) {
            this.f13265e = Arrays.copyOf(this.f13265e, Math.max(65536 + i9, Math.min(length + length, i9 + 524288)));
        }
    }

    public final void m(int i8) {
        int i9 = this.f13267g - i8;
        this.f13267g = i9;
        this.f13266f = 0;
        byte[] bArr = this.f13265e;
        byte[] bArr2 = i9 < bArr.length + (-524288) ? new byte[65536 + i9] : bArr;
        System.arraycopy(bArr, i8, bArr2, 0, i9);
        this.f13265e = bArr2;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void q(int i8) throws EOFException, InterruptedIOException {
        j(i8);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final int zzc() throws EOFException, InterruptedIOException {
        int iMin = Math.min(this.f13267g, 1);
        m(iMin);
        if (iMin == 0) {
            iMin = k(this.f13261a, 0, Math.min(1, 4096), 0, true);
        }
        if (iMin != -1) {
            this.f13264d += (long) iMin;
        }
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final long zzd() {
        return this.f13263c;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final long zze() {
        return this.f13264d + ((long) this.f13266f);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final long zzf() {
        return this.f13264d;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void zzg(int i8) throws EOFException, InterruptedIOException {
        i(i8, false);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void zzj() {
        this.f13266f = 0;
    }
}
