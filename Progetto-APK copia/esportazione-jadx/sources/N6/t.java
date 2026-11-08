package N6;

import J6.AbstractC0202a;
import J6.C0212k;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class t extends AbstractC0202a implements p199z6.d {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p185x6.e f4998J;

    public t(p185x6.e eVar, p185x6.j jVar) {
        super(jVar, true);
        this.f4998J = eVar;
    }

    @Override // p199z6.d
    public final p199z6.d a() {
        p185x6.e eVar = this.f4998J;
        if (eVar instanceof p199z6.d) {
            return (p199z6.d) eVar;
        }
        return null;
    }

    @Override // J6.Q
    public final void c(Object obj) {
        p185x6.e eVarH = S3.e.h(this.f4998J);
        if (obj instanceof C0212k) {
            obj = q0.n(((C0212k) obj).f4242a);
        }
        e.b(obj, eVarH);
    }

    @Override // J6.Q
    public final void d(Object obj) {
        if (obj instanceof C0212k) {
            obj = q0.n(((C0212k) obj).f4242a);
        }
        this.f4998J.b(obj);
    }
}
