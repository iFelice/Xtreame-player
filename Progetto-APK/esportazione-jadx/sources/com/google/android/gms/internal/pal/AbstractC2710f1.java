package com.google.android.gms.internal.pal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2710f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f23810a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static MessageDigest f23811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f23812c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f23813d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CountDownLatch f23814e = new CountDownLatch(1);

    public static String a(C2765m0 c2765m0, String str) throws GeneralSecurityException {
        byte[] bArrD;
        byte[] bArrB = c2765m0.b();
        if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23939p)).booleanValue()) {
            int length = bArrB.length;
            Vector vector = null;
            if (length > 0) {
                int i8 = (length + 254) / 255;
                Vector vector2 = new Vector();
                for (int i9 = 0; i9 < i8; i9++) {
                    int i10 = i9 * 255;
                    try {
                        int length2 = bArrB.length;
                        if (length2 - i10 > 255) {
                            length2 = i10 + 255;
                        }
                        vector2.add(Arrays.copyOfRange(bArrB, i10, length2));
                    } catch (IndexOutOfBoundsException unused) {
                    }
                }
                vector = vector2;
            }
            if (vector == null || vector.size() == 0) {
                L4 l4M = C2765m0.M();
                l4M.g(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                bArrD = d(((C2765m0) l4M.d()).b(), str, true);
            } else {
                P0 p0M = Q0.m();
                int size = vector.size();
                for (int i11 = 0; i11 < size; i11++) {
                    C2796q c2796qO = r.o(0, d((byte[]) vector.get(i11), str, false), 256);
                    if (p0M.f23476I) {
                        p0M.f();
                        p0M.f23476I = false;
                    }
                    Q0.n((Q0) p0M.f23475H, c2796qO);
                }
                byte[] bArrC = c(bArrB);
                C2796q c2796qO2 = r.o(0, bArrC, bArrC.length);
                if (p0M.f23476I) {
                    p0M.f();
                    p0M.f23476I = false;
                }
                Q0.o((Q0) p0M.f23475H, c2796qO2);
                bArrD = ((Q0) p0M.d()).b();
            }
        } else {
            if (AbstractC2864y4.f24086P == null) {
                throw new GeneralSecurityException();
            }
            byte[] bArrZza = AbstractC2864y4.f24086P.zza(bArrB, str != null ? str.getBytes() : new byte[0]);
            P0 p0M2 = Q0.m();
            C2796q c2796qO3 = r.o(0, bArrZza, bArrZza.length);
            if (p0M2.f23476I) {
                p0M2.f();
                p0M2.f23476I = false;
            }
            Q0.n((Q0) p0M2.f23475H, c2796qO3);
            if (p0M2.f23476I) {
                p0M2.f();
                p0M2.f23476I = false;
            }
            Q0.p((Q0) p0M2.f23475H);
            bArrD = ((Q0) p0M2.d()).b();
        }
        return AbstractC2864y4.p(bArrD, true);
    }

    public static void b() {
        synchronized (f23813d) {
            try {
                if (!f23810a) {
                    f23810a = true;
                    new Thread(new RunnableC2702e1()).start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static byte[] c(byte[] bArr) {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        synchronized (f23812c) {
            try {
                b();
                MessageDigest messageDigest2 = null;
                try {
                    if (f23814e.await(2L, TimeUnit.SECONDS) && (messageDigest = f23811b) != null) {
                        messageDigest2 = messageDigest;
                    }
                } catch (InterruptedException unused) {
                }
                if (messageDigest2 == null) {
                    throw new NoSuchAlgorithmException("Cannot compute hash");
                }
                messageDigest2.reset();
                messageDigest2.update(bArr);
                bArrDigest = f23811b.digest();
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrDigest;
    }

    public static byte[] d(byte[] bArr, String str, boolean z7) {
        byte[] bArrArray;
        int i8 = true != z7 ? 255 : 239;
        if (bArr.length > i8) {
            L4 l4M = C2765m0.M();
            l4M.g(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            bArr = ((C2765m0) l4M.d()).b();
        }
        int length = bArr.length;
        if (length < i8) {
            byte[] bArr2 = new byte[i8 - length];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(i8 + 1).put((byte) length).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(i8 + 1).put((byte) length).put(bArr).array();
        }
        if (z7) {
            bArrArray = ByteBuffer.allocate(256).put(c(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        InterfaceC2718g1[] interfaceC2718g1Arr = (InterfaceC2718g1[]) new com.google.android.gms.internal.ads.B4(1).f12124G2;
        int length2 = interfaceC2718g1Arr.length;
        for (int i9 = 0; i9 < 12; i9++) {
            ((C2726h1) interfaceC2718g1Arr[i9]).a(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new P2.b(str.getBytes("UTF-8"), 2).c(bArr3);
        }
        return bArr3;
    }
}
