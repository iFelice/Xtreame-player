package Y5;

/* JADX INFO: loaded from: classes2.dex */
public final class s extends r {
    public s(String str, boolean z7, t tVar) {
        super(str, z7, tVar);
        if (!(!str.endsWith("-bin"))) {
            throw new IllegalArgumentException(p027d2.v.n("ASCII header is named %s.  Only binary headers may end with %s", str, "-bin"));
        }
    }
}
