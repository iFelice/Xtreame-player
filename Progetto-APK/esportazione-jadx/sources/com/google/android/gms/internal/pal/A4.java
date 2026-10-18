package com.google.android.gms.internal.pal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class A4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f23451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f23452b;

    public /* synthetic */ A4(Class cls, Class cls2) {
        this.f23451a = cls;
        this.f23452b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof A4)) {
            return false;
        }
        A4 a8 = (A4) obj;
        return a8.f23451a.equals(this.f23451a) && a8.f23452b.equals(this.f23452b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f23451a, this.f23452b});
    }

    public final String toString() {
        return com.google.protobuf.U2.l(this.f23451a.getSimpleName(), " with serialization type: ", this.f23452b.getSimpleName());
    }
}
