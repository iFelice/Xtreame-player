package com.google.ads.interactivemedia.v3.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;

/* JADX INFO: loaded from: classes.dex */
public final class zzhx implements zzia {
    private static zzhx zzb;
    private final Context zzc;
    private final zzow zzd;
    private final zzpd zze;
    private final zzpf zzf;
    private final zzjd zzg;
    private final zznt zzh;
    private final Executor zzi;
    private final zzpc zzj;
    private final zzjs zzl;
    private final zzjk zzm;
    private volatile boolean zzo;
    private volatile boolean zzp;
    private final int zzq;
    volatile long zza = 0;
    private final Object zzn = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    public zzhx(Context context, zznt zzntVar, zzow zzowVar, zzpd zzpdVar, zzpf zzpfVar, zzjd zzjdVar, Executor executor, zzno zznoVar, int i8, zzjs zzjsVar, zzjk zzjkVar, zzjb zzjbVar) {
        this.zzp = false;
        this.zzc = context;
        this.zzh = zzntVar;
        this.zzd = zzowVar;
        this.zze = zzpdVar;
        this.zzf = zzpfVar;
        this.zzg = zzjdVar;
        this.zzi = executor;
        this.zzq = i8;
        this.zzl = zzjsVar;
        this.zzm = zzjkVar;
        this.zzp = false;
        this.zzj = new zzhv(this, zznoVar);
    }

    public static synchronized zzhx zza(String str, Context context, boolean z7, boolean z8) {
        return zzb(str, context, Executors.newCachedThreadPool(), z7, z8);
    }

