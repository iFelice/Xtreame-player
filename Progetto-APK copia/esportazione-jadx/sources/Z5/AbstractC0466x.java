package Z5;

import java.io.Closeable;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: Z5.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0466x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f8471a = Logger.getLogger(AbstractC0466x.class.getName());

    static {
        Collections.unmodifiableSet(EnumSet.of(Y5.z.OK, Y5.z.INVALID_ARGUMENT, Y5.z.NOT_FOUND, Y5.z.ALREADY_EXISTS, Y5.z.FAILED_PRECONDITION, Y5.z.ABORTED, Y5.z.OUT_OF_RANGE, Y5.z.DATA_LOSS));
        Charset.forName("US-ASCII");
        new Y5.q("grpc-timeout", new Y5.A(1));
        Y5.A a8 = Y5.u.f8173b;
        new Y5.q("grpc-encoding", a8);
        Y5.m.a("grpc-accept-encoding", new U4.b());
        new Y5.q("content-encoding", a8);
        Y5.m.a("accept-encoding", new U4.b());
        new Y5.q("content-length", a8);
        new Y5.q("content-type", a8);
        new Y5.q("te", a8);
        new Y5.q("user-agent", a8);
        p190y4.f.f31423I.getClass();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        timeUnit.toNanos(20L);
        TimeUnit.HOURS.toNanos(2L);
        timeUnit.toNanos(20L);
        new X();
    }

    public static URI a(String str) {
        p190y4.k.s(str, "authority");
        try {
            return new URI(null, str, null, null, null);
        } catch (URISyntaxException e8) {
            throw new IllegalArgumentException("Invalid authority: ".concat(str), e8);
        }
    }

    public static void b(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e8) {
            f8471a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e8);
        }
    }

    public static D4.c c(String str) {
        Boolean bool = Boolean.TRUE;
        String.format(Locale.ROOT, str, 0);
        return new D4.c(Executors.defaultThreadFactory(), str, new AtomicLong(0L), bool, null, null);
    }
}
