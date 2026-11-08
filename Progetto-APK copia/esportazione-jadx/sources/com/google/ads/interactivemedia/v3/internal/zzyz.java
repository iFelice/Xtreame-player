package com.google.ads.interactivemedia.v3.internal;

import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzyz extends zzacc {
    private static final Reader zzb = new zzyy();
    private static final Object zzc = new Object();
    private Object[] zzd;
    private int zze;
    private String[] zzf;
    private int[] zzg;

    public zzyz(zzvw zzvwVar) {
        super(zzb);
        this.zzd = new Object[32];
        this.zze = 0;
        this.zzf = new String[32];
        this.zzg = new int[32];
        zzD(zzvwVar);
    }

    private final String zzA(boolean z7) {
        StringBuilder sb = new StringBuilder("$");
        int i8 = 0;
        while (true) {
            int i9 = this.zze;
            if (i8 >= i9) {
                return sb.toString();
            }
            Object[] objArr = this.zzd;
            Object obj = objArr[i8];
            if (obj instanceof zzvu) {
                i8++;
                if (i8 < i9 && (objArr[i8] instanceof Iterator)) {
                    int i10 = this.zzg[i8];
                    if (z7 && i10 > 0 && (i8 == i9 - 1 || i8 == i9 - 2)) {
                        i10--;
                    }
                    sb.append('[');
                    sb.append(i10);
                    sb.append(']');
                }
            } else if ((obj instanceof zzvz) && (i8 = i8 + 1) < i9 && (objArr[i8] instanceof Iterator)) {
                sb.append('.');
                String str = this.zzf[i8];
                if (str != null) {
                    sb.append(str);
                }
            }
            i8++;
        }
    }

    private final String zzB() {
        return " at path ".concat(zzA(false));
    }

    private final String zzC(boolean z7) {
        zzE(5);
        Map.Entry entry = (Map.Entry) ((Iterator) zzy()).next();
        String str = (String) entry.getKey();
        this.zzf[this.zze - 1] = true != z7 ? str : "<skipped>";
        zzD(entry.getValue());
        return str;
    }

    private final void zzD(Object obj) {
        int i8 = this.zze;
        Object[] objArr = this.zzd;
        if (i8 == objArr.length) {
            int i9 = i8 + i8;
            this.zzd = Arrays.copyOf(objArr, i9);
            this.zzg = Arrays.copyOf(this.zzg, i9);
            this.zzf = (String[]) Arrays.copyOf(this.zzf, i9);
        }
        Object[] objArr2 = this.zzd;
        int i10 = this.zze;
        this.zze = i10 + 1;
        objArr2[i10] = obj;
    }

    private final void zzE(int i8) {
        if (zzr() == i8) {
            return;
        }
        throw new IllegalStateException("Expected " + zzacd.zza(i8) + " but was " + zzacd.zza(zzr()) + zzB());
    }

    private final Object zzy() {
        return this.zzd[this.zze - 1];
    }

    private final Object zzz() {
        Object[] objArr = this.zzd;
        int i8 = this.zze - 1;
        this.zze = i8;
        Object obj = objArr[i8];
        objArr[i8] = null;
        return obj;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zzd = new Object[]{zzc};
        this.zze = 1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final String toString() {
        return "zzyz".concat(zzB());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final double zza() throws zzacf {
        int iZzr = zzr();
        if (iZzr != 7 && iZzr != 6) {
            throw new IllegalStateException("Expected NUMBER but was " + zzacd.zza(iZzr) + zzB());
        }
        double dZza = ((zzwb) zzy()).zza();
        if (!zzx() && (Double.isNaN(dZza) || Double.isInfinite(dZza))) {
            throw new zzacf("JSON forbids NaN and infinities: " + dZza);
        }
        zzz();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
        return dZza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final int zzb() throws zzacf {
        int iZzr = zzr();
        if (iZzr != 7 && iZzr != 6) {
            throw new IllegalStateException("Expected NUMBER but was " + zzacd.zza(iZzr) + zzB());
        }
        int iZzb = ((zzwb) zzy()).zzb();
        zzz();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
        return iZzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final long zzc() throws zzacf {
        int iZzr = zzr();
        if (iZzr != 7 && iZzr != 6) {
            throw new IllegalStateException("Expected NUMBER but was " + zzacd.zza(iZzr) + zzB());
        }
        long jZzc = ((zzwb) zzy()).zzc();
        zzz();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
        return jZzc;
    }

    public final zzvw zzd() throws zzacf {
        int iZzr = zzr();
        if (iZzr != 5 && iZzr != 2 && iZzr != 4 && iZzr != 10) {
            zzvw zzvwVar = (zzvw) zzy();
            zzo();
            return zzvwVar;
        }
        throw new IllegalStateException("Unexpected " + zzacd.zza(iZzr) + " when reading a JsonElement.");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final String zze() {
        return zzA(false);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final String zzf() {
        return zzA(true);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final String zzg() {
        return zzC(false);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final String zzh() throws zzacf {
        int iZzr = zzr();
        if (iZzr != 6 && iZzr != 7) {
            throw new IllegalStateException("Expected STRING but was " + zzacd.zza(iZzr) + zzB());
        }
        String strZze = ((zzwb) zzz()).zze();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
        return strZze;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final void zzi() {
        zzE(1);
        zzD(((zzvu) zzy()).iterator());
        this.zzg[this.zze - 1] = 0;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final void zzj() {
        zzE(3);
        zzD(((zzvz) zzy()).zza().iterator());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final void zzk() {
        zzE(2);
        zzz();
        zzz();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final void zzl() {
        zzE(4);
        this.zzf[this.zze - 1] = null;
        zzz();
        zzz();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final void zzm() {
        zzE(9);
        zzz();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
    }

    public final void zzn() {
        zzE(5);
        Map.Entry entry = (Map.Entry) ((Iterator) zzy()).next();
        zzD(entry.getValue());
        zzD(new zzwb((String) entry.getKey()));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final void zzo() {
        int iZzr = zzr() - 1;
        if (iZzr == 1) {
            zzk();
            return;
        }
        if (iZzr != 9) {
            if (iZzr == 3) {
                zzl();
                return;
            }
            if (iZzr == 4) {
                zzC(true);
                return;
            }
            zzz();
            int i8 = this.zze;
            if (i8 > 0) {
                int[] iArr = this.zzg;
                int i9 = i8 - 1;
                iArr[i9] = iArr[i9] + 1;
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final boolean zzp() throws zzacf {
        int iZzr = zzr();
        return (iZzr == 4 || iZzr == 2 || iZzr == 10) ? false : true;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final boolean zzq() {
        zzE(8);
        boolean zZzh = ((zzwb) zzz()).zzh();
        int i8 = this.zze;
        if (i8 > 0) {
            int[] iArr = this.zzg;
            int i9 = i8 - 1;
            iArr[i9] = iArr[i9] + 1;
        }
        return zZzh;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacc
    public final int zzr() throws zzacf {
        if (this.zze == 0) {
            return 10;
        }
        Object objZzy = zzy();
        if (objZzy instanceof Iterator) {
            boolean z7 = this.zzd[this.zze - 2] instanceof zzvz;
            Iterator it = (Iterator) objZzy;
            if (!it.hasNext()) {
                return z7 ? 4 : 2;
            }
            if (z7) {
                return 5;
            }
            zzD(it.next());
            return zzr();
        }
        if (objZzy instanceof zzvz) {
            return 3;
        }
        if (objZzy instanceof zzvu) {
            return 1;
        }
        if (!(objZzy instanceof zzwb)) {
            if (objZzy instanceof zzvy) {
                return 9;
            }
            if (objZzy == zzc) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new zzacf(r.g("Custom JsonElement subclass ", objZzy.getClass().getName(), " is not supported"));
        }
        zzwb zzwbVar = (zzwb) objZzy;
        if (zzwbVar.zzk()) {
            return 6;
        }
        if (zzwbVar.zzi()) {
            return 8;
        }
        if (zzwbVar.zzj()) {
            return 7;
        }
        throw new AssertionError();
    }
}
