package W0;

import com.google.android.gms.internal.ads.C1183d0;
import com.google.android.gms.internal.ads.InterfaceC1234e0;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f7340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f7341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f7343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7346g;

    public M(int i8) {
        if (i8 != 1) {
            this.f7340a = new byte[10];
        } else {
            this.f7340a = new byte[10];
        }
    }

    public final void a(L l4, K k8) {
        if (this.f7342c > 0) {
            l4.d(this.f7343d, this.f7344e, this.f7345f, this.f7346g, k8);
            this.f7342c = 0;
        }
    }

    public final void b(L l4, long j8, int i8, int i9, int i10, K k8) {
        H1.h("TrueHD chunk samples must be contiguous in the sample queue.", this.f7346g <= i9 + i10);
        if (this.f7341b) {
            int i11 = this.f7342c;
            int i12 = i11 + 1;
            this.f7342c = i12;
            if (i11 == 0) {
                this.f7343d = j8;
                this.f7344e = i8;
                this.f7345f = 0;
            }
            this.f7345f += i9;
            this.f7346g = i10;
            if (i12 >= 16) {
                a(l4, k8);
            }
        }
    }

    public final void c(t tVar) {
        if (this.f7341b) {
            return;
        }
        byte[] bArr = this.f7340a;
        tVar.c(0, bArr, 10);
        tVar.m();
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b8 = bArr[7];
            if ((b8 & 254) != 186) {
                return;
            }
            if ((40 << ((bArr[(b8 & 255) == 187 ? '\t' : '\b'] >> 4) & 7)) == 0) {
                return;
            }
            this.f7341b = true;
        }
    }

    public final void d(InterfaceC1234e0 interfaceC1234e0, C1183d0 c1183d0) {
        if (this.f7342c > 0) {
            interfaceC1234e0.b(this.f7343d, this.f7344e, this.f7345f, this.f7346g, c1183d0);
            this.f7342c = 0;
        }
    }

    public final void e(InterfaceC1234e0 interfaceC1234e0, long j8, int i8, int i9, int i10, C1183d0 c1183d0) {
        if (!(this.f7346g <= i9 + i10)) {
            throw new IllegalStateException("TrueHD chunk samples must be contiguous in the sample queue.");
        }
        if (this.f7341b) {
            int i11 = this.f7342c;
            int i12 = i11 + 1;
            this.f7342c = i12;
            if (i11 == 0) {
                this.f7343d = j8;
                this.f7344e = i8;
                this.f7345f = 0;
            }
            this.f7345f += i9;
            this.f7346g = i10;
            if (i12 >= 16) {
                d(interfaceC1234e0, c1183d0);
            }
        }
    }

    public final void f(com.google.android.gms.internal.ads.M m7) {
        if (this.f7341b) {
            return;
        }
        byte[] bArr = this.f7340a;
        m7.g(0, bArr, 10);
        m7.zzj();
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            this.f7341b = true;
        }
    }
}
