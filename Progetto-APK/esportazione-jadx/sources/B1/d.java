package B1;

import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import p094m0.P;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class d implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public u f1179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public L f1180b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f1183e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1181c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1182d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1184f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1185g = -1;

    @Override // W0.s
    public final void d(u uVar) {
        this.f1179a = uVar;
        this.f1180b = uVar.t(0, 1);
        uVar.j();
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        return f.a(tVar);
    }

    /* JADX WARN: Code duplicated, block: B:87:0x022d  */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        byte[] bArr;
        int iA;
        H1.j(this.f1180b);
        String str = M.f28050a;
        int i8 = this.f1181c;
        if (i8 == 0) {
            H1.i(tVar.r() == 0);
            int i9 = this.f1184f;
            if (i9 != -1) {
                tVar.n(i9);
                this.f1181c = 4;
            } else {
                if (!f.a(tVar)) {
                    throw P.a("Unsupported or unrecognized wav file type.", null);
                }
                tVar.n((int) (tVar.f() - tVar.r()));
                this.f1181c = 1;
            }
            return 0;
        }
        long jO = -1;
        if (i8 == 1) {
            E e8 = new E(8);
            S0.g gVarB = S0.g.b(tVar, e8);
            if (gVarB.f6351a != 1685272116) {
                tVar.m();
            } else {
                tVar.g(8);
                e8.L(0);
                tVar.c(0, e8.f28035a, 8);
                jO = e8.o();
                tVar.n(((int) gVarB.f6352b) + 8);
            }
            this.f1182d = jO;
            this.f1181c = 2;
            return 0;
        }
        if (i8 != 2) {
            if (i8 != 3) {
                if (i8 != 4) {
                    throw new IllegalStateException();
                }
                H1.i(this.f1185g != -1);
                long jR = this.f1185g - tVar.r();
                b bVar = this.f1183e;
                bVar.getClass();
                return bVar.b(tVar, jR) ? -1 : 0;
            }
            tVar.m();
            S0.g gVarB2 = f.b(1684108385, tVar, new E(8));
            tVar.n(8);
            Pair pairCreate = Pair.create(Long.valueOf(tVar.r()), Long.valueOf(gVarB2.f6352b));
            this.f1184f = ((Long) pairCreate.first).intValue();
            long jLongValue = ((Long) pairCreate.second).longValue();
            long j8 = this.f1182d;
            if (j8 != -1 && jLongValue == 4294967295L) {
                jLongValue = j8;
            }
            this.f1185g = ((long) this.f1184f) + jLongValue;
            long j9 = tVar.j();
            if (j9 != -1 && this.f1185g > j9) {
                x.f("WavExtractor", "Data exceeds input length: " + this.f1185g + ", " + j9);
                this.f1185g = j9;
            }
            b bVar2 = this.f1183e;
            bVar2.getClass();
            bVar2.c(this.f1184f, this.f1185g);
            this.f1181c = 4;
            return 0;
        }
        E e9 = new E(16);
        long j10 = f.b(1718449184, tVar, e9).f6352b;
        H1.i(j10 >= 16);
        tVar.c(0, e9.f28035a, 16);
        e9.L(0);
        int iS = e9.s();
        int iS2 = e9.s();
        int iR = e9.r();
        int iR2 = e9.r();
        int iS3 = e9.s();
        int iS4 = e9.s();
        int i10 = ((int) j10) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            tVar.c(0, bArr2, i10);
            if (iS == 65534 && i10 == 24) {
                E e10 = new E(bArr2);
                e10.s();
                int iS5 = e10.s();
                if (iS5 != 0 && iS5 != iS4) {
                    throw P.c("validBits ( " + iS5 + ")  != bitsPerSample( " + iS4 + ") are not supported");
                }
                int iR3 = e10.r();
                if ((iR3 >> 18) != 0) {
                    throw P.c("invalid channel mask " + iR3);
                }
                if (iR3 != 0 && Integer.bitCount(iR3) != iS2) {
                    throw P.c("invalid number of channels (" + Integer.bitCount(iR3) + ") in channel mask " + iR3);
                }
                int iS6 = e10.s();
                byte[] bArr3 = new byte[14];
                e10.j(0, bArr3, 14);
                if (!Arrays.equals(bArr3, f.f1193a) && !Arrays.equals(bArr3, f.f1194b)) {
                    throw P.c("invalid wav format extension guid");
                }
                iS = iS6;
            }
            bArr = bArr2;
        } else {
            bArr = M.f28051b;
        }
        tVar.n((int) (tVar.f() - tVar.r()));
        e eVar = new e(iS, iS2, iR, iR2, iS3, iS4, bArr);
        if (iS == 17) {
            this.f1183e = new a(this.f1179a, this.f1180b, eVar);
        } else if (iS == 6) {
            this.f1183e = new c(this.f1179a, this.f1180b, eVar, "audio/g711-alaw", -1);
        } else if (iS == 7) {
            this.f1183e = new c(this.f1179a, this.f1180b, eVar, "audio/g711-mlaw", -1);
        } else {
            if (iS == 1) {
                iA = M.A(iS4, ByteOrder.LITTLE_ENDIAN);
            } else if (iS == 3) {
                iA = iS4 != 32 ? 0 : 4;
            } else if (iS != 65534) {
                iA = 0;
            } else {
                iA = M.A(iS4, ByteOrder.LITTLE_ENDIAN);
            }
            if (iA == 0) {
                throw P.c("Unsupported WAV format type: " + iS);
            }
            this.f1183e = new c(this.f1179a, this.f1180b, eVar, "audio/raw", iA);
        }
        this.f1181c = 3;
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f1181c = j8 == 0 ? 0 : 4;
        b bVar = this.f1183e;
        if (bVar != null) {
            bVar.a(j9);
        }
    }

    @Override // W0.s
    public final List j() {
        F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
