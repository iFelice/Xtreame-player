package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzadr extends zzacj implements RandomAccess, zzaed {
    private float[] zza;
    private int zzb;

    static {
        new zzadr(new float[0], 0, false);
    }

    public zzadr() {
        this(new float[10], 0, true);
    }

    private final String zzg(int i8) {
        return U2.j("Index:", i8, ", Size:", this.zzb);
    }

    private final void zzh(int i8) {
        if (i8 < 0 || i8 >= this.zzb) {
            throw new IndexOutOfBoundsException(zzg(i8));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i8, Object obj) {
        int i9;
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.zzb)) {
            throw new IndexOutOfBoundsException(zzg(i8));
        }
        int i10 = i8 + 1;
        float[] fArr = this.zza;
        if (i9 < fArr.length) {
            System.arraycopy(fArr, i8, fArr, i10, i9 - i8);
        } else {
            float[] fArr2 = new float[O.v(i9, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i8);
            System.arraycopy(this.zza, i8, fArr2, i10, this.zzb - i8);
            this.zza = fArr2;
        }
        this.zza[i8] = fFloatValue;
        this.zzb++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzaee.zzb;
        collection.getClass();
        if (!(collection instanceof zzadr)) {
            return super.addAll(collection);
        }
        zzadr zzadrVar = (zzadr) collection;
        int i8 = zzadrVar.zzb;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.zzb;
        if (d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        float[] fArr = this.zza;
        if (i10 > fArr.length) {
            this.zza = Arrays.copyOf(fArr, i10);
        }
        System.arraycopy(zzadrVar.zza, 0, this.zza, this.zzb, zzadrVar.zzb);
        this.zzb = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzadr)) {
            return super.equals(obj);
        }
        zzadr zzadrVar = (zzadr) obj;
        if (this.zzb != zzadrVar.zzb) {
            return false;
        }
        float[] fArr = zzadrVar.zza;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            if (Float.floatToIntBits(this.zza[i8]) != Float.floatToIntBits(fArr[i8])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        zzh(i8);
        return Float.valueOf(this.zza[i8]);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.zza[i8]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i8 = this.zzb;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.zza[i9] == fFloatValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        zzh(i8);
        float[] fArr = this.zza;
        float f8 = fArr[i8];
        int i9 = this.zzb;
        if (i8 < i9 - 1) {
            System.arraycopy(fArr, i8 + 1, fArr, i8, (i9 - i8) - 1);
        }
        this.zzb--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f8);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.zza;
        System.arraycopy(fArr, i9, fArr, i8, this.zzb - i9);
        this.zzb -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        zzh(i8);
        float[] fArr = this.zza;
        float f8 = fArr[i8];
        fArr[i8] = fFloatValue;
        return Float.valueOf(f8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaed
    public final /* bridge */ /* synthetic */ zzaed zzd(int i8) {
        if (i8 >= this.zzb) {
            return new zzadr(Arrays.copyOf(this.zza, i8), this.zzb, true);
        }
        throw new IllegalArgumentException();
    }

    public final float zze(int i8) {
        zzh(i8);
        return this.zza[i8];
    }

    public final void zzf(float f8) {
        zza();
        int i8 = this.zzb;
        float[] fArr = this.zza;
        if (i8 == fArr.length) {
            float[] fArr2 = new float[O.v(i8, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i8);
            this.zza = fArr2;
        }
        float[] fArr3 = this.zza;
        int i9 = this.zzb;
        this.zzb = i9 + 1;
        fArr3[i9] = f8;
    }

    private zzadr(float[] fArr, int i8, boolean z7) {
        super(z7);
        this.zza = fArr;
        this.zzb = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzf(((Float) obj).floatValue());
        return true;
    }
}
