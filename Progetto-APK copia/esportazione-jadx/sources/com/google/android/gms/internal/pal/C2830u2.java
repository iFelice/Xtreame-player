package com.google.android.gms.internal.pal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.AbstractC0636l;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.u2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2830u2 extends AbstractC0636l {
    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        int i8 = AbstractBinderC2791p2.f23980H;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.signalsdk.ISignalSdkService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC2799q2 ? (InterfaceC2799q2) iInterfaceQueryLocalInterface : new C2783o2(iBinder, "com.google.android.gms.ads.signalsdk.ISignalSdkService", 5);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final J3.d[] getApiFeatures() {
        return AbstractC2864y4.f24079I;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return 17108000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.signalsdk.ISignalSdkService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.SDK_SIGNAL";
    }
}
