package com.google.ads.interactivemedia.v3.internal;

import J3.f;
import R3.b;
import R3.c;
import R3.d;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzll extends d {
    private static final zzll zza = new zzll();

    private zzll() {
        super("com.google.android.gms.ads.adshield.AdShieldCreatorImpl");
    }

    public static zzlo zza(Context context, Executor executor, zzm zzmVar) {
        zzlo zzloVarZzb = null;
        if (zzmVar.zzk() && f.f4145b.c(context, 12800000) == 0) {
            zzloVarZzb = zza.zzb(context, executor, zzmVar);
        }
        return zzloVarZzb == null ? new zzlk(context, executor, zzmVar) : zzloVarZzb;
    }

    private final zzlo zzb(Context context, Executor executor, zzm zzmVar) {
        try {
            IBinder iBinderZze = ((zzlp) getRemoteCreatorInstance(context)).zze(new b(context), new b(executor), zzmVar.zzav());
            if (iBinderZze == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
            return iInterfaceQueryLocalInterface instanceof zzlo ? (zzlo) iInterfaceQueryLocalInterface : new zzlm(iBinderZze);
        } catch (c | RemoteException | IllegalArgumentException | LinkageError unused) {
            return null;
        }
    }

    @Override // R3.d
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.adshield.internal.IAdShieldCreator");
        return iInterfaceQueryLocalInterface instanceof zzlp ? (zzlp) iInterfaceQueryLocalInterface : new zzlp(iBinder);
    }
}
