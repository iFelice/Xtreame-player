package Y5;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f8172a = Logger.getLogger(u.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final A f8173b = new A(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final A4.c f8174c;

    static {
        A4.c cVar = A4.d.f652c;
        if (cVar.f654b != null) {
            cVar = new A4.c(cVar.f653a, (Character) null);
        }
        f8174c = cVar;
    }

    public final String toString() {
        return "Metadata()";
    }
}
