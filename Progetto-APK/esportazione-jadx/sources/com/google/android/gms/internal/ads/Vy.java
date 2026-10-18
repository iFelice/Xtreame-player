package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class Vy extends GB {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Object f17140N;

    @Override // com.google.android.gms.internal.ads.GB
    public final String d() {
        Object obj = this.f17140N;
        return obj == null ? HttpUrl.FRAGMENT_ENCODE_SET : obj.toString();
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final void e() {
        this.f17140N = null;
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final boolean f(Object obj) {
        return super.f(obj);
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final boolean g(Throwable th) {
        return super.g(th);
    }
}
