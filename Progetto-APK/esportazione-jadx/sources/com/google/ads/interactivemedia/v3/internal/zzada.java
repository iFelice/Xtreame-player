package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzada {
    public static final /* synthetic */ int zzd = 0;
    private static volatile int zze = 100;
    int zza;
    final int zzb = zze;
    zzadb zzc;

    private zzada() {
    }

    public static int zzC(int i8) {
        return (i8 >>> 1) ^ (-(i8 & 1));
    }

    public static long zzD(long j8) {
        return (j8 >>> 1) ^ (-(1 & j8));
    }

    public static zzada zzE(byte[] bArr, int i8, int i9, boolean z7) {
        zzacy zzacyVar = new zzacy(bArr, i8, i9, z7, null);
        try {
            zzacyVar.zzd(i9);
            return zzacyVar;
        } catch (zzaeg e8) {
            throw new IllegalArgumentException(e8);
        }
    }

    public abstract boolean zzA();

    public abstract boolean zzB();

    public abstract double zza();

    public abstract float zzb();

    public abstract int zzc();

    public abstract int zzd(int i8);

    public abstract int zze();

    public abstract int zzf();

    public abstract int zzg();

    public abstract int zzj();

    public abstract int zzk();

    public abstract int zzl();

    public abstract int zzm();

    public abstract long zzn();

    public abstract long zzo();

    public abstract long zzs();

    public abstract long zzt();

    public abstract long zzu();

    public abstract zzacw zzv();

    public abstract String zzw();

    public abstract String zzx();

    public abstract void zzy(int i8);

    public abstract void zzz(int i8);

    public /* synthetic */ zzada(zzacz zzaczVar) {
    }
}
