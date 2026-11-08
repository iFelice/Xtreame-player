package com.google.ads.interactivemedia.v3.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.Iterator;
import java.util.LinkedList;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzib implements zzia {
    protected static volatile zzjj zza;
    protected MotionEvent zzb;
    protected double zzk;
    protected float zzl;
    protected float zzm;
    protected float zzn;
    protected float zzo;
    protected DisplayMetrics zzq;
    protected zzjb zzr;
    private double zzs;
    private double zzt;
    protected final LinkedList zzc = new LinkedList();
    protected long zzd = 0;
    protected long zze = 0;
    protected long zzf = 0;
    protected long zzg = 0;
    protected long zzh = 0;
    protected long zzi = 0;
    protected long zzj = 0;
    private boolean zzu = false;
    protected boolean zzp = false;

    public zzib(Context context) {
        try {
            zzgt.zzd();
            this.zzq = context.getResources().getDisplayMetrics();
            if (((Boolean) zzls.zzc().zza(zzmj.zzs)).booleanValue()) {
                this.zzr = new zzjb();
            }
        } catch (Throwable unused) {
        }
    }

    private final void zzj() {
        this.zzh = 0L;
        this.zzd = 0L;
        this.zze = 0L;
        this.zzf = 0L;
        this.zzg = 0L;
        this.zzi = 0L;
        this.zzj = 0L;
        if (this.zzc.isEmpty()) {
            MotionEvent motionEvent = this.zzb;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        } else {
            Iterator it = this.zzc.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            this.zzc.clear();
        }
        this.zzb = null;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:47:0x00bb A[Catch: Exception -> 0x00f3, TryCatch #2 {Exception -> 0x00f3, blocks: (B:44:0x00ae, B:47:0x00bb, B:55:0x00e3, B:58:0x00f7), top: B:75:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00cf A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00da  */
    /* JADX WARN: Code duplicated, block: B:54:0x00df  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f7 A[Catch: Exception -> 0x00f3, TRY_LEAVE, TryCatch #2 {Exception -> 0x00f3, blocks: (B:44:0x00ae, B:47:0x00bb, B:55:0x00e3, B:58:0x00f7), top: B:75:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:75:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private final String zzm(Context context, String str, int i8, View view, Activity activity, byte[] bArr) {
        zzhz zzhzVarZzd;
        String str2;
        int i9;
        Exception exc;
        int i10;
        int i11;
        long jCurrentTimeMillis;
        String strZza;
        int i12;
        int i13;
        int i14;
        int i15 = i8;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        boolean zBooleanValue = ((Boolean) zzls.zzc().zza(zzmj.zzj)).booleanValue();
        zzan zzanVarZzc = null;
        if (zBooleanValue) {
            zzhzVarZzd = zza != null ? zza.zzd() : null;
            str2 = "be";
        } else {
            zzhzVarZzd = null;
            str2 = null;
        }
        try {
            if (i15 == 3) {
                zzanVarZzc = zzb(context, view, activity);
                try {
                    this.zzu = true;
                    i14 = 1002;
                } catch (Exception e8) {
                    exc = e8;
                    i9 = 3;
                    if (!zBooleanValue) {
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                    if (zzanVarZzc != null) {
                        try {
                            if (((zzbp) zzanVarZzc.zzal()).zzax() == 0) {
                                strZza = Integer.toString(5);
                            } else {
                                zzbp zzbpVar = (zzbp) zzanVarZzc.zzal();
                                int i16 = zzgt.zzc;
                                strZza = zzgt.zza(zzbpVar.zzav(), str);
                                if (zBooleanValue) {
                                    if (i15 == i9) {
                                        i12 = 1006;
                                    } else if (i15 == i10) {
                                        i12 = 1010;
                                    } else {
                                        i12 = 1004;
                                    }
                                    zzhzVarZzd.zzc(i12, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
                                }
                            }
                        } catch (Exception e9) {
                            strZza = Integer.toString(7);
                            if (zBooleanValue && zzhzVarZzd != null) {
                                if (i15 == i9) {
                                    i13 = 1007;
                                } else {
                                    i13 = i15 == i10 ? 1011 : WebSocketProtocol.CLOSE_NO_STATUS_CODE;
                                }
                                zzhzVarZzd.zzc(i13, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, e9);
                            }
                        }
                    } else {
                        strZza = Integer.toString(5);
                    }
                    return strZza;
                }
            } else if (i15 == 2) {
                zzanVarZzc = zzd(context, view, activity);
                i14 = 1008;
            } else {
                zzanVarZzc = zzc(context, null);
                i14 = 1000;
            }
            if (!zBooleanValue || zzhzVarZzd == null) {
                i9 = 3;
            } else {
                i9 = 3;
                try {
                    zzhzVarZzd.zzc(i14, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, null);
                } catch (Exception e10) {
                    e = e10;
                    exc = e;
                    if (!zBooleanValue && zzhzVarZzd != null) {
                        if (i15 == i9) {
                            i10 = 2;
                            i11 = 1003;
                        } else {
                            i10 = 2;
                            if (i15 == 2) {
                                i11 = 1009;
                            } else {
                                i15 = 1;
                                i11 = WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY;
                            }
                        }
                        zzhzVarZzd.zzc(i11, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, exc);
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                    if (zzanVarZzc != null) {
                        strZza = Integer.toString(5);
                    } else if (((zzbp) zzanVarZzc.zzal()).zzax() == 0) {
                        strZza = Integer.toString(5);
                    } else {
                        zzbp zzbpVar2 = (zzbp) zzanVarZzc.zzal();
                        int i17 = zzgt.zzc;
                        strZza = zzgt.zza(zzbpVar2.zzav(), str);
                        if (zBooleanValue) {
                            if (i15 == i9) {
                                i12 = 1006;
                            } else if (i15 == i10) {
                                i12 = 1010;
                            } else {
                                i12 = 1004;
                            }
                            zzhzVarZzd.zzc(i12, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
                        }
                    }
                    return strZza;
                }
            }
        } catch (Exception e11) {
            e = e11;
            i9 = 3;
        }
        i10 = 2;
        jCurrentTimeMillis = System.currentTimeMillis();
        if (zzanVarZzc != null) {
            strZza = Integer.toString(5);
        } else if (((zzbp) zzanVarZzc.zzal()).zzax() == 0) {
            strZza = Integer.toString(5);
        } else {
            zzbp zzbpVar3 = (zzbp) zzanVarZzc.zzal();
            int i18 = zzgt.zzc;
            strZza = zzgt.zza(zzbpVar3.zzav(), str);
            if (zBooleanValue && zzhzVarZzd != null) {
                if (i15 == i9) {
                    i12 = 1006;
                } else if (i15 == i10) {
                    i12 = 1010;
                } else {
                    i12 = 1004;
                }
                zzhzVarZzd.zzc(i12, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, null);
            }
        }
        return strZza;
    }

    public abstract long zza(StackTraceElement[] stackTraceElementArr);

    public abstract zzan zzb(Context context, View view, Activity activity);

    public abstract zzan zzc(Context context, zzy zzyVar);

    public abstract zzan zzd(Context context, View view, Activity activity);

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zze(Context context, String str, View view, Activity activity) {
        return zzm(context, str, 3, view, activity, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzf(Context context) {
        if (zzjm.zzc()) {
            throw new IllegalStateException("The caller must not be called from the UI thread.");
        }
        return zzm(context, null, 1, null, null, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzg(Context context, byte[] bArr) {
        throw null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final String zzh(Context context, View view, Activity activity) {
        return zzm(context, null, 2, view, activity, null);
    }

    public abstract zzjl zzi(MotionEvent motionEvent);

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final synchronized void zzk(MotionEvent motionEvent) {
        Long l4;
        try {
            if (this.zzu) {
                zzj();
                this.zzu = false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.zzk = 0.0d;
                this.zzs = motionEvent.getRawX();
                this.zzt = motionEvent.getRawY();
            } else if (action == 1 || action == 2) {
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d6 = rawX - this.zzs;
                double d8 = rawY - this.zzt;
                this.zzk += Math.sqrt((d8 * d8) + (d6 * d6));
                this.zzs = rawX;
                this.zzt = rawY;
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 == 1) {
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        this.zzb = motionEventObtain;
                        this.zzc.add(motionEventObtain);
                        if (this.zzc.size() > 6) {
                            ((MotionEvent) this.zzc.remove()).recycle();
                        }
                        this.zzf++;
                        this.zzh = zza(new Throwable().getStackTrace());
                    } else if (action2 == 2) {
                        this.zze += (long) (motionEvent.getHistorySize() + 1);
                        zzjl zzjlVarZzi = zzi(motionEvent);
                        Long l8 = zzjlVarZzi.zzd;
                        if (l8 != null && zzjlVarZzi.zzg != null) {
                            this.zzi = l8.longValue() + zzjlVarZzi.zzg.longValue() + this.zzi;
                        }
                        if (this.zzq != null && (l4 = zzjlVarZzi.zze) != null && zzjlVarZzi.zzh != null) {
                            this.zzj = l4.longValue() + zzjlVarZzi.zzh.longValue() + this.zzj;
                        }
                    } else if (action2 == 3) {
                        this.zzg++;
                    }
                } catch (zziz unused) {
                }
            } else {
                this.zzl = motionEvent.getX();
                this.zzm = motionEvent.getY();
                this.zzn = motionEvent.getRawX();
                this.zzo = motionEvent.getRawY();
                this.zzd++;
            }
            this.zzp = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final synchronized void zzl(int i8, int i9, int i10) {
        try {
            if (this.zzb != null) {
                if (((Boolean) zzls.zzc().zza(zzmj.zzh)).booleanValue()) {
                    zzj();
                } else {
                    this.zzb.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.zzq;
            if (displayMetrics != null) {
                float f8 = displayMetrics.density;
                this.zzb = MotionEvent.obtain(0L, i10, 1, i8 * f8, i9 * f8, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.zzb = null;
            }
            this.zzp = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public void zzn(View view) {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final boolean zzq() {
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzia
    public final boolean zzs() {
        return true;
    }
}
