package com.google.android.gms.internal.pal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.d2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2695d2 extends R3.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2695d2 f23775a = new C2695d2("com.google.android.gms.ads.adshield.AdShieldCreatorImpl");

    @Override // R3.d
    public final Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.adshield.internal.IAdShieldCreator");
        return iInterfaceQueryLocalInterface instanceof C2719g2 ? (C2719g2) iInterfaceQueryLocalInterface : new C2719g2(iBinder, "com.google.android.gms.ads.adshield.internal.IAdShieldCreator", 5);
    }
}
