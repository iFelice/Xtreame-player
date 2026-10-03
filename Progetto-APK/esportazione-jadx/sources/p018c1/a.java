package p018c1;

import O0.a0;
import W0.AbstractC0368a;
import W0.L;
import W0.r;
import java.util.Collections;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.D;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final int[] f10593K = {5512, 11025, 22050, 44100};

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f10594H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f10595I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f10596J;

    public final boolean n(E e8) throws a0 {
        if (this.f10594H) {
            e8.M(1);
        } else {
            int iZ = e8.z();
            int i8 = (iZ >> 4) & 15;
            this.f10596J = i8;
            if (i8 == 2) {
                int i9 = f10593K[(iZ >> 2) & 3];
                C3135s c3135s = new C3135s();
                c3135s.f26995m = O.p("video/x-flv");
                c3135s.f26996n = O.p("audio/mpeg");
                c3135s.f26973F = 1;
                c3135s.f26974G = i9;
                ((L) this.f10616G).b(c3135s.a());
                this.f10595I = true;
            } else if (i8 == 7 || i8 == 8) {
                String str = i8 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
                C3135s c3135s2 = new C3135s();
                c3135s2.f26995m = O.p("video/x-flv");
                c3135s2.f26996n = O.p(str);
                c3135s2.f26973F = 1;
                c3135s2.f26974G = 8000;
                ((L) this.f10616G).b(c3135s2.a());
                this.f10595I = true;
            } else if (i8 != 10) {
                throw new a0("Audio format not supported: " + this.f10596J);
            }
            this.f10594H = true;
        }
        return true;
    }

    public final boolean o(long j8, E e8) throws P {
        if (this.f10596J == 2) {
            int iA = e8.a();
            ((L) this.f10616G).e(iA, e8);
            ((L) this.f10616G).d(j8, 1, iA, 0, null);
            return true;
        }
        int iZ = e8.z();
        if (iZ != 0 || this.f10595I) {
            if (this.f10596J == 10 && iZ != 1) {
                return false;
            }
            int iA2 = e8.a();
            ((L) this.f10616G).e(iA2, e8);
            ((L) this.f10616G).d(j8, 1, iA2, 0, null);
            return true;
        }
        int iA3 = e8.a();
        byte[] bArr = new byte[iA3];
        e8.j(0, bArr, iA3);
        r rVarG = AbstractC0368a.g(new D(bArr, 0, (Object) null), false);
        C3135s c3135s = new C3135s();
        c3135s.f26995m = O.p("video/x-flv");
        c3135s.f26996n = O.p("audio/mp4a-latm");
        c3135s.f26992j = rVarG.f7454a;
        c3135s.f26973F = rVarG.f7456c;
        c3135s.f26974G = rVarG.f7455b;
        c3135s.f26999q = Collections.singletonList(bArr);
        ((L) this.f10616G).b(new C3136t(c3135s));
        this.f10595I = true;
        return false;
    }
}
