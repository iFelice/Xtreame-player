package p113o3;

import U4.a;
import java.util.Arrays;
import p096m2.e;

/* JADX INFO: renamed from: o3.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3159q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f27990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f27991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f27992d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27993e;

    public C3159q(String str, double d6, double d8, double d9, int i8) {
        this.f27989a = str;
        this.f27991c = d6;
        this.f27990b = d8;
        this.f27992d = d9;
        this.f27993e = i8;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3159q)) {
            return false;
        }
        C3159q c3159q = (C3159q) obj;
        return a.c(this.f27989a, c3159q.f27989a) && this.f27990b == c3159q.f27990b && this.f27991c == c3159q.f27991c && this.f27993e == c3159q.f27993e && Double.compare(this.f27992d, c3159q.f27992d) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f27989a, Double.valueOf(this.f27990b), Double.valueOf(this.f27991c), Double.valueOf(this.f27992d), Integer.valueOf(this.f27993e)});
    }

    public final String toString() {
        e eVar = new e(this);
        eVar.d(this.f27989a, "name");
        eVar.d(Double.valueOf(this.f27991c), "minBound");
        eVar.d(Double.valueOf(this.f27990b), "maxBound");
        eVar.d(Double.valueOf(this.f27992d), "percent");
        eVar.d(Integer.valueOf(this.f27993e), "count");
        return eVar.toString();
    }
}
