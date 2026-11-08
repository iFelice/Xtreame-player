package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class G3 extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3 f13475G;

    public G3(C3 c8, int i8) {
        this.f13475G = c8;
        ((ByteArrayOutputStream) this).buf = c8.b(Math.max(i8, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f13475G.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.f13475G.a(((ByteArrayOutputStream) this).buf);
    }

    public final void k(int i8) {
        int i9 = ((ByteArrayOutputStream) this).count;
        if (i9 + i8 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        int i10 = i9 + i8;
        C3 c8 = this.f13475G;
        byte[] bArrB = c8.b(i10 + i10);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrB, 0, ((ByteArrayOutputStream) this).count);
        c8.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrB;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i8) {
        k(1);
        super.write(i8);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i8, int i9) {
        k(i9);
        super.write(bArr, i8, i9);
    }
}
