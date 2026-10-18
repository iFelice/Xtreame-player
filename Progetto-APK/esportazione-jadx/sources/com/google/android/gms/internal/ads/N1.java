package com.google.android.gms.internal.ads;

import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
public final class N1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f14841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f14845f = new int[255];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C1534jr f14846g = new C1534jr(255);

    public final boolean a(M m7, boolean z7) throws C0800Ka, EOFException {
        this.f14840a = 0;
        this.f14841b = 0L;
        this.f14842c = 0;
        this.f14843d = 0;
        this.f14844e = 0;
        C1534jr c1534jr = this.f14846g;
        c1534jr.g(27);
        try {
            if (m7.d(c1534jr.f19515a, 0, 27, z7) && c1534jr.E() == 1332176723) {
                if (c1534jr.w() != 0) {
                    if (z7) {
                        return false;
                    }
                    throw C0800Ka.b("unsupported bit stream revision");
                }
                this.f14840a = c1534jr.w();
                this.f14841b = c1534jr.B();
                c1534jr.C();
                c1534jr.C();
                c1534jr.C();
                int iW = c1534jr.w();
                this.f14842c = iW;
                this.f14843d = iW + 27;
                c1534jr.g(iW);
                try {
                    if (m7.d(c1534jr.f19515a, 0, this.f14842c, z7)) {
                        for (int i8 = 0; i8 < this.f14842c; i8++) {
                            int iW2 = c1534jr.w();
                            this.f14845f[i8] = iW2;
                            this.f14844e += iW2;
                        }
                        return true;
                    }
                } catch (EOFException e8) {
                    if (!z7) {
                        throw e8;
                    }
                }
                return false;
            }
        } catch (EOFException e9) {
            if (!z7) {
                throw e9;
            }
        }
        return false;
    }

    public final boolean b(M m7, long j8) {
        p113o3.r.J(m7.zzf() == m7.zze());
        C1534jr c1534jr = this.f14846g;
        c1534jr.g(4);
        while (true) {
            if (j8 != -1 && m7.zzf() + 4 >= j8) {
                break;
            }
            try {
                if (!m7.d(c1534jr.f19515a, 0, 4, true)) {
                    break;
                }
                c1534jr.j(0);
                if (c1534jr.E() == 1332176723) {
                    m7.zzj();
                    return true;
                }
                m7.q(1);
            } catch (EOFException unused) {
            }
        }
        do {
            if (j8 != -1 && m7.zzf() >= j8) {
                break;
            }
        } while (m7.zzc() != -1);
        return false;
    }
}
