package p199z6;

import D6.f;
import D6.l;
import D6.m;
import p185x6.e;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends c implements f {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f31932J;

    public h(e eVar) {
        super(eVar);
        this.f31932J = 2;
    }

    @Override // D6.f
    public final int getArity() {
        return this.f31932J;
    }

    @Override // p199z6.a
    public final String toString() {
        if (this.f31926G != null) {
            return super.toString();
        }
        l.f2437a.getClass();
        String strA = m.a(this);
        q0.g(strA, "renderLambdaToString(...)");
        return strA;
    }
}
