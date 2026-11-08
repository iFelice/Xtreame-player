package Y5;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends r {
    public q(String str, A a8) {
        super(str, false, a8);
        if (!(!str.endsWith("-bin"))) {
            throw new IllegalArgumentException(p027d2.v.n("ASCII header is named %s.  Only binary headers may end with %s", str, "-bin"));
        }
        p190y4.k.s(a8, "marshaller");
    }
}
