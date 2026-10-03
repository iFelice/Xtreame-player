package com.google.ads.interactivemedia.v3.internal;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzadg implements zzagu {
    private final zzadf zza;

    private zzadg(zzadf zzadfVar) {
        byte[] bArr = zzaee.zzb;
        this.zza = zzadfVar;
        zzadfVar.zza = this;
    }

    public static zzadg zza(zzadf zzadfVar) {
        zzadg zzadgVar = zzadfVar.zza;
        return zzadgVar != null ? zzadgVar : new zzadg(zzadfVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzA(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzaeq)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzh(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                i10 += 8;
            }
            this.zza.zzt(i10);
            while (i9 < list.size()) {
                this.zza.zzi(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        if (!z7) {
            while (i9 < zzaeqVar.size()) {
                this.zza.zzh(i8, zzaeqVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < zzaeqVar.size(); i13++) {
            zzaeqVar.zze(i13);
            i12 += 8;
        }
        this.zza.zzt(i12);
        while (i9 < zzaeqVar.size()) {
            this.zza.zzi(zzaeqVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzB(int i8, int i9) {
        this.zza.zzs(i8, (i9 >> 31) ^ (i9 + i9));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzC(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadz)) {
            if (!z7) {
                while (i9 < list.size()) {
                    zzadf zzadfVar = this.zza;
                    int iIntValue = ((Integer) list.get(i9)).intValue();
                    zzadfVar.zzs(i8, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int iZzz = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                int iIntValue2 = ((Integer) list.get(i10)).intValue();
                iZzz += zzadf.zzz((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            this.zza.zzt(iZzz);
            while (i9 < list.size()) {
                zzadf zzadfVar2 = this.zza;
                int iIntValue3 = ((Integer) list.get(i9)).intValue();
                zzadfVar2.zzt((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i9++;
            }
            return;
        }
        zzadz zzadzVar = (zzadz) list;
        if (!z7) {
            while (i9 < zzadzVar.size()) {
                zzadf zzadfVar3 = this.zza;
                int iZze = zzadzVar.zze(i9);
                zzadfVar3.zzs(i8, (iZze >> 31) ^ (iZze + iZze));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int iZzz2 = 0;
        for (int i11 = 0; i11 < zzadzVar.size(); i11++) {
            int iZze2 = zzadzVar.zze(i11);
            iZzz2 += zzadf.zzz((iZze2 >> 31) ^ (iZze2 + iZze2));
        }
        this.zza.zzt(iZzz2);
        while (i9 < zzadzVar.size()) {
            zzadf zzadfVar4 = this.zza;
            int iZze3 = zzadzVar.zze(i9);
            zzadfVar4.zzt((iZze3 >> 31) ^ (iZze3 + iZze3));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzD(int i8, long j8) {
        this.zza.zzu(i8, (j8 >> 63) ^ (j8 + j8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzE(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzaeq)) {
            if (!z7) {
                while (i9 < list.size()) {
                    zzadf zzadfVar = this.zza;
                    long jLongValue = ((Long) list.get(i9)).longValue();
                    zzadfVar.zzu(i8, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int iZzA = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                long jLongValue2 = ((Long) list.get(i10)).longValue();
                iZzA += zzadf.zzA((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            this.zza.zzt(iZzA);
            while (i9 < list.size()) {
                zzadf zzadfVar2 = this.zza;
                long jLongValue3 = ((Long) list.get(i9)).longValue();
                zzadfVar2.zzv((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i9++;
            }
            return;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        if (!z7) {
            while (i9 < zzaeqVar.size()) {
                zzadf zzadfVar3 = this.zza;
                long jZze = zzaeqVar.zze(i9);
                zzadfVar3.zzu(i8, (jZze >> 63) ^ (jZze + jZze));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int iZzA2 = 0;
        for (int i11 = 0; i11 < zzaeqVar.size(); i11++) {
            long jZze2 = zzaeqVar.zze(i11);
            iZzA2 += zzadf.zzA((jZze2 >> 63) ^ (jZze2 + jZze2));
        }
        this.zza.zzt(iZzA2);
        while (i9 < zzaeqVar.size()) {
            zzadf zzadfVar4 = this.zza;
            long jZze3 = zzaeqVar.zze(i9);
            zzadfVar4.zzv((jZze3 >> 63) ^ (jZze3 + jZze3));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    @Deprecated
    public final void zzF(int i8) {
        this.zza.zzr(i8, 3);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzG(int i8, String str) {
        this.zza.zzp(i8, str);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzH(int i8, List list) {
        int i9 = 0;
        if (!(list instanceof zzaen)) {
            while (i9 < list.size()) {
                this.zza.zzp(i8, (String) list.get(i9));
                i9++;
            }
            return;
        }
        zzaen zzaenVar = (zzaen) list;
        while (i9 < list.size()) {
            Object objZzb = zzaenVar.zzb();
            if (objZzb instanceof String) {
                this.zza.zzp(i8, (String) objZzb);
            } else {
                this.zza.zze(i8, (zzacw) objZzb);
            }
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzI(int i8, int i9) {
        this.zza.zzs(i8, i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzJ(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadz)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzs(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int iZzz = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iZzz += zzadf.zzz(((Integer) list.get(i10)).intValue());
            }
            this.zza.zzt(iZzz);
            while (i9 < list.size()) {
                this.zza.zzt(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        zzadz zzadzVar = (zzadz) list;
        if (!z7) {
            while (i9 < zzadzVar.size()) {
                this.zza.zzs(i8, zzadzVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int iZzz2 = 0;
        for (int i11 = 0; i11 < zzadzVar.size(); i11++) {
            iZzz2 += zzadf.zzz(zzadzVar.zze(i11));
        }
        this.zza.zzt(iZzz2);
        while (i9 < zzadzVar.size()) {
            this.zza.zzt(zzadzVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzK(int i8, long j8) {
        this.zza.zzu(i8, j8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzL(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzaeq)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzu(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int iZzA = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iZzA += zzadf.zzA(((Long) list.get(i10)).longValue());
            }
            this.zza.zzt(iZzA);
            while (i9 < list.size()) {
                this.zza.zzv(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        if (!z7) {
            while (i9 < zzaeqVar.size()) {
                this.zza.zzu(i8, zzaeqVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int iZzA2 = 0;
        for (int i11 = 0; i11 < zzaeqVar.size(); i11++) {
            iZzA2 += zzadf.zzA(zzaeqVar.zze(i11));
        }
        this.zza.zzt(iZzA2);
        while (i9 < zzaeqVar.size()) {
            this.zza.zzv(zzaeqVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzb(int i8, boolean z7) {
        this.zza.zzd(i8, z7);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzc(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzacn)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzd(i8, ((Boolean) list.get(i9)).booleanValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Boolean) list.get(i11)).getClass();
                i10++;
            }
            this.zza.zzt(i10);
            while (i9 < list.size()) {
                this.zza.zzb(((Boolean) list.get(i9)).booleanValue() ? (byte) 1 : (byte) 0);
                i9++;
            }
            return;
        }
        zzacn zzacnVar = (zzacn) list;
        if (!z7) {
            while (i9 < zzacnVar.size()) {
                this.zza.zzd(i8, zzacnVar.zzf(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < zzacnVar.size(); i13++) {
            zzacnVar.zzf(i13);
            i12++;
        }
        this.zza.zzt(i12);
        while (i9 < zzacnVar.size()) {
            this.zza.zzb(zzacnVar.zzf(i9) ? (byte) 1 : (byte) 0);
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzd(int i8, zzacw zzacwVar) {
        this.zza.zze(i8, zzacwVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zze(int i8, List list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            this.zza.zze(i8, (zzacw) list.get(i9));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzf(int i8, double d6) {
        this.zza.zzh(i8, Double.doubleToRawLongBits(d6));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzg(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadh)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzh(i8, Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Double) list.get(i11)).getClass();
                i10 += 8;
            }
            this.zza.zzt(i10);
            while (i9 < list.size()) {
                this.zza.zzi(Double.doubleToRawLongBits(((Double) list.get(i9)).doubleValue()));
                i9++;
            }
            return;
        }
        zzadh zzadhVar = (zzadh) list;
        if (!z7) {
            while (i9 < zzadhVar.size()) {
                this.zza.zzh(i8, Double.doubleToRawLongBits(zzadhVar.zze(i9)));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < zzadhVar.size(); i13++) {
            zzadhVar.zze(i13);
            i12 += 8;
        }
        this.zza.zzt(i12);
        while (i9 < zzadhVar.size()) {
            this.zza.zzi(Double.doubleToRawLongBits(zzadhVar.zze(i9)));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    @Deprecated
    public final void zzh(int i8) {
        this.zza.zzr(i8, 4);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzi(int i8, int i9) {
        this.zza.zzj(i8, i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzj(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadz)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzj(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int iZzA = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iZzA += zzadf.zzA(((Integer) list.get(i10)).intValue());
            }
            this.zza.zzt(iZzA);
            while (i9 < list.size()) {
                this.zza.zzk(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        zzadz zzadzVar = (zzadz) list;
        if (!z7) {
            while (i9 < zzadzVar.size()) {
                this.zza.zzj(i8, zzadzVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int iZzA2 = 0;
        for (int i11 = 0; i11 < zzadzVar.size(); i11++) {
            iZzA2 += zzadf.zzA(zzadzVar.zze(i11));
        }
        this.zza.zzt(iZzA2);
        while (i9 < zzadzVar.size()) {
            this.zza.zzk(zzadzVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzk(int i8, int i9) {
        this.zza.zzf(i8, i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzl(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadz)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzf(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                i10 += 4;
            }
            this.zza.zzt(i10);
            while (i9 < list.size()) {
                this.zza.zzg(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        zzadz zzadzVar = (zzadz) list;
        if (!z7) {
            while (i9 < zzadzVar.size()) {
                this.zza.zzf(i8, zzadzVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < zzadzVar.size(); i13++) {
            zzadzVar.zze(i13);
            i12 += 4;
        }
        this.zza.zzt(i12);
        while (i9 < zzadzVar.size()) {
            this.zza.zzg(zzadzVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzm(int i8, long j8) {
        this.zza.zzh(i8, j8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzn(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzaeq)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzh(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Long) list.get(i11)).getClass();
                i10 += 8;
            }
            this.zza.zzt(i10);
            while (i9 < list.size()) {
                this.zza.zzi(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        if (!z7) {
            while (i9 < zzaeqVar.size()) {
                this.zza.zzh(i8, zzaeqVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < zzaeqVar.size(); i13++) {
            zzaeqVar.zze(i13);
            i12 += 8;
        }
        this.zza.zzt(i12);
        while (i9 < zzaeqVar.size()) {
            this.zza.zzi(zzaeqVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzo(int i8, float f8) {
        this.zza.zzf(i8, Float.floatToRawIntBits(f8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzp(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadr)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzf(i8, Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Float) list.get(i11)).getClass();
                i10 += 4;
            }
            this.zza.zzt(i10);
            while (i9 < list.size()) {
                this.zza.zzg(Float.floatToRawIntBits(((Float) list.get(i9)).floatValue()));
                i9++;
            }
            return;
        }
        zzadr zzadrVar = (zzadr) list;
        if (!z7) {
            while (i9 < zzadrVar.size()) {
                this.zza.zzf(i8, Float.floatToRawIntBits(zzadrVar.zze(i9)));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < zzadrVar.size(); i13++) {
            zzadrVar.zze(i13);
            i12 += 4;
        }
        this.zza.zzt(i12);
        while (i9 < zzadrVar.size()) {
            this.zza.zzg(Float.floatToRawIntBits(zzadrVar.zze(i9)));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzq(int i8, Object obj, zzaft zzaftVar) {
        zzadf zzadfVar = this.zza;
        zzadfVar.zzr(i8, 3);
        zzaftVar.zzj((zzafb) obj, zzadfVar.zza);
        zzadfVar.zzr(i8, 4);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzr(int i8, int i9) {
        this.zza.zzj(i8, i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzs(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadz)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzj(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int iZzA = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iZzA += zzadf.zzA(((Integer) list.get(i10)).intValue());
            }
            this.zza.zzt(iZzA);
            while (i9 < list.size()) {
                this.zza.zzk(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        zzadz zzadzVar = (zzadz) list;
        if (!z7) {
            while (i9 < zzadzVar.size()) {
                this.zza.zzj(i8, zzadzVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int iZzA2 = 0;
        for (int i11 = 0; i11 < zzadzVar.size(); i11++) {
            iZzA2 += zzadf.zzA(zzadzVar.zze(i11));
        }
        this.zza.zzt(iZzA2);
        while (i9 < zzadzVar.size()) {
            this.zza.zzk(zzadzVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzt(int i8, long j8) {
        this.zza.zzu(i8, j8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzu(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzaeq)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzu(i8, ((Long) list.get(i9)).longValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int iZzA = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                iZzA += zzadf.zzA(((Long) list.get(i10)).longValue());
            }
            this.zza.zzt(iZzA);
            while (i9 < list.size()) {
                this.zza.zzv(((Long) list.get(i9)).longValue());
                i9++;
            }
            return;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        if (!z7) {
            while (i9 < zzaeqVar.size()) {
                this.zza.zzu(i8, zzaeqVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int iZzA2 = 0;
        for (int i11 = 0; i11 < zzaeqVar.size(); i11++) {
            iZzA2 += zzadf.zzA(zzaeqVar.zze(i11));
        }
        this.zza.zzt(iZzA2);
        while (i9 < zzaeqVar.size()) {
            this.zza.zzv(zzaeqVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzv(int i8, Object obj, zzaft zzaftVar) {
        this.zza.zzm(i8, (zzafb) obj, zzaftVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzw(int i8, Object obj) {
        if (obj instanceof zzacw) {
            this.zza.zzo(i8, (zzacw) obj);
        } else {
            this.zza.zzn(i8, (zzafb) obj);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzx(int i8, int i9) {
        this.zza.zzf(i8, i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzy(int i8, List list, boolean z7) {
        int i9 = 0;
        if (!(list instanceof zzadz)) {
            if (!z7) {
                while (i9 < list.size()) {
                    this.zza.zzf(i8, ((Integer) list.get(i9)).intValue());
                    i9++;
                }
                return;
            }
            this.zza.zzr(i8, 2);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((Integer) list.get(i11)).getClass();
                i10 += 4;
            }
            this.zza.zzt(i10);
            while (i9 < list.size()) {
                this.zza.zzg(((Integer) list.get(i9)).intValue());
                i9++;
            }
            return;
        }
        zzadz zzadzVar = (zzadz) list;
        if (!z7) {
            while (i9 < zzadzVar.size()) {
                this.zza.zzf(i8, zzadzVar.zze(i9));
                i9++;
            }
            return;
        }
        this.zza.zzr(i8, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < zzadzVar.size(); i13++) {
            zzadzVar.zze(i13);
            i12 += 4;
        }
        this.zza.zzt(i12);
        while (i9 < zzadzVar.size()) {
            this.zza.zzg(zzadzVar.zze(i9));
            i9++;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagu
    public final void zzz(int i8, long j8) {
        this.zza.zzh(i8, j8);
    }
}
