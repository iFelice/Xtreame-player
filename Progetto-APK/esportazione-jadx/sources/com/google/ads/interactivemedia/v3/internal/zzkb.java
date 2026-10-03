package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;
import p075j3.b;

/* JADX INFO: loaded from: classes.dex */
public final class zzkb extends zzkx {
    public zzkb(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "CgPRYuzQrSKB4HHU/qweoT6whjRKh5s88SYFeVTlix/HzZdKOZnoIu1auPhHwMiw", "UcPRGM0BZSE4Gd9/Us196LnIBiXWDE9D3TOlCfboVSQ=", zzanVar, i8, 24);
    }

    private final void zzc() {
        b bVarZzh = this.zza.zzh();
        if (bVarZzh == null) {
            return;
        }
        try {
            p075j3.a aVarF = bVarZzh.f();
            String strZza = aVarF.f25695a;
            int i8 = zzjm.zza;
            if (strZza != null && strZza.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID uuidFromString = UUID.fromString(strZza);
                byte[] bArr = new byte[16];
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
                byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
                strZza = zzgl.zza(bArr, true);
            }
            if (strZza != null) {
                synchronized (this.zzd) {
                    try {
                        this.zzd.zzs(strZza);
                        this.zzd.zzr(aVarF.f25696b);
                        this.zzd.zzab(6);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zze();
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        if (this.zza.zzq()) {
            zzc();
            return;
        }
        synchronized (this.zzd) {
            this.zzd.zzs((String) this.zze.invoke(null, this.zza.zzb()));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final Void zze() {
        if (this.zza.zzr()) {
            super.zze();
            return null;
        }
        if (this.zza.zzq()) {
            zzc();
        }
        return null;
    }
}
