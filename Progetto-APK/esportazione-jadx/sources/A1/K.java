package A1;

import B0.C0073x;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import p086l.C3051s;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L[] f312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3051s f313c;

    public K(List list) {
        this.f311a = list;
        this.f312b = new L[list.size()];
        C3051s c3051s = new C3051s(new C0073x(this, 26));
        this.f313c = c3051s;
        c3051s.j(3);
    }

    public final void a(long j8, p117p0.E e8) {
        if (e8.a() < 9) {
            return;
        }
        int iL = e8.l();
        int iL2 = e8.l();
        int iZ = e8.z();
        if (iL == 434 && iL2 == 1195456820 && iZ == 3) {
            this.f313c.a(j8, e8);
        }
    }

    public final void b(W0.u uVar, I i8) {
        int i9 = 0;
        while (true) {
            L[] lArr = this.f312b;
            if (i9 >= lArr.length) {
                return;
            }
            i8.a();
            i8.b();
            L lT = uVar.t(i8.f309d, 3);
            C3136t c3136t = (C3136t) this.f311a.get(i9);
            String str = c3136t.f27041o;
            H1.c("Invalid closed caption MIME type provided: " + str, "application/cea-608".equals(str) || "application/cea-708".equals(str));
            C3135s c3135s = new C3135s();
            i8.b();
            c3135s.f26983a = i8.f310e;
            c3135s.f26995m = O.p("video/mp2t");
            c3135s.f26996n = O.p(str);
            c3135s.f26987e = c3136t.f27031e;
            c3135s.f26986d = c3136t.f27030d;
            c3135s.f26978K = c3136t.f27021L;
            c3135s.f26999q = c3136t.f27044r;
            lT.b(new C3136t(c3135s));
            lArr[i9] = lT;
            i9++;
        }
    }
}
