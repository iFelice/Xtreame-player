package p118p1;

import W0.t;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import p094m0.P;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f28161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f28162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f28163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f28164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f28165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f28166f = new int[255];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final E f28167g = new E(255);

    public final boolean a(t tVar, boolean z7) throws P, EOFException {
        this.f28161a = 0;
        this.f28162b = 0L;
        this.f28163c = 0;
        this.f28164d = 0;
        this.f28165e = 0;
        E e8 = this.f28167g;
        e8.I(27);
        try {
            if (tVar.e(e8.f28035a, 0, 27, z7) && e8.B() == 1332176723) {
                if (e8.z() != 0) {
                    if (z7) {
                        return false;
                    }
                    throw P.c("unsupported bit stream revision");
                }
                this.f28161a = e8.z();
                this.f28162b = e8.o();
                e8.q();
                e8.q();
                e8.q();
                int iZ = e8.z();
                this.f28163c = iZ;
                this.f28164d = iZ + 27;
                e8.I(iZ);
                try {
                    if (tVar.e(e8.f28035a, 0, this.f28163c, z7)) {
                        for (int i8 = 0; i8 < this.f28163c; i8++) {
                            int iZ2 = e8.z();
                            this.f28166f[i8] = iZ2;
                            this.f28165e += iZ2;
                        }
                        return true;
                    }
                } catch (EOFException e9) {
                    if (!z7) {
                        throw e9;
                    }
                }
                return false;
            }
        } catch (EOFException e10) {
            if (!z7) {
                throw e10;
            }
        }
        return false;
    }

    public final boolean b(t tVar, long j8) {
        H1.d(tVar.r() == tVar.f());
        E e8 = this.f28167g;
        e8.I(4);
        while (true) {
            if (j8 != -1 && tVar.r() + 4 >= j8) {
                break;
            }
            try {
                if (!tVar.e(e8.f28035a, 0, 4, true)) {
                    break;
                }
                e8.L(0);
                if (e8.B() == 1332176723) {
                    tVar.m();
                    return true;
                }
                tVar.n(1);
            } catch (EOFException unused) {
            }
        }
        do {
            if (j8 != -1 && tVar.r() >= j8) {
                break;
            }
        } while (tVar.i(1) != -1);
        return false;
    }
}
