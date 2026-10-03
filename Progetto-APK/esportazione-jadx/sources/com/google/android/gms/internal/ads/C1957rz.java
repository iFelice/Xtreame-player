package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1957rz extends AbstractC2217wz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final C1957rz f20814G = new C1957rz();

    @Override // com.google.android.gms.internal.ads.AbstractC2217wz
    public final AbstractC2217wz a(C2064u1 c2064u1) {
        return f20814G;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2217wz
    public final Object b() {
        return HttpUrl.FRAGMENT_ENCODE_SET;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
