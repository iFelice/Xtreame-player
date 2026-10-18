package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzzf extends zzwj {
    private static final zzwk zza = zzb(2);
    private final int zzb;

    private zzzf(int i8) {
        this.zzb = i8;
    }

    public static zzwk zza(int i8) {
        return i8 == 2 ? zza : zzb(i8);
    }

    private static zzwk zzb(int i8) {
        return new zzze(new zzzf(i8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        int iZzr = zzaccVar.zzr();
        int i8 = iZzr - 1;
        if (i8 == 5 || i8 == 6) {
            return zzwh.zza(this.zzb, zzaccVar);
        }
        if (i8 != 8) {
            throw new zzwe(U2.m("Expecting number, got: ", zzacd.zza(iZzr), "; at path ", zzaccVar.zze()));
        }
        zzaccVar.zzm();
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        zzaceVar.zzk((Number) obj);
    }
}
