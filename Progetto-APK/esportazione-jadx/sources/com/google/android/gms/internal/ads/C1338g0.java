package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1338g0 implements L {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f18870k = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f18871l = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final byte[] f18872m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final byte[] f18873n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f18875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f18876c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18877d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18878e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18879f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public N f18881h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public InterfaceC1234e0 f18882i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18883j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18874a = new byte[1];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f18880g = -1;

    static {
        int i8 = Et.f13234a;
        Charset charset = StandardCharsets.UTF_8;
        f18872m = "#!AMR\n".getBytes(charset);
        f18873n = "#!AMR-WB\n".getBytes(charset);
    }

    public final boolean a(M m7) {
        m7.zzj();
        byte[] bArr = f18872m;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        m7.g(0, bArr2, length);
        if (Arrays.equals(bArr2, bArr)) {
            this.f18875b = false;
            m7.q(bArr.length);
            return true;
        }
        m7.zzj();
        byte[] bArr3 = f18873n;
        int length2 = bArr3.length;
        byte[] bArr4 = new byte[length2];
        m7.g(0, bArr4, length2);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f18875b = true;
        m7.q(bArr3.length);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ef  */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        int iE;
        int i8;
        p113o3.r.x(this.f18882i);
        int i9 = Et.f13234a;
        if (m7.zzf() == 0 && !a(m7)) {
            throw C0800Ka.a("Could not find AMR header.", null);
        }
        boolean z7 = this.f18883j;
        int[] iArr = f18870k;
        int[] iArr2 = f18871l;
        if (!z7) {
            this.f18883j = true;
            boolean z8 = this.f18875b;
            String str = true != z8 ? "audio/3gpp" : "audio/amr-wb";
            int i10 = true != z8 ? 8000 : 16000;
            int i11 = z8 ? iArr2[8] : iArr[7];
            InterfaceC1234e0 interfaceC1234e0 = this.f18882i;
            K k8 = new K();
            k8.f(str);
            k8.f14272m = i11;
            k8.f14285z = 1;
            k8.f14253A = i10;
            interfaceC1234e0.d(new C1804p0(k8));
        }
        byte[] bArr = this.f18874a;
        int i12 = this.f18878e;
        int i13 = -1;
        if (i12 == 0) {
            try {
                m7.zzj();
                m7.g(0, bArr, 1);
                byte b8 = bArr[0];
                if ((b8 & 131) > 0) {
                    throw C0800Ka.a("Invalid padding bits for frame header " + ((int) b8), null);
                }
                boolean z9 = this.f18875b;
                int i14 = (b8 >> 3) & 15;
                if (!z9) {
                    if (!z9) {
                        if (i14 >= 12 && i14 <= 14) {
                        }
                    }
                    throw C0800Ka.a("Illegal AMR " + (true != z9 ? "NB" : "WB") + " frame type " + i14, null);
                }
                if (i14 >= 10 && i14 <= 13) {
                    if (!z9) {
                        if (i14 >= 12) {
                        }
                    }
                    if (true != z9) {
                    }
                    throw C0800Ka.a("Illegal AMR " + (true != z9 ? "NB" : "WB") + " frame type " + i14, null);
                }
                i12 = z9 ? iArr2[i14] : iArr[i14];
                this.f18877d = i12;
                this.f18878e = i12;
                if (this.f18880g == -1) {
                    this.f18880g = i12;
                }
                iE = this.f18882i.e(m7, i12, true);
                if (iE != -1) {
                    i8 = this.f18878e - iE;
                    this.f18878e = i8;
                    if (i8 <= 0) {
                        this.f18882i.b(this.f18876c, 1, this.f18877d, 0, null);
                        this.f18876c += 20000;
                    }
                    i13 = 0;
                }
            } catch (EOFException unused) {
            }
        } else {
            iE = this.f18882i.e(m7, i12, true);
            if (iE != -1) {
                i8 = this.f18878e - iE;
                this.f18878e = i8;
                if (i8 <= 0) {
                    this.f18882i.b(this.f18876c, 1, this.f18877d, 0, null);
                    this.f18876c += 20000;
                }
                i13 = 0;
            }
        }
        if (this.f18879f) {
            return i13;
        }
        this.f18881h.g(new P(-9223372036854775807L, 0L));
        this.f18879f = true;
        return i13;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        return a(m7);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        this.f18876c = 0L;
        this.f18877d = 0;
        this.f18878e = 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f18881h = n7;
        this.f18882i = n7.h(0, 1);
        n7.f();
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
