package com.google.android.gms.internal.pal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.AbstractC0631g;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.x2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2854x2 extends AbstractC0631g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24062a;

    public C2854x2(Context context, Looper looper, InterfaceC0626b interfaceC0626b, InterfaceC0627c interfaceC0627c) {
        super(context, looper, 116, interfaceC0626b, interfaceC0627c);
        this.f24062a = 9200000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return iInterfaceQueryLocalInterface instanceof B2 ? (B2) iInterfaceQueryLocalInterface : new B2(iBinder, "com.google.android.gms.gass.internal.IGassService", 5);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return this.f24062a;
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
