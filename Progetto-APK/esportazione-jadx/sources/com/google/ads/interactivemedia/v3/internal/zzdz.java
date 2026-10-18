package com.google.ads.interactivemedia.v3.internal;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzdz implements zzda {
    private static final zzdz zza = new zzdz();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzd = new zzdv();
    private static final Runnable zze = new zzdw();
    private int zzg;
    private long zzm;
    private final List zzf = new ArrayList();
    private boolean zzh = false;
    private final List zzi = new ArrayList();
    private final zzds zzk = new zzds();
    private final zzdc zzj = new zzdc();
    private final zzdt zzl = new zzdt(new zzec());

    public static zzdz zzd() {
        return zza;
    }

    public static /* bridge */ /* synthetic */ void zzg(zzdz zzdzVar) {
        zzdzVar.zzg = 0;
        zzdzVar.zzi.clear();
        zzdzVar.zzh = false;
        for (com.google.ads.interactivemedia.omid.library.adsession.zze zzeVar : zzcr.zza().zzb()) {
        }
        zzdzVar.zzm = System.nanoTime();
        zzdzVar.zzk.zzi();
        long jNanoTime = System.nanoTime();
        zzdb zzdbVarZza = zzdzVar.zzj.zza();
        if (zzdzVar.zzk.zze().size() > 0) {
            for (String str : zzdzVar.zzk.zze()) {
                JSONObject jSONObjectZza = zzdbVarZza.zza(null);
                View viewZza = zzdzVar.zzk.zza(str);
                zzdb zzdbVarZzb = zzdzVar.zzj.zzb();
                String strZzc = zzdzVar.zzk.zzc(str);
                if (strZzc != null) {
                    JSONObject jSONObjectZza2 = zzdbVarZzb.zza(viewZza);
                    zzdl.zzb(jSONObjectZza2, str);
                    try {
                        jSONObjectZza2.put("notVisibleReason", strZzc);
                    } catch (JSONException e8) {
                        zzdm.zza("Error with setting not visible reason", e8);
                    }
                    zzdl.zzc(jSONObjectZza, jSONObjectZza2);
                }
                zzdl.zzf(jSONObjectZza);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                zzdzVar.zzl.zzc(jSONObjectZza, hashSet, jNanoTime);
            }
        }
        if (zzdzVar.zzk.zzf().size() > 0) {
            JSONObject jSONObjectZza3 = zzdbVarZza.zza(null);
            zzdzVar.zzk(null, zzdbVarZza, jSONObjectZza3, 1, false);
            zzdl.zzf(jSONObjectZza3);
            zzdzVar.zzl.zzd(jSONObjectZza3, zzdzVar.zzk.zzf(), jNanoTime);
        } else {
            zzdzVar.zzl.zzb();
        }
        zzdzVar.zzk.zzg();
        long jNanoTime2 = System.nanoTime() - zzdzVar.zzm;
        if (zzdzVar.zzf.size() > 0) {
            for (zzdy zzdyVar : zzdzVar.zzf) {
                TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                zzdyVar.zzb();
                if (zzdyVar instanceof zzdx) {
                    ((zzdx) zzdyVar).zza();
                }
            }
        }
    }

    private final void zzk(View view, zzdb zzdbVar, JSONObject jSONObject, int i8, boolean z7) {
        zzdbVar.zzb(view, jSONObject, this, i8 == 1, z7);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zze);
            zzc = null;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzda
    public final void zza(View view, zzdb zzdbVar, JSONObject jSONObject, boolean z7) {
        int iZzk;
        boolean z8;
        if (zzdq.zza(view) != null || (iZzk = this.zzk.zzk(view)) == 3) {
            return;
        }
        JSONObject jSONObjectZza = zzdbVar.zza(view);
        zzdl.zzc(jSONObject, jSONObjectZza);
        String strZzd = this.zzk.zzd(view);
        if (strZzd != null) {
            zzdl.zzb(jSONObjectZza, strZzd);
            try {
                jSONObjectZza.put("hasWindowFocus", Boolean.valueOf(this.zzk.zzj(view)));
            } catch (JSONException e8) {
                zzdm.zza("Error with setting has window focus", e8);
            }
            this.zzk.zzh();
        } else {
            zzdr zzdrVarZzb = this.zzk.zzb(view);
            if (zzdrVarZzb != null) {
                zzcu zzcuVarZza = zzdrVarZzb.zza();
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayListZzb = zzdrVarZzb.zzb();
                int size = arrayListZzb.size();
                for (int i8 = 0; i8 < size; i8++) {
                    jSONArray.put((String) arrayListZzb.get(i8));
                }
                try {
                    jSONObjectZza.put("isFriendlyObstructionFor", jSONArray);
                    jSONObjectZza.put("friendlyObstructionClass", zzcuVarZza.zzd());
                    jSONObjectZza.put("friendlyObstructionPurpose", zzcuVarZza.zza());
                    jSONObjectZza.put("friendlyObstructionReason", zzcuVarZza.zzc());
                } catch (JSONException e9) {
                    zzdm.zza("Error with setting friendly obstruction", e9);
                }
                z8 = true;
            } else {
                z8 = false;
            }
            zzk(view, zzdbVar, jSONObjectZza, iZzk, z7 || z8);
        }
        this.zzg++;
    }

    public final void zzh() {
        zzl();
    }

    public final void zzi() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzd);
            zzc.postDelayed(zze, 200L);
        }
    }

    public final void zzj() {
        zzl();
        this.zzf.clear();
        zzb.post(new zzdu(this));
    }
}
