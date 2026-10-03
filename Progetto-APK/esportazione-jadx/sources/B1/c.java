package B1;

import W0.L;
import W0.t;
import W0.u;
import java.math.RoundingMode;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f1171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L f1172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f1173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C3136t f1174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f1176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1177g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f1178h;

    public c(u uVar, L l4, e eVar, String str, int i8) throws P {
        this.f1171a = uVar;
        this.f1172b = l4;
        this.f1173c = eVar;
        int i9 = eVar.f1191f;
        int i10 = eVar.f1187b;
        int i11 = (i9 * i10) / 8;
        int i12 = eVar.f1190e;
        if (i12 != i11) {
            throw P.a("Expected block size: " + i11 + "; got: " + i12, null);
        }
        int i13 = eVar.f1188c;
        int i14 = i13 * i11;
        int i15 = i14 * 8;
        int iMax = Math.max(i11, i14 / 10);
        this.f1175e = iMax;
        C3135s c3135s = new C3135s();
        c3135s.f26995m = O.p("audio/wav");
        c3135s.f26996n = O.p(str);
        c3135s.f26990h = i15;
        c3135s.f26991i = i15;
        c3135s.f26997o = iMax;
        c3135s.f26973F = i10;
        c3135s.f26974G = i13;
        c3135s.f26975H = i8;
        this.f1174d = new C3136t(c3135s);
    }

    @Override // B1.b
    public final void a(long j8) {
        this.f1176f = j8;
        this.f1177g = 0;
        this.f1178h = 0L;
    }

    @Override // B1.b
    public final boolean b(t tVar, long j8) {
        int i8;
        int i9;
        long j9 = j8;
        while (j9 > 0 && (i8 = this.f1177g) < (i9 = this.f1175e)) {
            int iF = this.f1172b.f(tVar, (int) Math.min(i9 - i8, j9), true);
            if (iF == -1) {
                j9 = 0;
            } else {
                this.f1177g += iF;
                j9 -= (long) iF;
            }
        }
        e eVar = this.f1173c;
        int i10 = eVar.f1190e;
        int i11 = this.f1177g / i10;
        if (i11 > 0) {
            long j10 = this.f1176f;
            long j11 = this.f1178h;
            long j12 = eVar.f1188c;
            String str = M.f28050a;
            long jZ = j10 + M.Z(j11, 1000000L, j12, RoundingMode.DOWN);
            int i12 = i11 * i10;
            int i13 = this.f1177g - i12;
            this.f1172b.d(jZ, 1, i12, i13, null);
            this.f1178h += (long) i11;
            this.f1177g = i13;
        }
        return j9 <= 0;
    }

    @Override // B1.b
    public final void c(int i8, long j8) {
        this.f1171a.r(new g(this.f1173c, 1, i8, j8));
        this.f1172b.b(this.f1174d);
    }
}
