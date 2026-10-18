package com.google.ads.interactivemedia.v3.internal;

import java.io.File;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzhv implements zzpc {
    final /* synthetic */ zzno zza;

    public zzhv(zzhx zzhxVar, zzno zznoVar) {
        this.zza = zznoVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzpc
    public final boolean zza(File file) {
        try {
            return this.zza.zza(file);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}
