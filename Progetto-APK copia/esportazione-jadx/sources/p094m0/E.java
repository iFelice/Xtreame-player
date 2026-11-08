package p094m0;

import android.net.Uri;
import com.google.protobuf.U2;
import java.util.List;
import java.util.Objects;
import p117p0.M;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f26675a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final B f26677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f26678d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final H f26680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f26681g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f26682h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26676b = O.p(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26679e = null;

    static {
        U2.r(0, 1, 2, 3, 4);
        M.L(5);
        M.L(6);
        M.L(7);
    }

    public E(Uri uri, B b8, List list, d0 d0Var, long j8) {
        this.f26675a = uri;
        this.f26677c = b8;
        this.f26678d = list;
        this.f26680f = d0Var;
        z4.E eQ = H.q();
        for (int i8 = 0; i8 < d0Var.size(); i8++) {
            eQ.i0(H.a(((G) d0Var.get(i8)).a()));
        }
        eQ.m0();
        this.f26681g = null;
        this.f26682h = j8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof E)) {
            return false;
        }
        E e8 = (E) obj;
        return this.f26675a.equals(e8.f26675a) && Objects.equals(this.f26676b, e8.f26676b) && Objects.equals(this.f26677c, e8.f26677c) && this.f26678d.equals(e8.f26678d) && Objects.equals(this.f26679e, e8.f26679e) && this.f26680f.equals(e8.f26680f) && Objects.equals(this.f26681g, e8.f26681g) && this.f26682h == e8.f26682h;
    }

    public final int hashCode() {
        int iHashCode = this.f26675a.hashCode() * 31;
        String str = this.f26676b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        B b8 = this.f26677c;
        int iHashCode3 = (this.f26678d.hashCode() + ((iHashCode2 + (b8 == null ? 0 : b8.hashCode())) * 961)) * 31;
        String str2 = this.f26679e;
        int iHashCode4 = (this.f26680f.hashCode() + ((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
        Object obj = this.f26681g;
        return (int) ((((long) (iHashCode4 + (obj != null ? obj.hashCode() : 0))) * 31) + this.f26682h);
    }
}
