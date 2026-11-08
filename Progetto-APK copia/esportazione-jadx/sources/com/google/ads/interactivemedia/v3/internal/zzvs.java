package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class zzvs {
    private boolean zze;
    private final zzvl zzf;
    private final ArrayDeque zzg;
    private final int zzi;
    private final int zzj;
    private zzxn zza = zzxn.zza;
    private final int zzh = 1;
    private final Map zzb = new HashMap();
    private final List zzc = new ArrayList();
    private final List zzd = new ArrayList();

    public zzvs() {
        int i8 = zzvr.zzg;
        this.zze = false;
        this.zzf = zzvr.zza;
        this.zzi = zzvr.zze;
        this.zzj = zzvr.zzf;
        this.zzg = new ArrayDeque();
    }

    public final zzvr zza() {
        List list = this.zzd;
        ArrayList arrayList = new ArrayList(list.size() + this.zzc.size() + 3);
        arrayList.addAll(this.zzc);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.zzd);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        boolean z7 = zzabz.zza;
        zzxn zzxnVar = this.zza;
        HashMap map = new HashMap(this.zzb);
        boolean z8 = this.zze;
        ArrayList arrayList3 = new ArrayList(this.zzc);
        ArrayList arrayList4 = new ArrayList(this.zzd);
        ArrayList arrayList5 = new ArrayList(this.zzg);
        return new zzvr(zzxnVar, 1, map, false, false, false, true, this.zzf, null, z8, true, 1, null, 2, 2, arrayList3, arrayList4, arrayList, this.zzi, this.zzj, arrayList5);
    }

    public final zzvs zzb(Type type, Object obj) {
        Objects.requireNonNull(type);
        boolean z7 = obj instanceof zzwd;
        boolean z8 = true;
        if (!z7 && !(obj instanceof zzvv) && !(obj instanceof zzvt) && !(obj instanceof zzwj)) {
            z8 = false;
        }
        zzwn.zza(z8);
        if (type == Object.class || zzvw.class.isAssignableFrom((Class) type)) {
            throw new IllegalArgumentException("Cannot override built-in adapter for ".concat(type.toString()));
        }
        if (obj instanceof zzvt) {
            this.zzb.put(type, (zzvt) obj);
        }
        if (z7 || (obj instanceof zzvv)) {
            this.zzc.add(zzzv.zzb(zzaca.zzb(type), obj));
        }
        if (obj instanceof zzwj) {
            this.zzc.add(zzabh.zza(zzaca.zzb(type), (zzwj) obj));
        }
        return this;
    }

    public final zzvs zzc(zzwk zzwkVar) {
        Objects.requireNonNull(zzwkVar);
        this.zzc.add(zzwkVar);
        return this;
    }

    public final zzvs zzd() {
        this.zze = true;
        return this;
    }

    public final zzvs zze(zzpt zzptVar) {
        Objects.requireNonNull(zzptVar);
        this.zza = this.zza.zze(zzptVar, true, false);
        return this;
    }
}
