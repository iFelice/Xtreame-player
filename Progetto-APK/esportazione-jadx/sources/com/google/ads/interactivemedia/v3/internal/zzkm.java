package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class zzkm extends zzkx {
    public zzkm(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "WJxg1URLvX6rcpqRUIsbqvQQ1IP2DTbqCnO94k2HzDT20g/TX5PQfsUm+ZqlzVLQ", "LGTID+NGga+m4ngnAg8xV1SySs8i6u03pUOYhiZVnnQ=", zzanVar, i8, 73);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        try {
            int i8 = 1;
            boolean zBooleanValue = ((Boolean) this.zze.invoke(null, this.zza.zzb())).booleanValue();
            zzan zzanVar = this.zzd;
            if (true == zBooleanValue) {
                i8 = 2;
            }
            zzanVar.zzaf(i8);
        } catch (InvocationTargetException unused) {
            this.zzd.zzaf(3);
        }
    }
}
