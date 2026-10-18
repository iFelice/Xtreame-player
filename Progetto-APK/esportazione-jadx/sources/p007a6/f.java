package p007a6;

import E1.N;
import Q6.D;
import Q6.j;
import T1.c;
import Y5.B;
import Y5.C;
import Y5.C0416c;
import Y5.u;
import Z5.EnumC0452i;
import Z5.InterfaceC0457n;
import java.io.EOFException;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import java.util.logging.Logger;
import p023c6.a;
import p096m2.l;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f implements InterfaceC0457n, k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map f8703d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Logger f8704e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public N f8706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0416c f8707c;

    static {
        EnumMap enumMap = new EnumMap(a.class);
        a aVar = a.NO_ERROR;
        B b8 = B.f8140j;
        enumMap.put(aVar, b8.f("No error: A GRPC status of OK should have been sent"));
        enumMap.put(a.PROTOCOL_ERROR, b8.f("Protocol error"));
        enumMap.put(a.INTERNAL_ERROR, b8.f("Internal error"));
        enumMap.put(a.FLOW_CONTROL_ERROR, b8.f("Flow control error"));
        enumMap.put(a.STREAM_CLOSED, b8.f("Stream closed"));
        enumMap.put(a.FRAME_TOO_LARGE, b8.f("Frame too large"));
        enumMap.put(a.REFUSED_STREAM, B.f8141k.f("Refused stream"));
        enumMap.put(a.CANCEL, B.f8136f.f("Cancelled"));
        enumMap.put(a.COMPRESSION_ERROR, b8.f("Compression error"));
        enumMap.put(a.CONNECT_ERROR, b8.f("Connect error"));
        enumMap.put(a.ENHANCE_YOUR_CALM, B.f8139i.f("Enhance your calm"));
        enumMap.put(a.INADEQUATE_SECURITY, B.f8138h.f("Inadequate security"));
        f8703d = Collections.unmodifiableMap(enumMap);
        f8704e = Logger.getLogger(f.class.getName());
    }

    public static void f(f fVar, String str) {
        a aVar = a.PROTOCOL_ERROR;
        fVar.getClass();
        fVar.p(0, aVar, r(aVar).a(str));
    }

    public static Socket g(f fVar, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) throws C {
        fVar.getClass();
        try {
            InetAddress address = inetSocketAddress2.getAddress();
            fVar.getClass();
            if (address != null) {
                inetSocketAddress2.getAddress();
                inetSocketAddress2.getPort();
                throw null;
            }
            inetSocketAddress2.getHostName();
            inetSocketAddress2.getPort();
            throw null;
        } catch (IOException e8) {
            throw new C(B.f8141k.f("Failed trying to connect with proxy").e(e8));
        }
    }

    public static String o(D d6) throws EOFException {
        j jVar = new j();
        while (d6.read(jVar, 1L) != -1) {
            if (jVar.a0(jVar.f6064H - 1) == 10) {
                return jVar.v(Long.MAX_VALUE);
            }
        }
        throw new EOFException("\\n not found: " + jVar.d(jVar.f6064H).d());
    }

    public static B r(a aVar) {
        B b8 = (B) f8703d.get(aVar);
        if (b8 != null) {
            return b8;
        }
        return B.f8137g.f("Unknown http2 error code: " + aVar.f11441G);
    }

    public abstract l h(InetSocketAddress inetSocketAddress, String str, String str2);

    public abstract void i(int i8, B b8, EnumC0452i enumC0452i, boolean z7, a aVar, u uVar);

    public abstract c[] j();

    public abstract int k();

    public abstract d l(int i8);

    public abstract boolean m(int i8);

    public abstract void n(Exception exc);

    public abstract void p(int i8, a aVar, B b8);

    public abstract boolean q();
}
