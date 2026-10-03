package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1453iB extends FilterInputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19271G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f19272H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f19273I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1453iB(InputStream inputStream, long j8, int i8) {
        super(inputStream);
        this.f19271G = i8;
        if (i8 == 1) {
            super(inputStream);
            this.f19272H = j8;
            return;
        }
        this.f19273I = -1L;
        inputStream.getClass();
        AbstractC2987b.B0("limit must be non-negative", j8 >= 0);
        this.f19272H = j8;
    }

    private final synchronized void E() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f19273I == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f19272H = this.f19273I;
    }

    private final synchronized void k(int i8) {
        ((FilterInputStream) this).in.mark(i8);
        this.f19273I = this.f19272H;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        switch (this.f19271G) {
            case 0:
                return (int) Math.min(((FilterInputStream) this).in.available(), this.f19272H);
            default:
                return super.available();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i8) {
        switch (this.f19271G) {
            case 0:
                k(i8);
                return;
            default:
                super.mark(i8);
                return;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        switch (this.f19271G) {
            case 0:
                if (this.f19272H == 0) {
                    return -1;
                }
                int i8 = ((FilterInputStream) this).in.read();
                if (i8 != -1) {
                    this.f19272H--;
                }
                return i8;
            default:
                int i9 = super.read();
                if (i9 != -1) {
                    this.f19273I++;
                }
                return i9;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        switch (this.f19271G) {
            case 0:
                E();
                return;
            default:
                super.reset();
                return;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j8) throws IOException {
        switch (this.f19271G) {
            case 0:
                long jSkip = ((FilterInputStream) this).in.skip(Math.min(j8, this.f19272H));
                this.f19272H -= jSkip;
                return jSkip;
            default:
                return super.skip(j8);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) throws IOException {
        switch (this.f19271G) {
            case 0:
                long j8 = this.f19272H;
                if (j8 == 0) {
                    return -1;
                }
                int i10 = ((FilterInputStream) this).in.read(bArr, i8, (int) Math.min(i9, j8));
                if (i10 != -1) {
                    this.f19272H -= (long) i10;
                }
                return i10;
            default:
                int i11 = super.read(bArr, i8, i9);
                if (i11 != -1) {
                    this.f19273I += (long) i11;
                }
                return i11;
        }
    }
}
