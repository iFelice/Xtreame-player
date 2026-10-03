package com.google.ads.interactivemedia.v3.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzadp {
    private static final zzadp zzb = new zzadp(true);
    final zzagd zza = new zzafw();
    private boolean zzc;
    private boolean zzd;

    private zzadp() {
    }

    public static int zza(zzags zzagsVar, int i8, Object obj) {
        zzadf.zzz(i8 << 3);
        if (zzags.zzj == null) {
            zzafb zzafbVar = (zzafb) obj;
            byte[] bArr = zzaee.zzb;
            if (zzafbVar instanceof zzaci) {
                throw null;
            }
        }
        zzagt zzagtVar = zzagt.INT;
        throw null;
    }

    public static int zzb(zzado zzadoVar, Object obj) {
        zzags zzagsVarZzb = zzadoVar.zzb();
        int iZza = zzadoVar.zza();
        if (!zzadoVar.zze()) {
            return zza(zzagsVarZzb, iZza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        if (!zzadoVar.zzd()) {
            int iZza2 = 0;
            for (int i8 = 0; i8 < size; i8++) {
                iZza2 += zza(zzagsVarZzb, iZza, list.get(i8));
            }
            return iZza2;
        }
        if (list.isEmpty()) {
            return 0;
        }
        if (size <= 0) {
            return zzadf.zzz(0) + zzadf.zzz(iZza << 3);
        }
        list.get(0);
        zzags zzagsVar = zzags.zza;
        zzagt zzagtVar = zzagt.INT;
        throw null;
    }

    public static zzadp zzd() {
        return zzb;
    }

    private static boolean zzi(Map.Entry entry) {
        zzado zzadoVar = (zzado) entry.getKey();
        if (zzadoVar.zzc() != zzagt.MESSAGE) {
            return true;
        }
        if (!zzadoVar.zze()) {
            return zzj(entry.getValue());
        }
        List list = (List) entry.getValue();
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (!zzj(list.get(i8))) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzj(Object obj) {
        if (obj instanceof zzafc) {
            return ((zzafc) obj).zzaT();
        }
        if (obj instanceof zzael) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzk(Map.Entry entry) {
        int i8;
        int iZzz;
        int iC;
        zzado zzadoVar = (zzado) entry.getKey();
        Object value = entry.getValue();
        if (zzadoVar.zzc() != zzagt.MESSAGE || zzadoVar.zze() || zzadoVar.zzd()) {
            return zzb(zzadoVar, value);
        }
        if (value instanceof zzael) {
            int iZza = ((zzado) entry.getKey()).zza();
            int iZzz2 = zzadf.zzz(8);
            i8 = iZzz2 + iZzz2;
            iZzz = zzadf.zzz(iZza) + zzadf.zzz(16);
            int iZzz3 = zzadf.zzz(24);
            int iZza2 = ((zzael) value).zza();
            iC = r.c(iZza2, iZza2, iZzz3);
        } else {
            int iZza3 = ((zzado) entry.getKey()).zza();
            int iZzz4 = zzadf.zzz(8);
            i8 = iZzz4 + iZzz4;
            iZzz = zzadf.zzz(iZza3) + zzadf.zzz(16);
            int iZzz5 = zzadf.zzz(24);
            int iZzax = ((zzafb) value).zzax();
            iC = r.c(iZzax, iZzax, iZzz5);
        }
        return i8 + iZzz + iC;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    private static final void zzl(zzado zzadoVar, Object obj) {
        boolean z7;
        zzadoVar.zzb();
        byte[] bArr = zzaee.zzb;
        obj.getClass();
        zzags zzagsVar = zzags.zza;
        zzagt zzagtVar = zzagt.INT;
        switch (r0.zza()) {
            case INT:
                z7 = obj instanceof Integer;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case LONG:
                z7 = obj instanceof Long;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case FLOAT:
                z7 = obj instanceof Float;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case DOUBLE:
                z7 = obj instanceof Double;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case BOOLEAN:
                z7 = obj instanceof Boolean;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case STRING:
                z7 = obj instanceof String;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof zzacw) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof zzaea)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            case MESSAGE:
                if ((obj instanceof zzafb) || (obj instanceof zzael)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzadoVar.zza()), zzadoVar.zzb().zza(), obj.getClass().getName()));
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzadp zzadpVar = new zzadp();
        int iZzc = this.zza.zzc();
        for (int i8 = 0; i8 < iZzc; i8++) {
            Map.Entry entryZzg = this.zza.zzg(i8);
            zzadpVar.zzg((zzado) ((zzafx) entryZzg).zza(), entryZzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzd()) {
            zzadpVar.zzg((zzado) entry.getKey(), entry.getValue());
        }
        zzadpVar.zzd = this.zzd;
        return zzadpVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzadp) {
            return this.zza.equals(((zzadp) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzc() {
        int iZzc = this.zza.zzc();
        int iZzk = 0;
        for (int i8 = 0; i8 < iZzc; i8++) {
            iZzk += zzk(this.zza.zzg(i8));
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            iZzk += zzk((Map.Entry) it.next());
        }
        return iZzk;
    }

    public final Iterator zze() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.zzd ? new zzaek(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zzf() {
        if (this.zzc) {
            return;
        }
        int iZzc = this.zza.zzc();
        for (int i8 = 0; i8 < iZzc; i8++) {
            Map.Entry entryZzg = this.zza.zzg(i8);
            if (entryZzg.getValue() instanceof zzady) {
                ((zzady) entryZzg.getValue()).zzaK();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzg(zzado zzadoVar, Object obj) {
        if (!zzadoVar.zze()) {
            zzl(zzadoVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i8 = 0; i8 < size; i8++) {
                Object obj2 = list.get(i8);
                zzl(zzadoVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzael) {
            this.zzd = true;
        }
        this.zza.put(zzadoVar, obj);
    }

    public final boolean zzh() {
        int iZzc = this.zza.zzc();
        for (int i8 = 0; i8 < iZzc; i8++) {
            if (!zzi(this.zza.zzg(i8))) {
                return false;
            }
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            if (!zzi((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private zzadp(boolean z7) {
        zzf();
        zzf();
    }
}
