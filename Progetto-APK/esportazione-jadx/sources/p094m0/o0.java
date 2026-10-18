package p094m0;

import p117p0.p;

/* JADX INFO: loaded from: classes.dex */
public final class o0 extends Exception {
    public o0(p pVar) {
        super(pVar);
    }

    public static o0 a(Exception exc) {
        return exc instanceof o0 ? (o0) exc : new o0(exc);
    }
}
