package com.google.ads.interactivemedia.v3.internal;

import android.os.AsyncTask;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzeb extends AsyncTask {
    private zzec zza;
    protected final zzdt zzd;

    public zzeb(zzdt zzdtVar) {
        this.zzd = zzdtVar;
    }

    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        zzec zzecVar = this.zza;
        if (zzecVar != null) {
            zzecVar.zza(this);
        }
    }

    public final void zzb(zzec zzecVar) {
        this.zza = zzecVar;
    }
}
