package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class Gy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iy f13669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13670b = true;

    public Gy(Iy iy) {
        this.f13669a = iy;
    }

    public static Gy a(Context context, String str) {
        Iy hy;
        try {
            try {
                try {
                    IBinder iBinderB = S3.c.c(context, S3.c.f6415b, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (iBinderB == null) {
                        hy = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        hy = iInterfaceQueryLocalInterface instanceof Iy ? (Iy) iInterfaceQueryLocalInterface : new Hy(iBinderB, "com.google.android.gms.gass.internal.clearcut.IGassClearcut", 0);
                    }
                    hy.G(new R3.b(context), str);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new Gy(hy);
                } catch (Exception e8) {
                    throw new C2164vy(e8);
                }
            } catch (RemoteException | C2164vy | NullPointerException | SecurityException unused) {
                Log.d("GASS", "Cannot dynamite load clearcut");
                return new Gy(new Jy());
            }
        } catch (Exception e9) {
            throw new C2164vy(e9);
        }
    }
}
