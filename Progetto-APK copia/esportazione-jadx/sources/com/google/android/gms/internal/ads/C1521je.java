package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.je, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1521je {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f19465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f19466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f19468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public T5 f19470f = T5.f16590b;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public final long a(int i8, int i9) {
        C1027a c1027aA = this.f19470f.a(i8);
        if (c1027aA.f17820a != -1) {
            return c1027aA.f17824e[i9];
        }
        return -9223372036854775807L;
    }

    public final void b(Object obj, Object obj2, int i8, long j8, boolean z7) {
        T5 t7 = T5.f16590b;
        this.f19465a = obj;
        this.f19466b = obj2;
        this.f19467c = i8;
        this.f19468d = j8;
        this.f19470f = t7;
        this.f19469e = z7;
    }

    public final void c(int i8) {
        this.f19470f.a(i8).getClass();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1521je.class.equals(obj.getClass())) {
            C1521je c1521je = (C1521je) obj;
            if (Objects.equals(this.f19465a, c1521je.f19465a) && Objects.equals(this.f19466b, c1521je.f19466b) && this.f19467c == c1521je.f19467c && this.f19468d == c1521je.f19468d && this.f19469e == c1521je.f19469e && Objects.equals(this.f19470f, c1521je.f19470f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f19465a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f19466b;
        int iHashCode2 = ((((iHashCode + 217) * 31) + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f19467c;
        long j8 = this.f19468d;
        return this.f19470f.hashCode() + (((((iHashCode2 * 31) + ((int) (j8 ^ (j8 >>> 32)))) * 961) + (this.f19469e ? 1 : 0)) * 31);
    }
}
