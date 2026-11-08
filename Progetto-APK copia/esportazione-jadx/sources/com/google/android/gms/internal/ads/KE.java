package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class KE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f14317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f14318b;

    public /* synthetic */ KE(Class cls, Class cls2) {
        this.f14317a = cls;
        this.f14318b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof KE)) {
            return false;
        }
        KE ke = (KE) obj;
        return ke.f14317a.equals(this.f14317a) && ke.f14318b.equals(this.f14318b);
    }

    public final int hashCode() {
        return Objects.hash(this.f14317a, this.f14318b);
    }

    public final String toString() {
        return com.google.protobuf.U2.l(this.f14317a.getSimpleName(), " with serialization type: ", this.f14318b.getSimpleName());
    }
}
