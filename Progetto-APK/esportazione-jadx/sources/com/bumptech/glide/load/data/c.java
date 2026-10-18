package com.bumptech.glide.load.data;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class c extends OutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final OutputStream f11571G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public byte[] f11572H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p196z2.h f11573I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f11574J;

    public c(FileOutputStream fileOutputStream, p196z2.h hVar) {
        this.f11571G = fileOutputStream;
        this.f11573I = hVar;
        this.f11572H = (byte[]) hVar.d(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        OutputStream outputStream = this.f11571G;
        try {
            flush();
            outputStream.close();
            byte[] bArr = this.f11572H;
            if (bArr != null) {
                this.f11573I.h(bArr);
                this.f11572H = null;
            }
        } catch (Throwable th) {
            outputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i8 = this.f11574J;
        OutputStream outputStream = this.f11571G;
        if (i8 > 0) {
            outputStream.write(this.f11572H, 0, i8);
            this.f11574J = 0;
        }
        outputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i8) throws IOException {
        byte[] bArr = this.f11572H;
        int i9 = this.f11574J;
        int i10 = i9 + 1;
        this.f11574J = i10;
        bArr[i9] = (byte) i8;
        if (i10 != bArr.length || i10 <= 0) {
            return;
        }
        this.f11571G.write(bArr, 0, i10);
        this.f11574J = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i8, int i9) throws IOException {
        int i10 = 0;
        do {
            int i11 = i9 - i10;
            int i12 = i8 + i10;
            int i13 = this.f11574J;
            OutputStream outputStream = this.f11571G;
            if (i13 == 0 && i11 >= this.f11572H.length) {
                outputStream.write(bArr, i12, i11);
                return;
            }
            int iMin = Math.min(i11, this.f11572H.length - i13);
            System.arraycopy(bArr, i12, this.f11572H, this.f11574J, iMin);
            int i14 = this.f11574J + iMin;
            this.f11574J = i14;
            i10 += iMin;
            byte[] bArr2 = this.f11572H;
            if (i14 == bArr2.length && i14 > 0) {
                outputStream.write(bArr2, 0, i14);
                this.f11574J = 0;
            }
        } while (i10 < i9);
    }
}
