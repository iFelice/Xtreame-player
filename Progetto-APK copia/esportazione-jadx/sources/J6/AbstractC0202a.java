package J6;

import z4.q0;

/* JADX INFO: renamed from: J6.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0202a extends Q implements p185x6.e, InterfaceC0217p {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p185x6.j f4224I;

    public AbstractC0202a(p185x6.j jVar, boolean z7) {
        super(z7);
        q((J) jVar.k(C0215n.f4245H));
        this.f4224I = jVar.N(this);
    }

    @Override // p185x6.e
    public final void b(Object obj) {
        Throwable thA = p155t6.e.a(obj);
        if (thA != null) {
            obj = new C0212k(false, thA);
        }
        Object objS = s(obj);
        if (objS == r.f4252e) {
            return;
        }
        d(objS);
    }

    @Override // J6.Q
    public final String g() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // p185x6.e
    public final p185x6.j getContext() {
        return this.f4224I;
    }

    @Override // J6.Q, J6.J
    public final boolean isActive() {
        return super.isActive();
    }

    @Override // J6.Q
    public final void p(Y.r rVar) {
        q0.w(this.f4224I, rVar);
    }

    @Override // J6.Q
    public final String t() {
        return super.t();
    }

    @Override // J6.Q
    public final void w(Object obj) {
        if (obj instanceof C0212k) {
            C0212k c0212k = (C0212k) obj;
            Throwable th = c0212k.f4242a;
            c0212k.getClass();
            C0212k.f4241b.get(c0212k);
        }
    }
}
