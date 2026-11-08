package Z5;

import java.util.Collection;
import java.util.HashMap;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class P extends Y5.o implements Y5.l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Y5.B f8434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Y5.B f8435g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Collection f8436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f8437e;

    static {
        Logger.getLogger(P.class.getName());
        Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");
        Y5.B b8 = Y5.B.f8141k;
        b8.f("Channel shutdownNow invoked");
        f8434f = b8.f("Channel shutdown invoked");
        f8435g = b8.f("Subchannel shutdown invoked");
        new Q(null, new HashMap(), new HashMap(), null, null, null);
    }

    public static void p(P p7) {
        if (p7.f8437e) {
            return;
        }
        p7.getClass();
        throw null;
    }

    public abstract void q();

    public abstract void r(boolean z7);
}
