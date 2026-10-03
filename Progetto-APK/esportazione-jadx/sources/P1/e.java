package P1;

import p079k.AbstractC3012d;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends AbstractC3012d {
    public abstract void t(T1.i iVar, Object obj);

    public void u(Object obj) {
        T1.i iVarC = c();
        try {
            t(iVarC, obj);
            iVarC.W();
        } finally {
            m(iVarC);
        }
    }
}
