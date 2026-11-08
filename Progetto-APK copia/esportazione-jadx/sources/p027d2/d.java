package p027d2;

import java.util.Set;
import p148t.a;
import p156u.h;
import p162u6.s;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final d f24619i = new d(1, false, false, false, false, -1, -1, s.f30544G);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f24621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f24622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f24623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f24624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f24625f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f24626g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set f24627h;

    public d(int i8, boolean z7, boolean z8, boolean z9, boolean z10, long j8, long j9, Set set) {
        a.f(i8, "requiredNetworkType");
        q0.h(set, "contentUriTriggers");
        this.f24620a = i8;
        this.f24621b = z7;
        this.f24622c = z8;
        this.f24623d = z9;
        this.f24624e = z10;
        this.f24625f = j8;
        this.f24626g = j9;
        this.f24627h = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !q0.c(d.class, obj.getClass())) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f24621b == dVar.f24621b && this.f24622c == dVar.f24622c && this.f24623d == dVar.f24623d && this.f24624e == dVar.f24624e && this.f24625f == dVar.f24625f && this.f24626g == dVar.f24626g && this.f24620a == dVar.f24620a) {
            return q0.c(this.f24627h, dVar.f24627h);
        }
        return false;
    }

    public final int hashCode() {
        int iB = ((((((((h.b(this.f24620a) * 31) + (this.f24621b ? 1 : 0)) * 31) + (this.f24622c ? 1 : 0)) * 31) + (this.f24623d ? 1 : 0)) * 31) + (this.f24624e ? 1 : 0)) * 31;
        long j8 = this.f24625f;
        int i8 = (iB + ((int) (j8 ^ (j8 >>> 32)))) * 31;
        long j9 = this.f24626g;
        return this.f24627h.hashCode() + ((i8 + ((int) (j9 ^ (j9 >>> 32)))) * 31);
    }
}
