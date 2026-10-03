package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1401hB extends OutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19060G;

    public /* synthetic */ C1401hB(int i8) {
        this.f19060G = i8;
    }

    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i8) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        switch (this.f19060G) {
            case 0:
                bArr.getClass();
                break;
            default:
                bArr.getClass();
                break;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i8, int i9) {
        switch (this.f19060G) {
            case 0:
                bArr.getClass();
                AbstractC2987b.D0(i8, i9 + i8, bArr.length);
                break;
            default:
                bArr.getClass();
                p190y4.k.u(i8, i9 + i8, bArr.length);
                break;
        }
    }
}
