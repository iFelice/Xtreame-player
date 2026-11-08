package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import com.google.protobuf.U2;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.videolan.libvlc.MediaPlayer;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzi {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r2v29 */
    public static X509Certificate[][] zza(String str) throws Throwable {
        ?? r7;
        String str2 = "end > capacity: ";
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair pairZzc = zzj.zzc(randomAccessFile);
            try {
                if (pairZzc == null) {
                    throw new zzf("Not an APK file: ZIP End of Central Directory record not found in file with " + randomAccessFile.length() + " bytes");
                }
                ByteBuffer byteBuffer = (ByteBuffer) pairZzc.first;
                long jLongValue = ((Long) pairZzc.second).longValue();
                long j8 = (-20) + jLongValue;
                if (j8 >= 0) {
                    randomAccessFile.seek(j8);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new zzf("ZIP64 APK not supported");
                    }
                }
                long jZza = zzj.zza(byteBuffer);
                if (jZza >= jLongValue) {
                    throw new zzf("ZIP Central Directory offset out of range: " + jZza + ". ZIP End of Central Directory offset: " + jLongValue);
                }
                if (jZza + zzj.zzb(byteBuffer) != jLongValue) {
                    throw new zzf("ZIP Central Directory is not immediately followed by End of Central Directory");
                }
                if (jZza < 32) {
                    throw new zzf("APK too small for APK Signing Block. ZIP Central Directory offset: " + jZza);
                }
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                byteBufferAllocate.order(byteOrder);
                long j9 = jLongValue;
                randomAccessFile.seek(jZza - ((long) byteBufferAllocate.capacity()));
                randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
                if (byteBufferAllocate.getLong(8) != 2334950737559900225L || byteBufferAllocate.getLong(16) != 3617552046287187010L) {
                    throw new zzf("No APK Signing Block before ZIP Central Directory");
                }
                long j10 = byteBufferAllocate.getLong(0);
                if (j10 < byteBufferAllocate.capacity() || j10 > 2147483639) {
                    throw new zzf("APK Signing Block size out of range: " + j10);
                }
                ?? r8 = (int) (8 + j10);
                long j11 = jZza - ((long) r8);
                try {
                    if (j11 < 0) {
                        throw new zzf("APK Signing Block offset out of range: " + j11);
                    }
                    try {
                        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(r8);
                        byteBufferAllocate2.order(byteOrder);
                        r8 = randomAccessFile;
                        r8.seek(j11);
                        r8.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
                        long j12 = jZza;
                        long j13 = byteBufferAllocate2.getLong(0);
                        if (j13 != j10) {
                            throw new zzf("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j10);
                        }
                        Pair pairCreate = Pair.create(byteBufferAllocate2, Long.valueOf(j11));
                        ByteBuffer byteBuffer2 = (ByteBuffer) pairCreate.first;
                        long jLongValue2 = ((Long) pairCreate.second).longValue();
                        if (byteBuffer2.order() != byteOrder) {
                            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                        }
                        int iCapacity = byteBuffer2.capacity() - 24;
                        if (iCapacity < 8) {
                            throw new IllegalArgumentException("end < start: " + iCapacity + " < 8");
                        }
                        int iCapacity2 = byteBuffer2.capacity();
                        if (iCapacity > byteBuffer2.capacity()) {
                            throw new IllegalArgumentException("end > capacity: " + iCapacity + " > " + iCapacity2);
                        }
                        int iLimit = byteBuffer2.limit();
                        int iPosition = byteBuffer2.position();
                        try {
                            byteBuffer2.position(0);
                            byteBuffer2.limit(iCapacity);
                            byteBuffer2.position(8);
                            ByteBuffer byteBufferSlice = byteBuffer2.slice();
                            byteBufferSlice.order(byteBuffer2.order());
                            byteBuffer2.position(0);
                            byteBuffer2.limit(iLimit);
                            byteBuffer2.position(iPosition);
                            int i8 = 0;
                            while (byteBufferSlice.hasRemaining()) {
                                i8++;
                                if (byteBufferSlice.remaining() < 8) {
                                    throw new zzf("Insufficient data to read size of APK Signing Block entry #" + i8);
                                }
                                long j14 = byteBufferSlice.getLong();
                                if (j14 < 4 || j14 > 2147483647L) {
                                    throw new zzf("APK Signing Block entry #" + i8 + " size out of range: " + j14);
                                }
                                int i9 = (int) j14;
                                int iPosition2 = byteBufferSlice.position() + i9;
                                if (i9 > byteBufferSlice.remaining()) {
                                    throw new zzf("APK Signing Block entry #" + i8 + " size out of range: " + i9 + ", available: " + byteBufferSlice.remaining());
                                }
                                if (byteBufferSlice.getInt() == 1896449818) {
                                    X509Certificate[][] x509CertificateArrZzl = zzl(r8.getChannel(), new zze(zze(byteBufferSlice, i9 - 4), jLongValue2, j12, j9, byteBuffer, null));
                                    r8.close();
                                    try {
                                        r8.close();
                                    } catch (IOException unused) {
                                    }
                                    return x509CertificateArrZzl;
                                }
                                long j15 = j9;
                                long j16 = j12;
                                byteBufferSlice.position(iPosition2);
                                j12 = j16;
                                j9 = j15;
                            }
                            throw new zzf("No APK Signature Scheme v2 block in APK Signing Block");
                        } catch (Throwable th) {
                            byteBuffer2.position(0);
                            byteBuffer2.limit(iLimit);
                            byteBuffer2.position(iPosition);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r8 = randomAccessFile;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                r7 = r8;
            } catch (Throwable th4) {
                th = th4;
                r7 = str2;
            }
        } catch (Throwable th5) {
            th = th5;
            r7 = randomAccessFile;
        }
        try {
            r7.close();
        } catch (IOException unused2) {
        }
        throw th;
    }

    private static int zzb(int i8) {
        if (i8 == 1) {
            return 32;
        }
        if (i8 == 2) {
            return 64;
        }
        throw new IllegalArgumentException(r.f("Unknown content digest algorthm: ", i8));
    }

    private static int zzc(int i8) {
        if (i8 == 513) {
            return 1;
        }
        if (i8 == 514) {
            return 2;
        }
        if (i8 == 769) {
            return 1;
        }
        switch (i8) {
            case 257:
            case MediaPlayer.Event.Buffering /* 259 */:
                return 1;
            case MediaPlayer.Event.Opening /* 258 */:
            case MediaPlayer.Event.Playing /* 260 */:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(Long.toHexString(i8))));
        }
    }

    private static String zzd(int i8) {
        if (i8 == 1) {
            return "SHA-256";
        }
        if (i8 == 2) {
            return "SHA-512";
        }
        throw new IllegalArgumentException(r.f("Unknown content digest algorthm: ", i8));
    }

    private static ByteBuffer zze(ByteBuffer byteBuffer, int i8) {
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        int i9 = i8 + iPosition;
        if (i9 < iPosition || i9 > iLimit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i9);
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            byteBuffer.position(i9);
            return byteBufferSlice;
        } finally {
            byteBuffer.limit(iLimit);
        }
    }

    private static ByteBuffer zzf(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() < 4) {
            throw new IOException(r.f("Remaining buffer too short to contain length of length-prefixed field. Remaining: ", byteBuffer.remaining()));
        }
        int i8 = byteBuffer.getInt();
        if (i8 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i8 <= byteBuffer.remaining()) {
            return zze(byteBuffer, i8);
        }
        throw new IOException(U2.j("Length-prefixed field longer than remaining buffer. Field length: ", i8, ", remaining: ", byteBuffer.remaining()));
    }

    private static void zzg(int i8, byte[] bArr, int i9) {
        bArr[1] = (byte) (i8 & 255);
        bArr[2] = (byte) ((i8 >>> 8) & 255);
        bArr[3] = (byte) ((i8 >>> 16) & 255);
        bArr[4] = (byte) (i8 >> 24);
    }

    private static void zzh(Map map, FileChannel fileChannel, long j8, long j9, long j10, ByteBuffer byteBuffer) {
        if (map.isEmpty()) {
            throw new SecurityException("No digests provided");
        }
        zzc zzcVar = new zzc(fileChannel, 0L, j8);
        zzc zzcVar2 = new zzc(fileChannel, j9, j10 - j9);
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        zzj.zzd(byteBufferDuplicate, j8);
        zza zzaVar = new zza(byteBufferDuplicate);
        int size = map.size();
        int[] iArr = new int[size];
        Iterator it = map.keySet().iterator();
        int i8 = 0;
        while (it.hasNext()) {
            iArr[i8] = ((Integer) it.next()).intValue();
            i8++;
        }
        try {
            byte[][] bArrZzk = zzk(iArr, new zzb[]{zzcVar, zzcVar2, zzaVar});
            for (int i9 = 0; i9 < size; i9++) {
                int i10 = iArr[i9];
                if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i10)), bArrZzk[i9])) {
                    throw new SecurityException(zzd(i10).concat(" digest of contents did not verify"));
                }
            }
        } catch (DigestException e8) {
            throw new SecurityException("Failed to compute digest(s) of contents", e8);
        }
    }

    private static byte[] zzi(ByteBuffer byteBuffer) throws IOException {
        int i8 = byteBuffer.getInt();
        if (i8 < 0) {
            throw new IOException("Negative length");
        }
        if (i8 > byteBuffer.remaining()) {
            throw new IOException(U2.j("Underflow while reading length-prefixed value. Length: ", i8, ", available: ", byteBuffer.remaining()));
        }
        byte[] bArr = new byte[i8];
        byteBuffer.get(bArr);
        return bArr;
    }

    private static X509Certificate[] zzj(ByteBuffer byteBuffer, Map map, CertificateFactory certificateFactory) throws IOException {
        String str;
        Pair pairCreate;
        ByteBuffer byteBufferZzf = zzf(byteBuffer);
        ByteBuffer byteBufferZzf2 = zzf(byteBuffer);
        byte[] bArrZzi = zzi(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArrZzi2 = null;
        byte[] bArrZzi3 = null;
        int i8 = -1;
        int i9 = 0;
        while (byteBufferZzf2.hasRemaining()) {
            i9++;
            try {
                ByteBuffer byteBufferZzf3 = zzf(byteBufferZzf2);
                if (byteBufferZzf3.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i10 = byteBufferZzf3.getInt();
                arrayList.add(Integer.valueOf(i10));
                if (i10 != 513 && i10 != 514 && i10 != 769) {
                    switch (i10) {
                        case 257:
                        case MediaPlayer.Event.Opening /* 258 */:
                        case MediaPlayer.Event.Buffering /* 259 */:
                        case MediaPlayer.Event.Playing /* 260 */:
                            break;
                        default:
                            continue;
                    }
                }
                if (i8 != -1) {
                    int iZzc = zzc(i10);
                    int iZzc2 = zzc(i8);
                    if (iZzc != 1 && iZzc2 == 1) {
                    }
                }
                bArrZzi3 = zzi(byteBufferZzf3);
                i8 = i10;
            } catch (IOException e8) {
                e = e8;
                throw new SecurityException(r.f("Failed to parse signature record #", i9), e);
            } catch (BufferUnderflowException e9) {
                e = e9;
                throw new SecurityException(r.f("Failed to parse signature record #", i9), e);
            }
        }
        if (i8 == -1) {
            if (i9 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        if (i8 == 513 || i8 == 514) {
            str = "EC";
        } else if (i8 != 769) {
            switch (i8) {
                case 257:
                case MediaPlayer.Event.Opening /* 258 */:
                case MediaPlayer.Event.Buffering /* 259 */:
                case MediaPlayer.Event.Playing /* 260 */:
                    str = "RSA";
                    break;
                default:
                    throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(Long.toHexString(i8))));
            }
        } else {
            str = "DSA";
        }
        if (i8 == 513) {
            pairCreate = Pair.create("SHA256withECDSA", null);
        } else if (i8 == 514) {
            pairCreate = Pair.create("SHA512withECDSA", null);
        } else if (i8 != 769) {
            switch (i8) {
                case 257:
                    pairCreate = Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                    break;
                case MediaPlayer.Event.Opening /* 258 */:
                    pairCreate = Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                    break;
                case MediaPlayer.Event.Buffering /* 259 */:
                    pairCreate = Pair.create("SHA256withRSA", null);
                    break;
                case MediaPlayer.Event.Playing /* 260 */:
                    pairCreate = Pair.create("SHA512withRSA", null);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(Long.toHexString(i8))));
            }
        } else {
            pairCreate = Pair.create("SHA256withDSA", null);
        }
        String str2 = (String) pairCreate.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) pairCreate.second;
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArrZzi));
            Signature signature = Signature.getInstance(str2);
            signature.initVerify(publicKeyGeneratePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(byteBufferZzf);
            if (!signature.verify(bArrZzi3)) {
                throw new SecurityException(String.valueOf(str2).concat(" signature did not verify"));
            }
            byteBufferZzf.clear();
            ByteBuffer byteBufferZzf4 = zzf(byteBufferZzf);
            ArrayList arrayList2 = new ArrayList();
            int i11 = 0;
            while (byteBufferZzf4.hasRemaining()) {
                i11++;
                try {
                    ByteBuffer byteBufferZzf5 = zzf(byteBufferZzf4);
                    if (byteBufferZzf5.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i12 = byteBufferZzf5.getInt();
                    arrayList2.add(Integer.valueOf(i12));
                    if (i12 == i8) {
                        bArrZzi2 = zzi(byteBufferZzf5);
                    }
                } catch (IOException e10) {
                    e = e10;
                    throw new IOException(r.f("Failed to parse digest record #", i11), e);
                } catch (BufferUnderflowException e11) {
                    e = e11;
                    throw new IOException(r.f("Failed to parse digest record #", i11), e);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int iZzc3 = zzc(i8);
            byte[] bArr = (byte[]) map.put(Integer.valueOf(iZzc3), bArrZzi2);
            if (bArr != null && !MessageDigest.isEqual(bArr, bArrZzi2)) {
                throw new SecurityException(zzd(iZzc3).concat(" contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer byteBufferZzf6 = zzf(byteBufferZzf);
            ArrayList arrayList3 = new ArrayList();
            int i13 = 0;
            while (byteBufferZzf6.hasRemaining()) {
                i13++;
                byte[] bArrZzi4 = zzi(byteBufferZzf6);
                try {
                    arrayList3.add(new zzg((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArrZzi4)), bArrZzi4));
                } catch (CertificateException e12) {
                    throw new SecurityException(r.f("Failed to decode certificate #", i13), e12);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (Arrays.equals(bArrZzi, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
            }
            throw new SecurityException("Public key mismatch between certificate and signature record");
        } catch (InvalidAlgorithmParameterException e13) {
            e = e13;
            throw new SecurityException(r.g("Failed to verify ", str2, " signature"), e);
        } catch (InvalidKeyException e14) {
            e = e14;
            throw new SecurityException(r.g("Failed to verify ", str2, " signature"), e);
        } catch (NoSuchAlgorithmException e15) {
            e = e15;
            throw new SecurityException(r.g("Failed to verify ", str2, " signature"), e);
        } catch (SignatureException e16) {
            e = e16;
            throw new SecurityException(r.g("Failed to verify ", str2, " signature"), e);
        } catch (InvalidKeySpecException e17) {
            e = e17;
            throw new SecurityException(r.g("Failed to verify ", str2, " signature"), e);
        }
    }

    private static byte[][] zzk(int[] iArr, zzb[] zzbVarArr) throws DigestException {
        long j8;
        int i8;
        int length;
        int i9 = 0;
        long j9 = 0;
        long jZza = 0;
        int i10 = 0;
        while (true) {
            j8 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (i10 >= 3) {
                break;
            }
            jZza += (zzbVarArr[i10].zza() + 1048575) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i10++;
        }
        if (jZza >= 2097151) {
            throw new DigestException(O.z("Too many chunks: ", jZza));
        }
        byte[][] bArr = new byte[iArr.length][];
        int i11 = 0;
        while (true) {
            length = iArr.length;
            if (i11 >= length) {
                break;
            }
            int i12 = (int) jZza;
            byte[] bArr2 = new byte[(zzb(iArr[i11]) * i12) + 5];
            bArr2[0] = 90;
            zzg(i12, bArr2, 1);
            bArr[i11] = bArr2;
            i11++;
        }
        byte[] bArr3 = new byte[5];
        bArr3[0] = -91;
        MessageDigest[] messageDigestArr = new MessageDigest[length];
        for (int i13 = 0; i13 < iArr.length; i13++) {
            String strZzd = zzd(iArr[i13]);
            try {
                messageDigestArr[i13] = MessageDigest.getInstance(strZzd);
            } catch (NoSuchAlgorithmException e8) {
                throw new RuntimeException(strZzd.concat(" digest not supported"), e8);
            }
        }
        int i14 = 0;
        int i15 = 0;
        for (i8 = 3; i14 < i8; i8 = 3) {
            zzb zzbVar = zzbVarArr[i14];
            long j10 = j9;
            long jZza2 = zzbVar.zza();
            while (jZza2 > j9) {
                int iMin = (int) Math.min(jZza2, j8);
                zzg(iMin, bArr3, 1);
                for (int i16 = 0; i16 < length; i16++) {
                    messageDigestArr[i16].update(bArr3);
                }
                long j11 = j10;
                try {
                    zzbVar.zzb(messageDigestArr, j11, iMin);
                    byte[] bArr4 = bArr3;
                    int i17 = 0;
                    while (i17 < iArr.length) {
                        int i18 = iArr[i17];
                        zzb zzbVar2 = zzbVar;
                        byte[] bArr5 = bArr[i17];
                        int iZzb = zzb(i18);
                        int i19 = length;
                        MessageDigest messageDigest = messageDigestArr[i17];
                        MessageDigest[] messageDigestArr2 = messageDigestArr;
                        int iDigest = messageDigest.digest(bArr5, (i15 * iZzb) + 5, iZzb);
                        if (iDigest != iZzb) {
                            throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + iDigest);
                        }
                        i17++;
                        zzbVar = zzbVar2;
                        length = i19;
                        messageDigestArr = messageDigestArr2;
                    }
                    long j12 = iMin;
                    long j13 = j11 + j12;
                    jZza2 -= j12;
                    i15++;
                    j9 = 0;
                    j8 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                    bArr3 = bArr4;
                    j10 = j13;
                    messageDigestArr = messageDigestArr;
                } catch (IOException e9) {
                    throw new DigestException(U2.j("Failed to digest chunk #", i15, " of section #", i9), e9);
                }
            }
            i9++;
            i14++;
            j9 = 0;
            j8 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        }
        byte[][] bArr6 = new byte[iArr.length][];
        for (int i20 = 0; i20 < iArr.length; i20++) {
            int i21 = iArr[i20];
            byte[] bArr7 = bArr[i20];
            String strZzd2 = zzd(i21);
            try {
                bArr6[i20] = MessageDigest.getInstance(strZzd2).digest(bArr7);
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(strZzd2.concat(" digest not supported"), e10);
            }
        }
        return bArr6;
    }

    private static X509Certificate[][] zzl(FileChannel fileChannel, zze zzeVar) {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer byteBufferZzf = zzf(zzeVar.zza);
                int i8 = 0;
                while (byteBufferZzf.hasRemaining()) {
                    i8++;
                    try {
                        arrayList.add(zzj(zzf(byteBufferZzf), map, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e8) {
                        throw new SecurityException(O.y("Failed to parse/verify signer #", i8, " block"), e8);
                    }
                }
                if (i8 <= 0) {
                    throw new SecurityException("No signers found");
                }
                if (map.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                zzh(map, fileChannel, zzeVar.zzb, zzeVar.zzc, zzeVar.zzd, zzeVar.zze);
                return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]);
            } catch (IOException e9) {
                throw new SecurityException("Failed to read list of signers", e9);
            }
        } catch (CertificateException e10) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e10);
        }
    }
}
