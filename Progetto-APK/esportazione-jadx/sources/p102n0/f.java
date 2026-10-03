package p102n0;

/* JADX INFO: loaded from: classes.dex */
public final class f extends Exception {
    public f(e eVar) {
        this("Unhandled input format:", eVar);
    }

    public f(String str, e eVar) {
        super(str + " " + eVar);
    }
}
