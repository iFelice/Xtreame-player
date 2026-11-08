package com.google.ads.interactivemedia.v3.impl;

import J3.d;
import K3.AbstractC0245s;
import K3.InterfaceC0243p;
import K3.r;
import android.content.Context;
import com.google.ads.interactivemedia.v3.internal.zznf;
import com.google.ads.interactivemedia.v3.internal.zzng;
import com.google.ads.interactivemedia.v3.internal.zznm;
import com.google.ads.interactivemedia.v3.internal.zzpo;
import com.google.android.gms.internal.ads.Cw;
import com.google.api.Endpoint;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p052g4.h;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
final class zzbr implements zzbq {
    private final zznf zza;
    private final com.google.ads.interactivemedia.v3.impl.data.zzbn zzb;

    public zzbr(Context context, com.google.ads.interactivemedia.v3.impl.data.zzbn zzbnVar) {
        this.zza = new zznm(context);
        this.zzb = zzbnVar;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzbq
    public final com.google.ads.interactivemedia.v3.impl.data.zzbz zza(com.google.ads.interactivemedia.v3.impl.data.zzby zzbyVar) {
        h hVarDoRead;
        try {
            com.google.ads.interactivemedia.v3.impl.data.zzbx zzbxVarRequestType = zzbyVar.requestType();
            com.google.ads.interactivemedia.v3.impl.data.zzbx zzbxVar = com.google.ads.interactivemedia.v3.impl.data.zzbx.GET;
            final int i8 = zzbxVarRequestType == zzbxVar ? 0 : 1;
            final String strUrl = zzbyVar.url();
            final String strContent = zzbyVar.content();
            if (strUrl != null && (zzbxVarRequestType == zzbxVar || strContent != null)) {
                zznf zznfVar = this.zza;
                if (this.zzb.isLimitedAdTracking()) {
                    hVarDoRead = Cw.j(new zzng(8));
                } else {
                    r rVarA = AbstractC0245s.a();
                    rVarA.f4571d = new d[]{zzpo.zzb};
                    rVarA.f4569b = false;
                    final zznm zznmVar = (zznm) zznfVar;
                    rVarA.f4570c = new InterfaceC0243p() { // from class: com.google.ads.interactivemedia.v3.internal.zznh
                        @Override // K3.InterfaceC0243p
                        public final void accept(Object obj, Object obj2) {
                            ((zzna) ((zznn) obj).getService()).zze(new zznb(strUrl, i8, strContent), new zznl(zznmVar, (i) obj2));
                        }
                    };
                    hVarDoRead = ((zznm) zznfVar).doRead(rVarA.a());
                }
                return com.google.ads.interactivemedia.v3.impl.data.zzbz.forResponse(zzbyVar.id(), (String) Cw.b(hVarDoRead, zzbyVar.connectionTimeoutMs() + zzbyVar.readTimeoutMs(), TimeUnit.MILLISECONDS));
            }
            return com.google.ads.interactivemedia.v3.impl.data.zzbz.forError(zzbyVar.id(), 100);
        } catch (InterruptedException | TimeoutException unused) {
            return com.google.ads.interactivemedia.v3.impl.data.zzbz.forError(zzbyVar.id(), Endpoint.TARGET_FIELD_NUMBER);
        } catch (ExecutionException e8) {
            Throwable cause = e8.getCause();
            if (cause instanceof zzng) {
                return com.google.ads.interactivemedia.v3.impl.data.zzbz.forError(zzbyVar.id(), ((zzng) cause).zza());
            }
            return cause instanceof com.google.android.gms.common.api.h ? com.google.ads.interactivemedia.v3.impl.data.zzbz.forError(zzbyVar.id(), 102) : com.google.ads.interactivemedia.v3.impl.data.zzbz.forError(zzbyVar.id(), 100);
        }
    }
}
