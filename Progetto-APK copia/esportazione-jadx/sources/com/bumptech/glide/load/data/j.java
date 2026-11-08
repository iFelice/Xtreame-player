package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final byte[] f11578I = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final int f11579J = 31;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final byte f11580G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f11581H;

    public j(int i8, InputStream inputStream) {
        super(inputStream);
        if (i8 < -1 || i8 > 8) {
            throw new IllegalArgumentException(r.f("Cannot add invalid orientation: ", i8));
        }
        this.f11580G = (byte) i8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i8) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i8;
        int i9;
        int i10 = this.f11581H;
        if (i10 < 2 || i10 > (i9 = f11579J)) {
            i8 = super.read();
        } else {
            i8 = i10 == i9 ? this.f11580G : f11578I[i10 - 2] & 255;
        }
        if (i8 != -1) {
            this.f11581H++;
        }
        return i8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j8) throws IOException {
        long jSkip = super.skip(j8);
        if (jSkip > 0) {
            this.f11581H = (int) (((long) this.f11581H) + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) throws IOException {
        int i10;
        int i11 = this.f11581H;
        int i12 = f11579J;
        if (i11 > i12) {
            i10 = super.read(bArr, i8, i9);
        } else if (i11 == i12) {
            bArr[i8] = this.f11580G;
            i10 = 1;
        } else if (i11 < 2) {
            i10 = super.read(bArr, i8, 2 - i11);
        } else {
            int iMin = Math.min(i12 - i11, i9);
            System.arraycopy(f11578I, this.f11581H - 2, bArr, i8, iMin);
            i10 = iMin;
        }
        if (i10 > 0) {
            this.f11581H += i10;
        }
        return i10;
    }
}
