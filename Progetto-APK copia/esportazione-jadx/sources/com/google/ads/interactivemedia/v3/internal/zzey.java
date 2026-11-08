package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzey implements zzex {
    @Override // com.google.ads.interactivemedia.v3.internal.zzex
    public final boolean zza(zzew zzewVar, Context context, boolean z7, boolean z8) {
        String packageName = context.getApplicationContext().getPackageName();
        List list = zzewVar.zzd;
        return (list == null || !list.contains(packageName)) && !z7 && z8;
    }
}
