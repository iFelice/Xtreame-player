package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.n6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1706n6 extends p083k3.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20070a;

    /* JADX WARN: Illegal instructions before constructor call */
    public C1706n6(Context context, Looper looper, InterfaceC0626b interfaceC0626b, InterfaceC0627c interfaceC0627c, int i8) {
        this.f20070a = i8;
        if (i8 == 1) {
            int i9 = AbstractC1159cd.f18227a;
            Context applicationContext = context.getApplicationContext();
            super(applicationContext == null ? context : applicationContext, looper, 166, interfaceC0626b, interfaceC0627c);
        } else if (i8 != 2) {
            int i10 = AbstractC1159cd.f18227a;
            Context applicationContext2 = context.getApplicationContext();
            super(applicationContext2 == null ? context : applicationContext2, looper, 123, interfaceC0626b, interfaceC0627c);
        } else {
            int i11 = AbstractC1159cd.f18227a;
            Context applicationContext3 = context.getApplicationContext();
            super(applicationContext3 == null ? context : applicationContext3, looper, 8, interfaceC0626b, interfaceC0627c);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        switch (this.f20070a) {
            case 0:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
                return iInterfaceQueryLocalInterface instanceof C1810p6 ? (C1810p6) iInterfaceQueryLocalInterface : new C1810p6(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService", 0);
            case 1:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface2 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
                return iInterfaceQueryLocalInterface2 instanceof C1156ca ? (C1156ca) iInterfaceQueryLocalInterface2 : new C1156ca(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService", 0);
            default:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface3 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
                return iInterfaceQueryLocalInterface3 instanceof InterfaceC0817Lc ? (InterfaceC0817Lc) iInterfaceQueryLocalInterface3 : new C0802Kc(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService", 0);
        }
    }

    public final boolean d() {
        J3.d[] availableFeatures = getAvailableFeatures();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue()) {
            J3.d dVar = p043f3.s.f25200a;
            int length = availableFeatures != null ? availableFeatures.length : 0;
            for (int i8 = 0; i8 < length; i8++) {
                if (U4.a.c(availableFeatures[i8], dVar)) {
                    if (i8 >= 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final J3.d[] getApiFeatures() {
        switch (this.f20070a) {
            case 0:
                return p043f3.s.f25201b;
            default:
                return super.getApiFeatures();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        switch (this.f20070a) {
            case 0:
                return "com.google.android.gms.ads.internal.cache.ICacheService";
            case 1:
                return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
            default:
                return "com.google.android.gms.ads.internal.request.IAdRequestService";
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        switch (this.f20070a) {
            case 0:
                return "com.google.android.gms.ads.service.CACHE";
            case 1:
                return "com.google.android.gms.ads.service.HTTP";
            default:
                return "com.google.android.gms.ads.service.START";
        }
    }
}
