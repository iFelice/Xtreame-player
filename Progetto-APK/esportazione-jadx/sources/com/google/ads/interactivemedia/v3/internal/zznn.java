package com.google.ads.interactivemedia.v3.internal;

import J3.d;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.AbstractC0636l;
import com.google.android.gms.common.internal.C0633i;

/* JADX INFO: loaded from: classes.dex */
public final class zznn extends AbstractC0636l {
    public zznn(Context context, Looper looper, C0633i c0633i, k kVar, l lVar) {
        super(context, looper, 203, c0633i, kVar, lVar);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        return zzmz.zzb(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final d[] getApiFeatures() {
        return zzpo.zzc;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return 17108000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.signalsdk.ISignalSdkService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.SDK_SIGNAL";
    }
}
