package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class K6 implements InterfaceC2028tH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final K6 f14302a = new K6();

    @Override // com.google.android.gms.internal.ads.InterfaceC2028tH
    public final boolean zza(int i8) {
        L6 l8;
        if (i8 == 0) {
            l8 = L6.UNSPECIFIED;
        } else if (i8 == 1) {
            l8 = L6.CONNECTING;
        } else if (i8 == 2) {
            l8 = L6.CONNECTED;
        } else if (i8 == 3) {
            l8 = L6.DISCONNECTING;
        } else if (i8 != 4) {
            l8 = i8 != 5 ? null : L6.SUSPENDED;
        } else {
            l8 = L6.DISCONNECTED;
        }
        return l8 != null;
    }
}
