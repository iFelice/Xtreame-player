package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzih extends zzig {
    private zzih(Context context, zzif zzifVar) {
        super(context, zzifVar);
    }

    public static zzih zzu(Context context, zzif zzifVar) {
        zzig.zzr(context, zzifVar);
        return new zzih(context, zzifVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzig
    public final List zzo(zzjj zzjjVar, Context context, zzan zzanVar, zzy zzyVar) {
        if (zzjjVar.zzk() == null || !((zzig) this).zzu.zza) {
            return super.zzo(zzjjVar, context, zzanVar, null);
        }
        int iZza = zzjjVar.zza();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzo(zzjjVar, context, zzanVar, null));
        arrayList.add(new zzkb(zzjjVar, "CgPRYuzQrSKB4HHU/qweoT6whjRKh5s88SYFeVTlix/HzZdKOZnoIu1auPhHwMiw", "UcPRGM0BZSE4Gd9/Us196LnIBiXWDE9D3TOlCfboVSQ=", zzanVar, iZza, 24));
        return arrayList;
    }
}
