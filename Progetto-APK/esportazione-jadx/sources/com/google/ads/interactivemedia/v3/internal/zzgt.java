package com.google.ads.interactivemedia.v3.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzgt {
    static boolean zza = false;
    public static final /* synthetic */ int zzc = 0;
    private static MessageDigest zzd;
    private static final Object zze = new Object();
    private static final Object zzf = new Object();
    static final CountDownLatch zzb = new CountDownLatch(1);

    public static String zza(byte[] bArr, String str) {
        byte[] bArrZzg;
        Vector vectorZzb = zzb(bArr, 255);
        if (vectorZzb == null || vectorZzb.isEmpty()) {
            bArrZzg = zzg(zzf(4096).zzav(), str, true);
        } else {
            zzcg zzcgVarZza = zzch.zza();
            int size = vectorZzb.size();
            for (int i8 = 0; i8 < size; i8++) {
                zzcgVarZza.zza(zzacw.zzp(zzg((byte[]) vectorZzb.get(i8), str, false), 0, 256));
            }
            byte[] bArrZze = zze(bArr);
            zzacw zzacwVar = zzacw.zzb;
            zzcgVarZza.zzb(zzacw.zzp(bArrZze, 0, bArrZze.length));
            bArrZzg = ((zzch) zzcgVarZza.zzal()).zzav();
        }
        return zzgl.zza(bArrZzg, true);
    }

    public static Vector zzb(byte[] bArr, int i8) {
        int length = bArr.length;
        if (length <= 0) {
            return null;
        }
        int i9 = length + 254;
        Vector vector = new Vector();
        for (int i10 = 0; i10 < i9 / 255; i10++) {
            int i11 = i10 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i11 > 255) {
                    length2 = i11 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i11, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    public static void zzd() {
        synchronized (zzf) {
            try {
                if (!zza) {
                    zza = true;
                    new Thread(new zzgs(null)).start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static byte[] zze(byte[] bArr) {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        synchronized (zze) {
            try {
                zzd();
                MessageDigest messageDigest2 = null;
                try {
                    if (zzb.await(2L, TimeUnit.SECONDS) && (messageDigest = zzd) != null) {
                        messageDigest2 = messageDigest;
                    }
                } catch (InterruptedException unused) {
                }
                if (messageDigest2 == null) {
                    throw new NoSuchAlgorithmException("Cannot compute hash");
                }
                messageDigest2.reset();
                messageDigest2.update(bArr);
                bArrDigest = zzd.digest();
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrDigest;
    }

    public static zzbp zzf(int i8) {
        zzan zzanVarZza = zzbp.zza();
        zzanVarZza.zzD(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
        return (zzbp) zzanVarZza.zzal();
    }

    private static byte[] zzg(byte[] bArr, String str, boolean z7) {
        byte[] bArrArray;
        int length = bArr.length;
        int i8 = true != z7 ? 255 : 239;
        if (length > i8) {
            bArr = zzf(4096).zzav();
        }
        int i9 = i8 + 1;
        int length2 = bArr.length;
        byte b8 = (byte) length2;
        if (length2 < i8) {
            byte[] bArr2 = new byte[i8 - length2];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(i9).put(b8).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(i9).put(b8).put(bArr).array();
        }
        if (z7) {
            bArrArray = ByteBuffer.allocate(256).put(zze(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        zzgu[] zzguVarArr = new zzht().zzcG;
        int length3 = zzguVarArr.length;
        for (int i10 = 0; i10 < 12; i10++) {
            zzguVarArr[i10].zza(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzgj(str.getBytes("UTF-8")).zza(bArr3);
        }
        return bArr3;
    }
}
