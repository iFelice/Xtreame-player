package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum L6 implements InterfaceC1976sH {
    UNSPECIFIED(0),
    CONNECTING(1),
    CONNECTED(2),
    DISCONNECTING(3),
    DISCONNECTED(4),
    SUSPENDED(5);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f14475G;

    L6(int i8) {
        this.f14475G = i8;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f14475G);
    }
}
