package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class JE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f14134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NG f14135b;

    public /* synthetic */ JE(Class cls, NG ng) {
        this.f14134a = cls;
        this.f14135b = ng;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof JE)) {
            return false;
        }
        JE je = (JE) obj;
        return je.f14134a.equals(this.f14134a) && je.f14135b.equals(this.f14135b);
    }

    public final int hashCode() {
        return Objects.hash(this.f14134a, this.f14135b);
    }

    public final String toString() {
        return com.google.protobuf.U2.l(this.f14134a.getSimpleName(), ", object identifier: ", String.valueOf(this.f14135b));
    }
}
