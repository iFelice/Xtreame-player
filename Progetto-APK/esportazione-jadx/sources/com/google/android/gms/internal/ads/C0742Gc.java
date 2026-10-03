package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.AbstractC0631g;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Gc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0742Gc extends AbstractC0631g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13560a;

    /* JADX WARN: Illegal instructions before constructor call */
    public C0742Gc(Context context, Looper looper, InterfaceC0626b interfaceC0626b, InterfaceC0627c interfaceC0627c, int i8) {
        this.f13560a = i8;
        if (i8 == 1) {
            super(context, looper, 93, interfaceC0626b, interfaceC0627c);
        } else {
            Context applicationContext = context.getApplicationContext();
            super(applicationContext != null ? applicationContext : context, looper, 8, interfaceC0626b, interfaceC0627c);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        switch (this.f13560a) {
            case 0:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsService");
                return iInterfaceQueryLocalInterface instanceof InterfaceC0847Nc ? (InterfaceC0847Nc) iInterfaceQueryLocalInterface : new C0832Mc(iBinder, "com.google.android.gms.ads.internal.request.IAdsService", 0);
            default:
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface2 = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                return iInterfaceQueryLocalInterface2 instanceof p021c4.G ? (p021c4.G) iInterfaceQueryLocalInterface2 : new p021c4.F(iBinder);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        switch (this.f13560a) {
            case 1:
                return 12451000;
            default:
                return super.getMinApkVersion();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        switch (this.f13560a) {
            case 0:
                return "com.google.android.gms.ads.internal.request.IAdsService";
            default:
                return "com.google.android.gms.measurement.internal.IMeasurementService";
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        switch (this.f13560a) {
            case 0:
                return "com.google.android.gms.ads.service.ADS";
            default:
                return "com.google.android.gms.measurement.START";
        }
    }
}
