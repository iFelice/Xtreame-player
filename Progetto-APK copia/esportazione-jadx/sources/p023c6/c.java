package p023c6;

import F2.G;
import Q6.m;
import com.google.protobuf.U2;
import okhttp3.internal.http2.Header;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final m f11442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final m f11443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final m f11444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final m f11445g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final m f11446h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m f11447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f11448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11449c;

    static {
        m mVar = m.f6065J;
        f11442d = G.C(Header.RESPONSE_STATUS_UTF8);
        f11443e = G.C(Header.TARGET_METHOD_UTF8);
        f11444f = G.C(Header.TARGET_PATH_UTF8);
        f11445g = G.C(Header.TARGET_SCHEME_UTF8);
        f11446h = G.C(Header.TARGET_AUTHORITY_UTF8);
        G.C(":host");
        G.C(":version");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(m mVar, String str) {
        this(mVar, G.C(str));
        m mVar2 = m.f6065J;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f11447a.equals(cVar.f11447a) && this.f11448b.equals(cVar.f11448b);
    }

    public final int hashCode() {
        return this.f11448b.hashCode() + ((this.f11447a.hashCode() + 527) * 31);
    }

    public final String toString() {
        return U2.l(this.f11447a.k(), ": ", this.f11448b.k());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(String str, String str2) {
        this(G.C(str), G.C(str2));
        m mVar = m.f6065J;
    }

    public c(m mVar, m mVar2) {
        this.f11447a = mVar;
        this.f11448b = mVar2;
        this.f11449c = mVar2.c() + mVar.c() + 32;
    }
}
