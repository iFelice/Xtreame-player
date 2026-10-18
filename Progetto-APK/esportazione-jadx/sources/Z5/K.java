package Z5;

import java.util.BitSet;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public abstract class K implements InterfaceC0451h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Y5.B f8431b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f8432a;

    static {
        Y5.A a8 = Y5.u.f8173b;
        BitSet bitSet = Y5.r.f8169c;
        new Y5.q("grpc-previous-rpc-attempts", a8);
        new Y5.q("grpc-retry-pushback-ms", a8);
        f8431b = Y5.B.f8136f.f("Stream thrown away because RetriableStream committed");
        new Random();
    }

    public abstract void b(Y y7);
}