    @Deprecated
    public static synchronized zzhx zzb(String str, Context context, Executor executor, boolean z7, boolean z8) {
        try {
            if (zzb == null) {
                zznu zznuVarZzc = zznv.zzc();
                zznuVarZzc.zza(str);
                zznuVarZzc.zzg(z7);
                zznv zznvVarZzh = zznuVarZzc.zzh();
                zznt zzntVarZza = zznt.zza(context, executor, z8);
                zzim zzimVarZzc = ((Boolean) zzls.zzc().zza(zzmj.zzx)).booleanValue() ? zzim.zzc(context) : null;
                zzjs zzjsVarZzd = ((Boolean) zzls.zzc().zza(zzmj.zzy)).booleanValue() ? zzjs.zzd(context, executor) : null;
                zzjk zzjkVar = ((Boolean) zzls.zzc().zza(zzmj.zzp)).booleanValue() ? new zzjk() : null;
                zzjb zzjbVar = ((Boolean) zzls.zzc().zza(zzmj.zzs)).booleanValue() ? new zzjb() : null;
                zzok zzokVarZze = zzok.zze(context, executor, zzntVarZza, zznvVarZzh);
                zzjc zzjcVar = new zzjc(context);
                zzjd zzjdVar = new zzjd(zznvVarZzh, zzokVarZze, new zzjq(context, zzjcVar), zzjcVar, zzimVarZzc, zzjsVarZzd, zzjkVar, zzjbVar);
                int iZzb = zzol.zzb(context, zzntVarZza);
                zzno zznoVar = new zzno();
                zzhx zzhxVar = new zzhx(context, zzntVarZza, new zzow(context, iZzb), new zzpd(context, iZzb, new zzhu(zzntVarZza), ((Boolean) zzls.zzc().zza(zzmj.zzb)).booleanValue()), new zzpf(context, zzjdVar, zzntVarZza, zznoVar), zzjdVar, executor, zznoVar, iZzb, zzjsVarZzd, zzjkVar, zzjbVar);
                zzb = zzhxVar;
                zzhxVar.zzm();
                zzb.zzo();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzb;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d5 A[Catch: all -> 0x009d, zzaeg -> 0x00a0, TryCatch #0 {zzaeg -> 0x00a0, blocks: (B:6:0x0021, B:8:0x0032, B:12:0x0038, B:13:0x0044, B:15:0x0052, B:17:0x0060, B:20:0x006d, B:32:0x00a3, B:36:0x00bc, B:42:0x00d5, B:43:0x00e2, B:45:0x00e8, B:47:0x00f0, B:48:0x00f2, B:39:0x00c6, B:40:0x00cd, B:23:0x0074, B:25:0x008a, B:49:0x00fc, B:50:0x0109, B:51:0x0116), top: B:58:0x0021, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00fc A[Catch: all -> 0x009d, zzaeg -> 0x00a0, TryCatch #0 {zzaeg -> 0x00a0, blocks: (B:6:0x0021, B:8:0x0032, B:12:0x0038, B:13:0x0044, B:15:0x0052, B:17:0x0060, B:20:0x006d, B:32:0x00a3, B:36:0x00bc, B:42:0x00d5, B:43:0x00e2, B:45:0x00e8, B:47:0x00f0, B:48:0x00f2, B:39:0x00c6, B:40:0x00cd, B:23:0x0074, B:25:0x008a, B:49:0x00fc, B:50:0x0109, B:51:0x0116), top: B:58:0x0021, outer: #2 }] */
    public static /* bridge */ /* synthetic */ void zzj(zzhx zzhxVar) {
        String str;
        String strZzi;
        int length;
        boolean zZza;
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzov zzovVarZzu = zzhxVar.zzu(1);
        if (zzovVarZzu != null) {
            String strZzj = zzovVarZzu.zza().zzj();
            strZzi = zzovVarZzu.zza().zzi();
            str = strZzj;
        } else {
            str = null;
            strZzi = null;
        }
        try {
            try {
                zzpa zzpaVarZza = zzod.zza(zzhxVar.zzc, 1, zzhxVar.zzq, str, strZzi, "1", zzhxVar.zzh);
                byte[] bArr = zzpaVarZza.zzb;
                if (bArr == null || (length = bArr.length) == 0) {
                    zzhxVar.zzh.zzd(5009, System.currentTimeMillis() - jCurrentTimeMillis);
                } else {
                    try {
                        zzlc zzlcVarZzb = zzlc.zzb(zzacw.zzp(bArr, 0, length), zzadk.zza());
                        if (zzlcVarZzb.zzc().zzj().isEmpty() || zzlcVarZzb.zzc().zzi().isEmpty() || zzlcVarZzb.zzd().zzt().length == 0) {
                            zzhxVar.zzh.zzd(5010, System.currentTimeMillis() - jCurrentTimeMillis);
                        } else {
                            zzov zzovVarZzu2 = zzhxVar.zzu(1);
                            if (zzovVarZzu2 != null) {
                                zzlf zzlfVarZza = zzovVarZzu2.zza();
                                if (zzlcVarZzb.zzc().zzj().equals(zzlfVarZza.zzj()) && zzlcVarZzb.zzc().zzi().equals(zzlfVarZza.zzi())) {
                                    zzhxVar.zzh.zzd(5010, System.currentTimeMillis() - jCurrentTimeMillis);
                                }
                            }
                            zzpc zzpcVar = zzhxVar.zzj;
                            int i8 = zzpaVarZza.zzc;
                            if (!((Boolean) zzls.zzc().zza(zzmj.zza)).booleanValue()) {
                                zZza = zzhxVar.zzd.zza(zzlcVarZzb, zzpcVar);
                            } else if (i8 == 3) {
                                zZza = zzhxVar.zze.zza(zzlcVarZzb);
                            } else if (i8 == 4) {
                                zZza = zzhxVar.zze.zzb(zzlcVarZzb, zzpcVar);
                            } else {
                                zzhxVar.zzh.zzd(4009, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                            if (zZza) {
                                zzov zzovVarZzu3 = zzhxVar.zzu(1);
                                if (zzovVarZzu3 != null) {
                                    if (zzhxVar.zzf.zzc(zzovVarZzu3)) {
                                        zzhxVar.zzp = true;
                                    }
                                    zzhxVar.zza = System.currentTimeMillis() / 1000;
                                }
                            } else {
                                zzhxVar.zzh.zzd(4009, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                        }
                    } catch (NullPointerException unused) {
                        zzhxVar.zzh.zzd(2030, System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                }
            } finally {
                zzhxVar.zzk.countDown();
            }
        } catch (zzaeg e8) {
            zzhxVar.zzh.zzc(4002, System.currentTimeMillis() - jCurrentTimeMillis, e8);
        }
    }

    private final void zzt() {
        zzjs zzjsVar = this.zzl;
        if (zzjsVar != null) {
            zzjsVar.zzh();
        }
    }

    private final zzov zzu(int i8) {
        if (zzol.zza(this.zzq)) {
            return ((Boolean) zzls.zzc().zza(zzmj.zza)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzc(1);
        }
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zze(Context context, String str, View view, Activity activity) {
        zzt();
        if (((Boolean) zzls.zzc().zza(zzmj.zzp)).booleanValue()) {
            this.zzm.zzi();
        }
        zzo();
        zznw zznwVarZza = this.zzf.zza();
        if (zznwVarZza == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZza = zznwVarZza.zza(context, null, str, view, activity);
        this.zzh.zzf(DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT, System.currentTimeMillis() - jCurrentTimeMillis, strZza, null);
        return strZza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzf(Context context) {
        zzt();
        if (((Boolean) zzls.zzc().zza(zzmj.zzp)).booleanValue()) {
            this.zzm.zzj();
        }
        zzo();
        zznw zznwVarZza = this.zzf.zza();
        if (zznwVarZza == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzc = zznwVarZza.zzc(context, null);
        this.zzh.zzf(5001, System.currentTimeMillis() - jCurrentTimeMillis, strZzc, null);
        return strZzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzg(Context context, byte[] bArr) {
        throw null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzh(Context context, View view, Activity activity) {
        zzt();
        if (((Boolean) zzls.zzc().zza(zzmj.zzp)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzo();
        zznw zznwVarZza = this.zzf.zza();
        if (zznwVarZza == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzb = zznwVarZza.zzb(context, null, view, activity);
        this.zzh.zzf(5002, System.currentTimeMillis() - jCurrentTimeMillis, strZzb, null);
        return strZzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final void zzk(MotionEvent motionEvent) {
        zznw zznwVarZza = this.zzf.zza();
        if (zznwVarZza != null) {
            try {
                zznwVarZza.zzd(null, motionEvent);
            } catch (zzpe e8) {
                this.zzh.zzc(e8.zza(), -1L, e8);
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final void zzl(int i8, int i9, int i10) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) zzls.zzc().zza(zzmj.zzC)).booleanValue() || (displayMetrics = this.zzc.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f8 = i8;
        float f9 = displayMetrics.density;
        float f10 = i9;
        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 0, f8 * f9, f10 * f9, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain);
        motionEventObtain.recycle();
        float f11 = displayMetrics.density;
        MotionEvent motionEventObtain2 = MotionEvent.obtain(0L, 0L, 2, f8 * f11, f10 * f11, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain2);
        motionEventObtain2.recycle();
        float f12 = displayMetrics.density;
        MotionEvent motionEventObtain3 = MotionEvent.obtain(0L, i10, 1, f8 * f12, f10 * f12, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain3);
        motionEventObtain3.recycle();
    }

    public final synchronized void zzm() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzov zzovVarZzu = zzu(1);
        if (zzovVarZzu == null) {
            this.zzh.zzd(4013, System.currentTimeMillis() - jCurrentTimeMillis);
        } else if (this.zzf.zzc(zzovVarZzu)) {
            this.zzp = true;
            this.zzk.countDown();
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final void zzn(View view) {
        this.zzg.zzd(view);
    }

    public final void zzo() {
        if (this.zzo) {
            return;
        }
        synchronized (this.zzn) {
            try {
                if (!this.zzo) {
                    if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                        return;
                    }
                    zzov zzovVarZzb = this.zzf.zzb();
                    if ((zzovVarZzb == null || zzovVarZzb.zzd(3600L)) && zzol.zza(this.zzq)) {
                        this.zzi.execute(new zzhw(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final boolean zzq() {
        return zzr();
    }

    public final synchronized boolean zzr() {
        return this.zzp;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final boolean zzs() {
        try {
            this.zzk.await();
        } catch (InterruptedException unused) {
        }
        return zzr();
    }
}
