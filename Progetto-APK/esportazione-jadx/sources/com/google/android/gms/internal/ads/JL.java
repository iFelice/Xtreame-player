package com.google.android.gms.internal.ads;

import D0.C0117g;

/* JADX INFO: loaded from: classes.dex */
public final class JL {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final JL f14140d = new C0117g().c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f14141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f14142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f14143c;

    public /* synthetic */ JL(C0117g c0117g) {
        this.f14141a = c0117g.f1935a;
        this.f14142b = c0117g.f1936b;
        this.f14143c = c0117g.f1937c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && JL.class == obj.getClass()) {
            JL jl = (JL) obj;
            if (this.f14141a == jl.f14141a && this.f14142b == jl.f14142b && this.f14143c == jl.f14143c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = (this.f14141a ? 1 : 0) << 2;
        boolean z7 = this.f14142b;
        return (z7 ? 1 : 0) + (z7 ? 1 : 0) + i8 + (this.f14143c ? 1 : 0);
    }
}
