package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class I1 implements O1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final N1 f13834G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f13835H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f13836I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p118p1.j f13837J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f13838K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f13839L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f13840M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f13841N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f13842O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f13843P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public long f13844Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f13845R;

    public I1(p118p1.j jVar, long j8, long j9, long j10, long j11, boolean z7) {
        p113o3.r.J(j8 >= 0 && j9 > j8);
        this.f13837J = jVar;
        this.f13835H = j8;
        this.f13836I = j9;
        if (j10 == j9 - j8 || z7) {
            this.f13839L = j11;
            this.f13838K = 4;
        } else {
            this.f13838K = 0;
        }
        this.f13834G = new N1();
    }

    @Override // com.google.android.gms.internal.ads.O1
    public final long a(M m7) throws IOException {
        long j8;
        long jMax;
        int i8 = this.f13838K;
        long j9 = this.f13836I;
        N1 n7 = this.f13834G;
        if (i8 == 0) {
            long jZzf = m7.zzf();
            this.f13840M = jZzf;
            this.f13838K = 1;
            long j10 = (-65307) + j9;
            if (j10 > jZzf) {
                return j10;
            }
        } else if (i8 != 1) {
            if (i8 == 2) {
                long j11 = this.f13842O;
                long j12 = this.f13843P;
                if (j11 == j12) {
                    j8 = -1;
                    jMax = -1;
                } else {
                    long jZzf2 = m7.zzf();
                    if (n7.b(m7, j12)) {
                        n7.a(m7, false);
                        m7.zzj();
                        long j13 = this.f13841N;
                        long j14 = n7.f14841b;
                        long j15 = j13 - j14;
                        int i9 = n7.f14843d + n7.f14844e;
                        if (j15 < 0 || j15 >= 72000) {
                            if (j15 < 0) {
                                this.f13843P = jZzf2;
                                this.f13845R = j14;
                            } else {
                                this.f13842O = m7.zzf() + ((long) i9);
                                this.f13844Q = j14;
                            }
                            long j16 = this.f13843P;
                            long j17 = this.f13842O;
                            long j18 = j16 - j17;
                            if (j18 < 100000) {
                                this.f13843P = j17;
                                jMax = j17;
                                j8 = -1;
                            } else {
                                j8 = -1;
                                jMax = Math.max(j17, Math.min(((j15 * j18) / (this.f13845R - this.f13844Q)) + (m7.zzf() - (((long) i9) * (j15 <= 0 ? 2L : 1L))), j16 - 1));
                            }
                        } else {
                            j8 = -1;
                            jMax = -1;
                        }
                    } else {
                        long j19 = this.f13842O;
                        if (j19 == jZzf2) {
                            throw new IOException("No ogg page can be found.");
                        }
                        jMax = j19;
                        j8 = -1;
                    }
                }
                if (jMax != j8) {
                    return jMax;
                }
                this.f13838K = 3;
            } else {
                if (i8 != 3) {
                    return -1L;
                }
                j8 = -1;
            }
            while (true) {
                n7.b(m7, j8);
                n7.a(m7, false);
                if (n7.f14841b > this.f13841N) {
                    m7.zzj();
                    this.f13838K = 4;
                    return -(this.f13844Q + 2);
                }
                m7.q(n7.f14843d + n7.f14844e);
                this.f13842O = m7.zzf();
                this.f13844Q = n7.f14841b;
                j8 = -1;
            }
        }
        n7.f14840a = 0;
        n7.f14841b = 0L;
        n7.f14842c = 0;
        n7.f14843d = 0;
        n7.f14844e = 0;
        if (!n7.b(m7, -1L)) {
            throw new EOFException();
        }
        n7.a(m7, false);
        m7.q(n7.f14843d + n7.f14844e);
        long j20 = n7.f14841b;
        while ((n7.f14840a & 4) != 4 && n7.b(m7, -1L) && m7.zzf() < j9 && n7.a(m7, true)) {
            try {
                m7.q(n7.f14843d + n7.f14844e);
                j20 = n7.f14841b;
            } catch (EOFException unused) {
            }
        }
        this.f13839L = j20;
        this.f13838K = 4;
        return this.f13840M;
    }

    @Override // com.google.android.gms.internal.ads.O1
    public final void b(long j8) {
        this.f13841N = Math.max(0L, Math.min(j8, this.f13839L - 1));
        this.f13838K = 2;
        this.f13842O = this.f13835H;
        this.f13843P = this.f13836I;
        this.f13844Q = 0L;
        this.f13845R = this.f13839L;
    }

    @Override // com.google.android.gms.internal.ads.O1
    public final /* bridge */ /* synthetic */ Y zze() {
        if (this.f13839L != 0) {
            return new H1(this);
        }
        return null;
    }
}
