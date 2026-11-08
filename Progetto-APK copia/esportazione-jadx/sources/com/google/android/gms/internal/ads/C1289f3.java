package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.List;
import p094m0.C3125h;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.f3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1289f3 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public N f18716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InterfaceC1234e0 f18717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18718c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f18719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC1186d3 f18720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18722g;

    /* JADX WARN: Code duplicated, block: B:54:0x016f  */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        byte[] bArr;
        int iR;
        p113o3.r.x(this.f18717b);
        int i8 = Et.f13234a;
        int i9 = this.f18718c;
        if (i9 == 0) {
            p113o3.r.M(m7.zzf() == 0);
            int i10 = this.f18721f;
            if (i10 != -1) {
                m7.q(i10);
                this.f18718c = 4;
            } else {
                if (!p113o3.r.D(m7)) {
                    throw C0800Ka.a("Unsupported or unrecognized wav file type.", null);
                }
                m7.q((int) (m7.zze() - m7.zzf()));
                this.f18718c = 1;
            }
            return 0;
        }
        long jB = -1;
        if (i9 == 1) {
            C1534jr c1534jr = new C1534jr(8);
            S0.g gVarC = S0.g.c(m7, c1534jr);
            if (gVarC.f6351a != 1685272116) {
                m7.zzj();
            } else {
                m7.zzg(8);
                c1534jr.j(0);
                m7.g(0, c1534jr.f19515a, 8);
                jB = c1534jr.B();
                m7.q(((int) gVarC.f6352b) + 8);
            }
            this.f18719d = jB;
            this.f18718c = 2;
            return 0;
        }
        if (i9 != 2) {
            if (i9 != 3) {
                p113o3.r.M(this.f18722g != -1);
                long jZzf = this.f18722g - m7.zzf();
                InterfaceC1186d3 interfaceC1186d3 = this.f18720e;
                interfaceC1186d3.getClass();
                return interfaceC1186d3.b(m7, jZzf) ? -1 : 0;
            }
            m7.zzj();
            S0.g gVarG = p113o3.r.G(1684108385, m7, new C1534jr(8));
            m7.q(8);
            Pair pairCreate = Pair.create(Long.valueOf(m7.zzf()), Long.valueOf(gVarG.f6352b));
            this.f18721f = ((Long) pairCreate.first).intValue();
            long jLongValue = ((Long) pairCreate.second).longValue();
            long j8 = this.f18719d;
            if (j8 != -1 && jLongValue == 4294967295L) {
                jLongValue = j8;
            }
            long j9 = ((long) this.f18721f) + jLongValue;
            this.f18722g = j9;
            long jZzd = m7.zzd();
            if (jZzd != -1 && j9 > jZzd) {
                StringBuilder sbD = p148t.a.d("Data exceeds input length: ", j9, ", ");
                sbD.append(jZzd);
                Zo.f("WavExtractor", sbD.toString());
                this.f18722g = jZzd;
                j9 = jZzd;
            }
            InterfaceC1186d3 interfaceC1186d4 = this.f18720e;
            interfaceC1186d4.getClass();
            interfaceC1186d4.zza(this.f18721f, j9);
            this.f18718c = 4;
            return 0;
        }
        C1534jr c1534jr2 = new C1534jr(16);
        long j10 = p113o3.r.G(1718449184, m7, c1534jr2).f6352b;
        p113o3.r.M(j10 >= 16);
        m7.g(0, c1534jr2.f19515a, 16);
        c1534jr2.j(0);
        int iU = c1534jr2.u();
        int iU2 = c1534jr2.u();
        int iT = c1534jr2.t();
        c1534jr2.t();
        int iU3 = c1534jr2.u();
        int iU4 = c1534jr2.u();
        int i11 = ((int) j10) - 16;
        if (i11 > 0) {
            bArr = new byte[i11];
            m7.g(0, bArr, i11);
        } else {
            bArr = Et.f13239f;
        }
        m7.q((int) (m7.zze() - m7.zzf()));
        C3125h c3125h = new C3125h();
        c3125h.f26862a = iU;
        c3125h.f26863b = iU2;
        c3125h.f26864c = iT;
        c3125h.f26865d = iU3;
        c3125h.f26866e = iU4;
        c3125h.f26867f = bArr;
        if (iU == 17) {
            this.f18720e = new C1134c3(this.f18716a, this.f18717b, c3125h);
        } else if (iU == 6) {
            this.f18720e = new C1237e3(this.f18716a, this.f18717b, c3125h, "audio/g711-alaw", -1);
        } else if (iU == 7) {
            this.f18720e = new C1237e3(this.f18716a, this.f18717b, c3125h, "audio/g711-mlaw", -1);
        } else {
            if (iU == 1) {
                iR = Et.r(iU4);
            } else {
                if (iU != 3) {
                    if (iU == 65534) {
                        iR = Et.r(iU4);
                    }
                } else if (iU4 == 32) {
                    iR = 4;
                }
                iR = 0;
            }
            if (iR == 0) {
                throw C0800Ka.b("Unsupported WAV format type: " + iU);
            }
            this.f18720e = new C1237e3(this.f18716a, this.f18717b, c3125h, "audio/raw", iR);
        }
        this.f18718c = 3;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        return p113o3.r.D(m7);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        this.f18718c = j8 == 0 ? 0 : 4;
        InterfaceC1186d3 interfaceC1186d3 = this.f18720e;
        if (interfaceC1186d3 != null) {
            interfaceC1186d3.a(j9);
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f18716a = n7;
        this.f18717b = n7.h(0, 1);
        n7.f();
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
