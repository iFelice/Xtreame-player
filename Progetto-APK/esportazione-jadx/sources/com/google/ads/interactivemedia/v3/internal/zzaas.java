package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.IOException;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
final class zzaas extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        BitSet bitSet = new BitSet();
        zzaccVar.zzi();
        int iZzr = zzaccVar.zzr();
        int i8 = 0;
        while (iZzr != 2) {
            int i9 = iZzr - 1;
            if (i9 == 5 || i9 == 6) {
                int iZzb = zzaccVar.zzb();
                if (iZzb != 0) {
                    if (iZzb != 1) {
                        throw new zzwe("Invalid bitset value " + iZzb + ", expected 0 or 1; at path " + zzaccVar.zzf());
                    }
                    bitSet.set(i8);
                } else {
                    continue;
                }
            } else {
                if (i9 != 7) {
                    throw new zzwe(U2.m("Invalid bitset value type: ", zzacd.zza(iZzr), "; at path ", zzaccVar.zze()));
                }
                if (zzaccVar.zzq()) {
                    bitSet.set(i8);
                }
            }
            i8++;
            iZzr = zzaccVar.zzr();
        }
        zzaccVar.zzk();
        return bitSet;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        BitSet bitSet = (BitSet) obj;
        zzaceVar.zzb();
        int length = bitSet.length();
        for (int i8 = 0; i8 < length; i8++) {
            zzaceVar.zzi(bitSet.get(i8) ? 1L : 0L);
        }
        zzaceVar.zzd();
    }
}
