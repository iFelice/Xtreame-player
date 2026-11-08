package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class WG extends OutputStream {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final byte[] f17189L = new byte[0];

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f17192I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f17194K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f17190G = 128;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f17191H = new ArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public byte[] f17193J = new byte[128];

    public final void E(int i8) {
        this.f17191H.add(new VG(this.f17193J));
        int length = this.f17192I + this.f17193J.length;
        this.f17192I = length;
        this.f17193J = new byte[Math.max(this.f17190G, Math.max(i8, length >>> 1))];
        this.f17194K = 0;
    }

    public final synchronized XG k() {
        try {
            int i8 = this.f17194K;
            byte[] bArr = this.f17193J;
            if (i8 >= bArr.length) {
                this.f17191H.add(new VG(this.f17193J));
                this.f17193J = f17189L;
            } else if (i8 > 0) {
                this.f17191H.add(new VG(Arrays.copyOf(bArr, i8)));
            }
            this.f17192I += this.f17194K;
            this.f17194K = 0;
        } catch (Throwable th) {
            throw th;
        }
        return XG.x(this.f17191H);
    }

    public final String toString() {
        int i8;
        Object[] objArr = new Object[2];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        synchronized (this) {
            i8 = this.f17192I + this.f17194K;
        }
        objArr[1] = Integer.valueOf(i8);
        return String.format("<ByteString.Output@%s size=%d>", objArr);
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i8) {
        try {
            if (this.f17194K == this.f17193J.length) {
                E(1);
            }
            byte[] bArr = this.f17193J;
            int i9 = this.f17194K;
            this.f17194K = i9 + 1;
            bArr[i9] = (byte) i8;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i8, int i9) {
        byte[] bArr2 = this.f17193J;
        int length = bArr2.length;
        int i10 = this.f17194K;
        int i11 = length - i10;
        if (i9 <= i11) {
            System.arraycopy(bArr, i8, bArr2, i10, i9);
            this.f17194K += i9;
            return;
        }
        System.arraycopy(bArr, i8, bArr2, i10, i11);
        int i12 = i9 - i11;
        E(i12);
        System.arraycopy(bArr, i8 + i11, this.f17193J, 0, i12);
        this.f17194K = i12;
    }
}
