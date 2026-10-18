package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public final class zzj {
    public static long zza(ByteBuffer byteBuffer) {
        zzg(byteBuffer);
        return zze(byteBuffer, byteBuffer.position() + 16);
    }

    public static long zzb(ByteBuffer byteBuffer) {
        zzg(byteBuffer);
        return zze(byteBuffer, byteBuffer.position() + 12);
    }

    public static Pair zzc(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair pairZzf = zzf(randomAccessFile, 0);
        return pairZzf != null ? pairZzf : zzf(randomAccessFile, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
    }

    public static void zzd(ByteBuffer byteBuffer, long j8) {
        zzg(byteBuffer);
        int iPosition = byteBuffer.position() + 16;
        if (j8 < 0 || j8 > 4294967295L) {
            throw new IllegalArgumentException(O.z("uint32 value of out range: ", j8));
        }
        byteBuffer.putInt(byteBuffer.position() + iPosition, (int) j8);
    }

    private static long zze(ByteBuffer byteBuffer, int i8) {
        return ((long) byteBuffer.getInt(i8)) & 4294967295L;
    }

    private static Pair zzf(RandomAccessFile randomAccessFile, int i8) throws IOException {
        int i9;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(((int) Math.min(i8, (-22) + length)) + 22);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        long jCapacity = length - ((long) byteBufferAllocate.capacity());
        randomAccessFile.seek(jCapacity);
        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
        zzg(byteBufferAllocate);
        int iCapacity = byteBufferAllocate.capacity();
        if (iCapacity >= 22) {
            int i10 = iCapacity - 22;
            int iMin = Math.min(i10, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            int i11 = 0;
            while (true) {
                if (i11 >= iMin) {
                    i9 = -1;
                    break;
                }
                i9 = i10 - i11;
                if (byteBufferAllocate.getInt(i9) == 101010256 && ((char) byteBufferAllocate.getShort(i9 + 20)) == i11) {
                    break;
                }
                i11++;
            }
        } else {
            i9 = -1;
            break;
        }
        if (i9 == -1) {
            return null;
        }
        byteBufferAllocate.position(i9);
        ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
        byteBufferSlice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(byteBufferSlice, Long.valueOf(jCapacity + ((long) i9)));
    }

    private static void zzg(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }
}
