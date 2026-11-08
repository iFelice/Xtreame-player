package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2268xy extends p083k3.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f21963a;

    public C2268xy(Context context, Looper looper, InterfaceC0626b interfaceC0626b, InterfaceC0627c interfaceC0627c, int i8) {
        super(context, looper, 116, interfaceC0626b, interfaceC0627c);
        this.f21963a = i8;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return iInterfaceQueryLocalInterface instanceof Ay ? (Ay) iInterfaceQueryLocalInterface : new Ay(iBinder, "com.google.android.gms.gass.internal.IGassService", 0);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return this.f21963a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.gass.START";
    }
}
