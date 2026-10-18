package com.google.ads.interactivemedia.v3.internal;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzyg {
    public static zzvw zza(zzacc zzaccVar) {
        boolean z7;
        try {
            try {
                zzaccVar.zzr();
                z7 = false;
                try {
                    return (zzvw) zzabh.zzV.read(zzaccVar);
                } catch (EOFException e8) {
                    e = e8;
                    if (z7) {
                        return zzvy.zza;
                    }
                    throw new zzwe(e);
                }
            } catch (zzacf e9) {
                throw new zzwe(e9);
            } catch (IOException e10) {
                throw new zzvx(e10);
            } catch (NumberFormatException e11) {
                throw new zzwe(e11);
            }
        } catch (EOFException e12) {
            e = e12;
            z7 = true;
        }
    }
}
