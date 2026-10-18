package D6;

import java.io.Serializable;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h implements f, Serializable {
    private final int arity;

    public h(int i8) {
        this.arity = i8;
    }

    @Override // D6.f
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        l.f2437a.getClass();
        String strA = m.a(this);
        q0.g(strA, "renderLambdaToString(...)");
        return strA;
    }
}
