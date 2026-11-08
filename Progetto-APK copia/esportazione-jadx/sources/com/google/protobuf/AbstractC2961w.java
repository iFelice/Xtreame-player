package com.google.protobuf;

import com.google.android.gms.internal.ads.CO;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.protobuf.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2961w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f24526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24527b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24528c = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CO f24529d;

    public static int c(int i8) {
        return (-(i8 & 1)) ^ (i8 >>> 1);
    }

    public static long d(long j8) {
        return (-(j8 & 1)) ^ (j8 >>> 1);
    }

    public static C2950t h(byte[] bArr, int i8, int i9, boolean z7) {
        C2950t c2950t = new C2950t(bArr, i8, i9, z7);
        try {
            c2950t.l(i9);
            return c2950t;
        } catch (C2966x1 e8) {
            throw new IllegalArgumentException(e8);
        }
    }

    public static AbstractC2961w i(InputStream inputStream) {
        if (inputStream != null) {
            return new C2954u(inputStream);
        }
        byte[] bArr = AbstractC2960v1.f24525b;
        return h(bArr, 0, bArr.length, false);
    }

    public static AbstractC2961w j(ByteBuffer byteBuffer, boolean z7) {
        if (byteBuffer.hasArray()) {
            return h(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining(), z7);
        }
        if (byteBuffer.isDirect() && H2.f24256d) {
            return new C2958v(byteBuffer, z7);
        }
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.duplicate().get(bArr);
        return h(bArr, 0, iRemaining, true);
    }

    public static int y(int i8, InputStream inputStream) throws IOException {
        if ((i8 & 128) == 0) {
            return i8;
        }
        int i9 = i8 & 127;
        int i10 = 7;
        while (i10 < 32) {
            int i11 = inputStream.read();
            if (i11 == -1) {
                throw C2966x1.g();
            }
            i9 |= (i11 & 127) << i10;
            if ((i11 & 128) == 0) {
                return i9;
            }
            i10 += 7;
        }
        while (i10 < 64) {
            int i12 = inputStream.read();
            if (i12 == -1) {
                throw C2966x1.g();
            }
            if ((i12 & 128) == 0) {
                return i9;
            }
            i10 += 7;
        }
        throw C2966x1.d();
    }

    public abstract long A();

    public abstract int B();

    public abstract long C();

    public abstract String D();

    public abstract String E();

    public abstract int F();

    public abstract int G();

    public abstract long H();

    public abstract boolean I(int i8);

    public final void J() {
        boolean zI;
        do {
            int iF = F();
            if (iF == 0) {
                return;
            }
            b();
            this.f24526a++;
            zI = I(iF);
            this.f24526a--;
        } while (zI);
    }

    public abstract void a(int i8);

    public final void b() {
        if (this.f24526a >= this.f24527b) {
            throw new C2966x1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }

    public abstract int e();

    public abstract int f();

    public abstract boolean g();

    public abstract void k(int i8);

    public abstract int l(int i8);

    public abstract boolean m();

    public abstract C2939q n();

    public abstract double o();

    public abstract int p();

    public abstract int q();

    public abstract long r();

    public abstract float s();

    public abstract void t(int i8, P1 p7, O0 o4);

    public abstract int u();

    public abstract long v();

    public abstract void w(P1 p7, O0 o4);

    public abstract int x();

    public abstract int z();
}
