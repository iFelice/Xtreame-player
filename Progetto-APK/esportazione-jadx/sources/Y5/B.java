package Y5;

import com.google.android.gms.internal.ads.Cw;
import com.google.protobuf.U2;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import p113o3.G;

/* JADX INFO: loaded from: classes2.dex */
public final class B {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List f8134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final B f8135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final B f8136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final B f8137g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final B f8138h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final B f8139i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final B f8140j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final B f8141k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f8142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f8143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Throwable f8144c;

    static {
        TreeMap treeMap = new TreeMap();
        for (z zVar : z.values()) {
            B b8 = (B) treeMap.put(Integer.valueOf(zVar.f8196G), new B(zVar, null, null));
            if (b8 != null) {
                throw new IllegalStateException("Code value duplication between " + b8.f8142a.name() + " & " + zVar.name());
            }
        }
        f8134d = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        f8135e = z.OK.a();
        f8136f = z.CANCELLED.a();
        f8137g = z.UNKNOWN.a();
        z.INVALID_ARGUMENT.a();
        z.DEADLINE_EXCEEDED.a();
        z.NOT_FOUND.a();
        z.ALREADY_EXISTS.a();
        f8138h = z.PERMISSION_DENIED.a();
        z.UNAUTHENTICATED.a();
        f8139i = z.RESOURCE_EXHAUSTED.a();
        z.FAILED_PRECONDITION.a();
        z.ABORTED.a();
        z.OUT_OF_RANGE.a();
        z.UNIMPLEMENTED.a();
        f8140j = z.INTERNAL.a();
        f8141k = z.UNAVAILABLE.a();
        z.DATA_LOSS.a();
        new s("grpc-status", false, new A());
        new s("grpc-message", false, new A());
    }

    public B(z zVar, String str, Throwable th) {
        p190y4.k.s(zVar, "code");
        this.f8142a = zVar;
        this.f8143b = str;
        this.f8144c = th;
    }

    public static String b(B b8) {
        String str = b8.f8143b;
        z zVar = b8.f8142a;
        if (str == null) {
            return zVar.toString();
        }
        return zVar + ": " + b8.f8143b;
    }

    public static B c(int i8) {
        if (i8 >= 0) {
            List list = f8134d;
            if (i8 < list.size()) {
                return (B) list.get(i8);
            }
        }
        return f8137g.f("Unknown code " + i8);
    }

    public final B a(String str) {
        if (str == null) {
            return this;
        }
        Throwable th = this.f8144c;
        z zVar = this.f8142a;
        String str2 = this.f8143b;
        return str2 == null ? new B(zVar, str, th) : new B(zVar, U2.l(str2, "\n", str), th);
    }

    public final boolean d() {
        return z.OK == this.f8142a;
    }

    public final B e(Throwable th) {
        return a7.b.c(this.f8144c, th) ? this : new B(this.f8142a, this.f8143b, th);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final B f(String str) {
        return a7.b.c(this.f8143b, str) ? this : new B(this.f8142a, str, this.f8144c);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final String toString() {
        G gN = Cw.n(this);
        gN.a(this.f8142a.name(), "code");
        gN.a(this.f8143b, "description");
        Throwable th = this.f8144c;
        Object string = th;
        if (th != null) {
            Object obj = p190y4.x.f31451a;
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        gN.a(string, "cause");
        return gN.toString();
    }
}
