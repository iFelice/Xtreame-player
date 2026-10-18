package p131q6;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    static {
        new a("No further exceptions");
    }

    public static RuntimeException a(Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        }
        return th instanceof RuntimeException ? (RuntimeException) th : new RuntimeException(th);
    }
}
