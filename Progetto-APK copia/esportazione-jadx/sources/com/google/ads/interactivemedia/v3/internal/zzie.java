package com.google.ads.interactivemedia.v3.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzie implements Runnable, zzia {
    private Context zzc;
    private final zznt zzd;
    private final Executor zze;
    private final zzm zzf;
    private final boolean zzg;
    private final AtomicReference zzb = new AtomicReference();
    final CountDownLatch zza = new CountDownLatch(1);
    private final List zzh = new ArrayList();

    public zzie(Context context, Executor executor, zzm zzmVar) {
        this.zzf = zzmVar;
        this.zzc = context;
        this.zze = executor;
        zzmj.zza(context);
        boolean z7 = ((Boolean) zzls.zzc().zza(zzmj.zzc)).booleanValue() && zzmVar.zzk();
        this.zzg = z7;
        this.zzd = zznt.zza(context, executor, z7);
        executor.execute(this);
    }

    private final void zzd() {
        if (this.zzh.isEmpty() || this.zzb.get() == null) {
            return;
        }
        for (Object[] objArr : this.zzh) {
            int length = objArr.length;
            if (length == 1) {
                ((zzia) this.zzb.get()).zzk((MotionEvent) objArr[0]);
            } else if (length == 3) {
                ((zzia) this.zzb.get()).zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzh.clear();
    }

    private final boolean zzi() {
        this.zzb.set(zzih.zzu(zzj(this.zzc), new zzif(this.zzf)));
        return true;
    }

    private static final Context zzj(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                if (this.zzf.zzn() - 1 == 2) {
                    i8 = (new zzpd(this.zzc, zzol.zzb(this.zzc, this.zzd), new zzid(this), ((Boolean) zzls.zzc().zza(zzmj.zzb)).booleanValue()).zzd(1) || !this.zzf.zzl()) ? 3 : 2;
                }
                if (i8 - 1 != 2) {
                    zzi();
                    if (this.zzf.zzn() == 3) {
                        this.zze.execute(new Runnable() { // from class: com.google.ads.interactivemedia.v3.internal.zzic
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zza.zzc();
                            }
                        });
                    }
                } else {
                    zzhx zzhxVarZzb = zzhx.zzb(this.zzf.zze(), zzj(this.zzc), this.zze, this.zzf.zzj(), this.zzg);
                    this.zzb.set(zzhxVarZzb);
                    if (!zzhxVarZzb.zzr() && this.zzf.zzl()) {
                        zzi();
                    }
                }
            } catch (NullPointerException e8) {
                if (this.zzf.zzl()) {
                    zzi();
                }
                this.zzd.zzc(2031, System.currentTimeMillis() - jCurrentTimeMillis, e8);
            }
        } finally {
            this.zzc = null;
            this.zza.countDown();
        }
    }

    public final zzia zza() {
        return (zzia) this.zzb.get();
    }

    public final /* synthetic */ void zzc() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            zzhx.zza(this.zzf.zze(), zzj(this.zzc), this.zzf.zzj(), this.zzg).zzo();
        } catch (NullPointerException e8) {
            this.zzd.zzc(2027, System.currentTimeMillis() - jCurrentTimeMillis, e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    @Deprecated
    public final String zze(Context context, String str, View view, Activity activity) {
        if (!zzs()) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        zzd();
        return ((zzia) this.zzb.get()).zze(zzj(context), str, view, activity);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzf(Context context) {
        return zzg(context, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzg(Context context, byte[] bArr) {
        if (!zzs()) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        zzd();
        return ((zzia) this.zzb.get()).zzf(zzj(context));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzh(Context context, View view, Activity activity) {
        return zzs() ? ((zzia) this.zzb.get()).zzh(context, view, activity) : HttpUrl.FRAGMENT_ENCODE_SET;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final void zzk(MotionEvent motionEvent) {
        if (this.zzb.get() == null) {
            this.zzh.add(new Object[]{motionEvent});
        } else {
            zzd();
            ((zzia) this.zzb.get()).zzk(motionEvent);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final void zzl(int i8, int i9, int i10) {
        if (this.zzb.get() == null) {
            this.zzh.add(new Object[]{Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10)});
        } else {
            zzd();
            ((zzia) this.zzb.get()).zzl(i8, i9, i10);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final void zzn(View view) {
        if (this.zzb.get() != null) {
            ((zzia) this.zzb.get()).zzn(view);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final boolean zzq() {
        return this.zza.getCount() == 0 && this.zzb.get() != null && ((zzia) this.zzb.get()).zzq();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final boolean zzs() {
        try {
            this.zza.await();
            return this.zzb.get() != null && ((zzia) this.zzb.get()).zzs();
        } catch (InterruptedException unused) {
            return false;
        }
    }
}
