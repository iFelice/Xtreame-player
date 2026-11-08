package com.google.ads.interactivemedia.v3.internal;

import R3.b;
import S3.c;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class zzpj {
    final zzpm zza;
    final boolean zzb;

    private zzpj(zzpm zzpmVar) {
        this.zza = zzpmVar;
        this.zzb = zzpmVar != null;
    }

    public static zzpj zzb(Context context, String str, String str2) {
        zzpm zzpkVar;
        try {
            try {
                try {
                    IBinder iBinderB = c.c(context, c.f6415b, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (iBinderB == null) {
                        zzpkVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzpkVar = iInterfaceQueryLocalInterface instanceof zzpm ? (zzpm) iInterfaceQueryLocalInterface : new zzpk(iBinderB);
                    }
                    zzpkVar.zze(new b(context), str, null);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new zzpj(zzpkVar);
                } catch (Exception e8) {
                    throw new zzon(e8);
                }
            } catch (RemoteException | zzon | NullPointerException | SecurityException unused) {
                Log.d("GASS", "Cannot dynamite load clearcut");
                return new zzpj(new zzpn());
            }
        } catch (Exception e9) {
            throw new zzon(e9);
        }
    }

    public static zzpj zzc() {
        zzpn zzpnVar = new zzpn();
        Log.d("GASS", "Clearcut logging disabled");
        return new zzpj(zzpnVar);
    }

    public final zzpi zza(byte[] bArr) {
        return new zzpi(this, bArr, null);
    }
}
