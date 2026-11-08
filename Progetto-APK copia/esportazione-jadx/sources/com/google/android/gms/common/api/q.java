package com.google.android.gms.common.api;

/* JADX INFO: loaded from: classes.dex */
public final class q extends UnsupportedOperationException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final J3.d f11777G;

    public q(J3.d dVar) {
        this.f11777G = dVar;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return "Missing ".concat(String.valueOf(this.f11777G));
    }
}
