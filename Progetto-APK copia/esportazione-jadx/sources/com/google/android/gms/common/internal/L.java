package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes.dex */
public final class L extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final J3.b f11802G;

    public L(J3.b bVar) {
        com.bumptech.glide.c.a("ResolvableConnectionException can only be created with a connection result containing a resolution.", (bVar.f4133H == 0 || bVar.f4134I == null) ? false : true);
        this.f11802G = bVar;
    }
}
