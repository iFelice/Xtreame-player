package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;

/* JADX INFO: loaded from: classes.dex */
public final class zzoo extends zzlr {
    private final int zze;

    public zzoo(Context context, Looper looper, InterfaceC0626b interfaceC0626b, InterfaceC0627c interfaceC0627c, int i8) {
        super(context, looper, 116, interfaceC0626b, interfaceC0627c, null);
        this.zze = i8;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return iInterfaceQueryLocalInterface instanceof zzot ? (zzot) iInterfaceQueryLocalInterface : new zzot(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return this.zze;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.gass.START";
    }

    public final zzot zzp() {
        return (zzot) getService();
    }
}
