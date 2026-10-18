package p023c6;

import F2.G;
import Q6.l;
import Q6.m;
import java.io.IOException;
import java.util.Locale;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f11472a = Logger.getLogger(g.class.getName());

    static {
        m mVar = m.f6065J;
        G.C("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    public static int a(l lVar) {
        return (lVar.readByte() & 255) | ((lVar.readByte() & 255) << 16) | ((lVar.readByte() & 255) << 8);
    }

    public static int b(int i8, byte b8, short s7) throws IOException {
        if ((b8 & 8) != 0) {
            i8--;
        }
        if (s7 <= i8) {
            return (short) (i8 - s7);
        }
        c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s7), Integer.valueOf(i8));
        throw null;
    }

    public static void c(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(Locale.US, str, objArr));
    }
}
