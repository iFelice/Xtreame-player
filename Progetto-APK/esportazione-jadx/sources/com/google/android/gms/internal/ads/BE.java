package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class BE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f12303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f12304b;

    public /* synthetic */ BE(Class cls, Class cls2) {
        this.f12303a = cls;
        this.f12304b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BE)) {
            return false;
        }
        BE be = (BE) obj;
        return be.f12303a.equals(this.f12303a) && be.f12304b.equals(this.f12304b);
    }

    public final int hashCode() {
        return Objects.hash(this.f12303a, this.f12304b);
    }

    public final String toString() {
        return com.google.protobuf.U2.l(this.f12303a.getSimpleName(), " with primitive type: ", this.f12304b.getSimpleName());
    }
}
