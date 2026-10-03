package com.google.ads.interactivemedia.v3.internal;

import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: loaded from: classes.dex */
final class zzacm {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    public static int zza(byte[] bArr, int i8, zzacl zzaclVar) throws zzaeg {
        int iZzh = zzh(bArr, i8, zzaclVar);
        int i9 = zzaclVar.zza;
        if (i9 < 0) {
            throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i9 > bArr.length - iZzh) {
            throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i9 == 0) {
            zzaclVar.zzc = zzacw.zzb;
            return iZzh;
        }
        zzaclVar.zzc = zzacw.zzp(bArr, iZzh, i9);
        return iZzh + i9;
    }

    public static int zzb(byte[] bArr, int i8) {
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        return ((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16);
    }

    public static int zzc(zzaft zzaftVar, byte[] bArr, int i8, int i9, int i10, zzacl zzaclVar) throws zzaeg {
        Object objZze = zzaftVar.zze();
        int iZzl = zzl(objZze, zzaftVar, bArr, i8, i9, i10, zzaclVar);
        zzaftVar.zzf(objZze);
        zzaclVar.zzc = objZze;
        return iZzl;
    }

    public static int zzd(zzaft zzaftVar, byte[] bArr, int i8, int i9, zzacl zzaclVar) throws zzaeg {
        Object objZze = zzaftVar.zze();
        int iZzm = zzm(objZze, zzaftVar, bArr, i8, i9, zzaclVar);
        zzaftVar.zzf(objZze);
        zzaclVar.zzc = objZze;
        return iZzm;
    }

    public static int zze(zzaft zzaftVar, int i8, byte[] bArr, int i9, int i10, zzaed zzaedVar, zzacl zzaclVar) throws zzaeg {
        int iZzd = zzd(zzaftVar, bArr, i9, i10, zzaclVar);
        zzaedVar.add(zzaclVar.zzc);
        while (iZzd < i10) {
            int iZzh = zzh(bArr, iZzd, zzaclVar);
            if (i8 != zzaclVar.zza) {
                break;
            }
            iZzd = zzd(zzaftVar, bArr, iZzh, i10, zzaclVar);
            zzaedVar.add(zzaclVar.zzc);
        }
        return iZzd;
    }

    public static int zzf(byte[] bArr, int i8, zzaed zzaedVar, zzacl zzaclVar) throws zzaeg {
        zzadz zzadzVar = (zzadz) zzaedVar;
        int iZzh = zzh(bArr, i8, zzaclVar);
        int i9 = zzaclVar.zza + iZzh;
        while (iZzh < i9) {
            iZzh = zzh(bArr, iZzh, zzaclVar);
            zzadzVar.zzg(zzaclVar.zza);
        }
        if (iZzh == i9) {
            return iZzh;
        }
        throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int zzg(int i8, byte[] bArr, int i9, int i10, zzagi zzagiVar, zzacl zzaclVar) throws zzaeg {
        if ((i8 >>> 3) == 0) {
            throw new zzaeg("Protocol message contained an invalid tag (zero).");
        }
        int i11 = i8 & 7;
        if (i11 == 0) {
            int iZzk = zzk(bArr, i9, zzaclVar);
            zzagiVar.zzj(i8, Long.valueOf(zzaclVar.zzb));
            return iZzk;
        }
        if (i11 == 1) {
            zzagiVar.zzj(i8, Long.valueOf(zzn(bArr, i9)));
            return i9 + 8;
        }
        if (i11 == 2) {
            int iZzh = zzh(bArr, i9, zzaclVar);
            int i12 = zzaclVar.zza;
            if (i12 < 0) {
                throw new zzaeg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i12 > bArr.length - iZzh) {
                throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i12 == 0) {
                zzagiVar.zzj(i8, zzacw.zzb);
            } else {
                zzagiVar.zzj(i8, zzacw.zzp(bArr, iZzh, i12));
            }
            return iZzh + i12;
        }
        if (i11 != 3) {
            if (i11 != 5) {
                throw new zzaeg("Protocol message contained an invalid tag (zero).");
            }
            zzagiVar.zzj(i8, Integer.valueOf(zzb(bArr, i9)));
            return i9 + 4;
        }
        int i13 = (i8 & (-8)) | 4;
        zzagi zzagiVarZzf = zzagi.zzf();
        int i14 = zzaclVar.zze + 1;
        zzaclVar.zze = i14;
        zzo(i14);
        int i15 = 0;
        while (i9 < i10) {
            int iZzh2 = zzh(bArr, i9, zzaclVar);
            i15 = zzaclVar.zza;
            if (i15 == i13) {
                i9 = iZzh2;
                break;
            }
            i9 = zzg(i15, bArr, iZzh2, i10, zzagiVarZzf, zzaclVar);
        }
        zzaclVar.zze--;
        if (i9 > i10 || i15 != i13) {
            throw new zzaeg("Failed to parse the message.");
        }
        zzagiVar.zzj(i8, zzagiVarZzf);
        return i9;
    }

    public static int zzh(byte[] bArr, int i8, zzacl zzaclVar) {
        int i9 = i8 + 1;
        byte b8 = bArr[i8];
        if (b8 < 0) {
            return zzi(b8, bArr, i9, zzaclVar);
        }
        zzaclVar.zza = b8;
        return i9;
    }

    public static int zzi(int i8, byte[] bArr, int i9, zzacl zzaclVar) {
        byte b8 = bArr[i9];
        int i10 = i9 + 1;
        int i11 = i8 & 127;
        if (b8 >= 0) {
            zzaclVar.zza = i11 | (b8 << 7);
            return i10;
        }
        int i12 = i11 | ((b8 & 127) << 7);
        int i13 = i9 + 2;
        byte b9 = bArr[i10];
        if (b9 >= 0) {
            zzaclVar.zza = i12 | (b9 << MqttWireMessage.MESSAGE_TYPE_DISCONNECT);
            return i13;
        }
        int i14 = i12 | ((b9 & 127) << 14);
        int i15 = i9 + 3;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            zzaclVar.zza = i14 | (b10 << 21);
            return i15;
        }
        int i16 = i14 | ((b10 & 127) << 21);
        int i17 = i9 + 4;
        byte b11 = bArr[i15];
        if (b11 >= 0) {
            zzaclVar.zza = i16 | (b11 << 28);
            return i17;
        }
        int i18 = i16 | ((b11 & 127) << 28);
        while (true) {
            int i19 = i17 + 1;
            if (bArr[i17] >= 0) {
                zzaclVar.zza = i18;
                return i19;
            }
            i17 = i19;
        }
    }

    public static int zzj(int i8, byte[] bArr, int i9, int i10, zzaed zzaedVar, zzacl zzaclVar) {
        zzadz zzadzVar = (zzadz) zzaedVar;
        int iZzh = zzh(bArr, i9, zzaclVar);
        zzadzVar.zzg(zzaclVar.zza);
        while (iZzh < i10) {
            int iZzh2 = zzh(bArr, iZzh, zzaclVar);
            if (i8 != zzaclVar.zza) {
                break;
            }
            iZzh = zzh(bArr, iZzh2, zzaclVar);
            zzadzVar.zzg(zzaclVar.zza);
        }
        return iZzh;
    }

    public static int zzk(byte[] bArr, int i8, zzacl zzaclVar) {
        long j8 = bArr[i8];
        int i9 = i8 + 1;
        if (j8 >= 0) {
            zzaclVar.zzb = j8;
            return i9;
        }
        int i10 = i8 + 2;
        byte b8 = bArr[i9];
        long j9 = (j8 & 127) | (((long) (b8 & 127)) << 7);
        int i11 = 7;
        while (b8 < 0) {
            int i12 = i10 + 1;
            byte b9 = bArr[i10];
            i11 += 7;
            j9 |= ((long) (b9 & 127)) << i11;
            b8 = b9;
            i10 = i12;
        }
        zzaclVar.zzb = j9;
        return i10;
    }

    public static int zzl(Object obj, zzaft zzaftVar, byte[] bArr, int i8, int i9, int i10, zzacl zzaclVar) throws zzaeg {
        zzafe zzafeVar = (zzafe) zzaftVar;
        int i11 = zzaclVar.zze + 1;
        zzaclVar.zze = i11;
        zzo(i11);
        int iZzc = zzafeVar.zzc(obj, bArr, i8, i9, i10, zzaclVar);
        zzaclVar.zze--;
        zzaclVar.zzc = obj;
        return iZzc;
    }

    public static int zzm(Object obj, zzaft zzaftVar, byte[] bArr, int i8, int i9, zzacl zzaclVar) throws zzaeg {
        int iZzi = i8 + 1;
        int i10 = bArr[i8];
        if (i10 < 0) {
            iZzi = zzi(i10, bArr, iZzi, zzaclVar);
            i10 = zzaclVar.zza;
        }
        int i11 = iZzi;
        if (i10 < 0 || i10 > i9 - i11) {
            throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i12 = zzaclVar.zze + 1;
        zzaclVar.zze = i12;
        zzo(i12);
        int i13 = i10 + i11;
        zzaftVar.zzi(obj, bArr, i11, i13, zzaclVar);
        zzaclVar.zze--;
        zzaclVar.zzc = obj;
        return i13;
    }

    public static long zzn(byte[] bArr, int i8) {
        return (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48) | ((((long) bArr[i8 + 7]) & 255) << 56);
    }

    private static void zzo(int i8) throws zzaeg {
        if (i8 >= zzb) {
            throw new zzaeg("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}
