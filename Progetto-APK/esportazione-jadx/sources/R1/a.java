package R1;

import F2.G;
import I6.k;
import java.util.Locale;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6263g;

    public a(int i8, int i9, String str, String str2, String str3, boolean z7) {
        this.f6257a = str;
        this.f6258b = str2;
        this.f6259c = z7;
        this.f6260d = i8;
        this.f6261e = str3;
        this.f6262f = i9;
        Locale locale = Locale.US;
        q0.g(locale, "US");
        String upperCase = str2.toUpperCase(locale);
        q0.g(upperCase, "this as java.lang.String).toUpperCase(locale)");
        this.f6263g = k.D0(upperCase, "INT") ? 3 : (k.D0(upperCase, "CHAR") || k.D0(upperCase, "CLOB") || k.D0(upperCase, "TEXT")) ? 2 : k.D0(upperCase, "BLOB") ? 5 : (k.D0(upperCase, "REAL") || k.D0(upperCase, "FLOA") || k.D0(upperCase, "DOUB")) ? 4 : 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f6260d != aVar.f6260d) {
            return false;
        }
        if (!q0.c(this.f6257a, aVar.f6257a) || this.f6259c != aVar.f6259c) {
            return false;
        }
        int i8 = aVar.f6262f;
        String str = aVar.f6261e;
        String str2 = this.f6261e;
        int i9 = this.f6262f;
        if (i9 == 1 && i8 == 2 && str2 != null && !G.A(str2, str)) {
            return false;
        }
        if (i9 != 2 || i8 != 1 || str == null || G.A(str, str2)) {
            return (i9 == 0 || i9 != i8 || (str2 == null ? str == null : G.A(str2, str))) && this.f6263g == aVar.f6263g;
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f6257a.hashCode() * 31) + this.f6263g) * 31) + (this.f6259c ? 1231 : 1237)) * 31) + this.f6260d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Column{name='");
        sb.append(this.f6257a);
        sb.append("', type='");
        sb.append(this.f6258b);
        sb.append("', affinity='");
        sb.append(this.f6263g);
        sb.append("', notNull=");
        sb.append(this.f6259c);
        sb.append(", primaryKeyPosition=");
        sb.append(this.f6260d);
        sb.append(", defaultValue='");
        String str = this.f6261e;
        if (str == null) {
            str = "undefined";
        }
        return r.j(sb, str, "'}");
    }
}
