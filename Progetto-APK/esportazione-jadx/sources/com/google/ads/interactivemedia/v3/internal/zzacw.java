package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzacw implements Iterable, Serializable {
    public static final zzacw zzb = new zzacv(zzaee.zzb);
    private int zza = 0;

    static {
        int i8 = zzack.zza;
    }

    private static zzacw zzc(Iterator it, int i8) {
        if (i8 <= 0) {
            throw new IllegalArgumentException(O.y("length (", i8, ") must be >= 1"));
        }
        if (i8 == 1) {
            return (zzacw) it.next();
        }
        int i9 = i8 >>> 1;
        zzacw zzacwVarZzc = zzc(it, i9);
        zzacw zzacwVarZzc2 = zzc(it, i8 - i9);
        if (d.API_PRIORITY_OTHER - zzacwVarZzc.zzd() >= zzacwVarZzc2.zzd()) {
            return zzafs.zzv(zzacwVarZzc, zzacwVarZzc2);
        }
        throw new IllegalArgumentException(U2.j("ByteString would be too long: ", zzacwVarZzc.zzd(), MqttTopic.SINGLE_LEVEL_WILDCARD, zzacwVarZzc2.zzd()));
    }

    public static int zzm(int i8, int i9, int i10) {
        int i11 = i9 - i8;
        if ((i8 | i9 | i11 | (i10 - i9)) >= 0) {
            return i11;
        }
        if (i8 < 0) {
            throw new IndexOutOfBoundsException(O.y("Beginning index: ", i8, " < 0"));
        }
        if (i9 < i8) {
            throw new IndexOutOfBoundsException(U2.j("Beginning index larger than ending index: ", i8, ", ", i9));
        }
        throw new IndexOutOfBoundsException(U2.j("End index: ", i9, " >= ", i10));
    }

    public static zzacw zzp(byte[] bArr, int i8, int i9) {
        zzm(i8, i8 + i9, bArr.length);
        byte[] bArr2 = new byte[i9];
        System.arraycopy(bArr, i8, bArr2, 0, i9);
        return new zzacv(bArr2);
    }

    public static zzacw zzq(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        int iMin = 256;
        while (true) {
            byte[] bArr = new byte[iMin];
            int i8 = 0;
            while (i8 < iMin) {
                int i9 = inputStream.read(bArr, i8, iMin - i8);
                if (i9 == -1) {
                    break;
                }
                i8 += i9;
            }
            zzacw zzacwVarZzp = i8 == 0 ? null : zzp(bArr, 0, i8);
            if (zzacwVarZzp == null) {
                break;
            }
            arrayList.add(zzacwVarZzp);
            iMin = Math.min(iMin + iMin, 8192);
        }
        int size = arrayList.size();
        return size == 0 ? zzb : zzc(arrayList.iterator(), size);
    }

    public static void zzr(int i8, int i9) {
        if (((i9 - (i8 + 1)) | i8) < 0) {
            if (i8 >= 0) {
                throw new ArrayIndexOutOfBoundsException(U2.j("Index > length: ", i8, ", ", i9));
            }
            throw new ArrayIndexOutOfBoundsException(r.f("Index < 0: ", i8));
        }
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZzi = this.zza;
        if (iZzi == 0) {
            int iZzd = zzd();
            iZzi = zzi(iZzd, 0, iZzd);
            if (iZzi == 0) {
                iZzi = 1;
            }
            this.zza = iZzi;
        }
        return iZzi;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iZzd = zzd();
        String strZza = zzd() <= 50 ? zzagf.zza(this) : zzagf.zza(zzj(0, 47)).concat("...");
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iZzd);
        sb.append(" contents=\"");
        return r.j(sb, strZza, "\">");
    }

    public abstract byte zza(int i8);

    public abstract byte zzb(int i8);

    public abstract int zzd();

    public abstract void zze(byte[] bArr, int i8, int i9, int i10);

    public abstract int zzf();

    public abstract boolean zzh();

    public abstract int zzi(int i8, int i9, int i10);

    public abstract zzacw zzj(int i8, int i9);

    public abstract zzada zzk();

    public abstract void zzl(zzaco zzacoVar);

    public final int zzn() {
        return this.zza;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public zzacs iterator() {
        return new zzacp(this);
    }

    @Deprecated
    public final void zzs(byte[] bArr, int i8, int i9, int i10) {
        zzm(0, i10, zzd());
        zzm(i9, i9 + i10, bArr.length);
        if (i10 > 0) {
            zze(bArr, 0, i9, i10);
        }
    }

    public final byte[] zzt() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return zzaee.zzb;
        }
        byte[] bArr = new byte[iZzd];
        zze(bArr, 0, 0, iZzd);
        return bArr;
    }
}
