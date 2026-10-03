package B1;

import W0.t;
import com.google.protobuf.U2;
import p094m0.P;
import p117p0.E;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1193a = {0, 0, 0, 0, 16, 0, -128, 0, 0, -86, 0, 56, -101, 113};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f1194b = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    public static boolean a(t tVar) {
        E e8 = new E(8);
        int i8 = S0.g.b(tVar, e8).f6351a;
        if (i8 != 1380533830 && i8 != 1380333108) {
            return false;
        }
        tVar.c(0, e8.f28035a, 4);
        e8.L(0);
        int iL = e8.l();
        if (iL == 1463899717) {
            return true;
        }
        x.c("WavHeaderReader", "Unsupported form type: " + iL);
        return false;
    }

    public static S0.g b(int i8, t tVar, E e8) throws P {
        S0.g gVarB = S0.g.b(tVar, e8);
        while (true) {
            int i9 = gVarB.f6351a;
            if (i9 == i8) {
                return gVarB;
            }
            U2.v("Ignoring unknown WAV chunk: ", i9, "WavHeaderReader");
            long j8 = gVarB.f6352b;
            long j9 = 8 + j8;
            if (j8 % 2 != 0) {
                j9 = 9 + j8;
            }
            if (j9 > 2147483647L) {
                throw P.c("Chunk is too large (~2GB+) to skip; id: " + i9);
            }
            tVar.n((int) j9);
            gVarB = S0.g.b(tVar, e8);
        }
    }
}
