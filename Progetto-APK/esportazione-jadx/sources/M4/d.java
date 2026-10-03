package M4;

import com.google.android.gms.internal.ads.Cw;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f4805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4807c;

    public d(int i8, int i9, Class cls) {
        this(new g(f.class, cls), i8, i9);
    }

    public static d a(Class cls) {
        return new d(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f4805a.equals(dVar.f4805a) && this.f4806b == dVar.f4806b && this.f4807c == dVar.f4807c;
    }

    public final int hashCode() {
        return ((((this.f4805a.hashCode() ^ 1000003) * 1000003) ^ this.f4806b) * 1000003) ^ this.f4807c;
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f4805a);
        sb.append(", type=");
        int i8 = this.f4806b;
        if (i8 == 1) {
            str = "required";
        } else {
            str = i8 == 0 ? "optional" : "set";
        }
        sb.append(str);
        sb.append(", injection=");
        int i9 = this.f4807c;
        if (i9 == 0) {
            str2 = "direct";
        } else if (i9 == 1) {
            str2 = "provider";
        } else {
            if (i9 != 2) {
                throw new AssertionError(r.f("Unsupported injection: ", i9));
            }
            str2 = "deferred";
        }
        return r.j(sb, str2, "}");
    }

    public d(g gVar, int i8, int i9) {
        Cw.h(gVar, "Null dependency anInterface.");
        this.f4805a = gVar;
        this.f4806b = i8;
        this.f4807c = i9;
    }
}
