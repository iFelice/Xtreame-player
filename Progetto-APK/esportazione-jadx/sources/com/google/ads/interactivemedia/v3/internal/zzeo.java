package com.google.ads.interactivemedia.v3.internal;

import android.net.Uri;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.protobuf.U2;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
final class zzeo extends zzfe {
    private final Uri zza;
    private final TestingConfiguration zzb;
    private final com.google.ads.interactivemedia.v3.impl.zzba zzc;
    private final zzahj zzd;
    private final ExecutorService zze;
    private final zzfl zzf;

    public zzeo(Uri uri, TestingConfiguration testingConfiguration, com.google.ads.interactivemedia.v3.impl.zzba zzbaVar, zzahj zzahjVar, ExecutorService executorService, zzfl zzflVar) {
        if (uri == null) {
            throw new NullPointerException("Null javaScriptNativeBridgeUri");
        }
        this.zza = uri;
        this.zzb = testingConfiguration;
        this.zzc = zzbaVar;
        if (zzahjVar == null) {
            throw new NullPointerException("Null latencyEventsBuilder");
        }
        this.zzd = zzahjVar;
        if (executorService == null) {
            throw new NullPointerException("Null executorService");
        }
        this.zze = executorService;
        this.zzf = zzflVar;
    }

    public final boolean equals(Object obj) {
        TestingConfiguration testingConfiguration;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfe) {
            zzfe zzfeVar = (zzfe) obj;
            if (this.zza.equals(zzfeVar.zza()) && ((testingConfiguration = this.zzb) != null ? testingConfiguration.equals(zzfeVar.zzc()) : zzfeVar.zzc() == null) && this.zzc.equals(zzfeVar.zzb()) && this.zzd.equals(zzfeVar.zze()) && this.zze.equals(zzfeVar.zzf()) && this.zzf.equals(zzfeVar.zzd())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        TestingConfiguration testingConfiguration = this.zzb;
        return (((((((((iHashCode * 1000003) ^ (testingConfiguration == null ? 0 : testingConfiguration.hashCode())) * 1000003) ^ this.zzc.hashCode()) * 1000003) ^ this.zzd.hashCode()) * 1000003) ^ this.zze.hashCode()) * 1000003) ^ this.zzf.hashCode();
    }

    public final String toString() {
        zzfl zzflVar = this.zzf;
        ExecutorService executorService = this.zze;
        zzahj zzahjVar = this.zzd;
        com.google.ads.interactivemedia.v3.impl.zzba zzbaVar = this.zzc;
        TestingConfiguration testingConfiguration = this.zzb;
        String string = this.zza.toString();
        String strValueOf = String.valueOf(testingConfiguration);
        String string2 = zzbaVar.toString();
        String string3 = zzahjVar.toString();
        String string4 = executorService.toString();
        String string5 = zzflVar.toString();
        StringBuilder sbQ = U2.q("JsComponent{javaScriptNativeBridgeUri=", string, ", testingConfiguration=", strValueOf, ", jsMessageRouter=");
        p148t.a.h(sbQ, string2, ", latencyEventsBuilder=", string3, ", executorService=");
        sbQ.append(string4);
        sbQ.append(", omidInitializer=");
        sbQ.append(string5);
        sbQ.append("}");
        return sbQ.toString();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzfe
    public final Uri zza() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzfe
    public final com.google.ads.interactivemedia.v3.impl.zzba zzb() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzfe
    public final TestingConfiguration zzc() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzfe
    public final zzfl zzd() {
        return this.zzf;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzfe
    public final zzahj zze() {
        return this.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzfe
    public final ExecutorService zzf() {
        return this.zze;
    }
}
