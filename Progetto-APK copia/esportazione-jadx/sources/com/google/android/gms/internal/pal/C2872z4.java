package com.google.android.gms.internal.pal;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.z4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2872z4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f24092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Q6 f24093b;

    public /* synthetic */ C2872z4(Q6 q7, Class cls) {
        this.f24092a = cls;
        this.f24093b = q7;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2872z4)) {
            return false;
        }
        C2872z4 c2872z4 = (C2872z4) obj;
        return c2872z4.f24092a.equals(this.f24092a) && c2872z4.f24093b.equals(this.f24093b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f24092a, this.f24093b});
    }

    public final String toString() {
        return com.google.protobuf.U2.l(this.f24092a.getSimpleName(), ", object identifier: ", String.valueOf(this.f24093b));
    }
}
