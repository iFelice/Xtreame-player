package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2223x4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f21830a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static MessageDigest f21831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f21832c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f21833d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CountDownLatch f21834e = new CountDownLatch(1);

    public static String a(byte[] bArr, String str) {
        byte[] bArrD;
        int length = bArr.length;
        Vector vector = null;
        if (length > 0) {
            int i8 = length + 254;
            Vector vector2 = new Vector();
            for (int i9 = 0; i9 < i8 / 255; i9++) {
                int i10 = i9 * 255;
                try {
                    int length2 = bArr.length;
                    if (length2 - i10 > 255) {
                        length2 = i10 + 255;
                    }
                    vector2.add(Arrays.copyOfRange(bArr, i10, length2));
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            vector = vector2;
        }
        if (vector == null || vector.isEmpty()) {
            V3 v3A0 = C1496j4.a0();
            v3A0.d();
            C1496j4.K0((C1496j4) v3A0.f20255H, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            bArrD = d(((C1496j4) v3A0.b()).d(), str, true);
        } else {
            C1963s4 c1963s4A = C2015t4.A();
            int size = vector.size();
            for (int i11 = 0; i11 < size; i11++) {
                VG vgY = XG.y(0, d((byte[]) vector.get(i11), str, false), 256);
                c1963s4A.d();
                C2015t4.B((C2015t4) c1963s4A.f20255H, vgY);
            }
            byte[] bArrC = c(bArr);
            VG vg = XG.f17401H;
            VG vgY2 = XG.y(0, bArrC, bArrC.length);
            c1963s4A.d();
            C2015t4.C((C2015t4) c1963s4A.f20255H, vgY2);
            bArrD = ((C2015t4) c1963s4A.b()).d();
        }
        return Base64.encodeToString(bArrD, 11);
    }

    public static void b() {
        synchronized (f21833d) {
            try {
                if (!f21830a) {
                    f21830a = true;
                    new Thread(new RunnableC2171w4(0, 0)).start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static byte[] c(byte[] bArr) {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        synchronized (f21832c) {
            try {
                b();
                MessageDigest messageDigest2 = null;
                try {
                    if (f21834e.await(2L, TimeUnit.SECONDS) && (messageDigest = f21831b) != null) {
                        messageDigest2 = messageDigest;
                    }
                } catch (InterruptedException unused) {
                }
                if (messageDigest2 == null) {
                    throw new NoSuchAlgorithmException("Cannot compute hash");
                }
                messageDigest2.reset();
                messageDigest2.update(bArr);
                bArrDigest = f21831b.digest();
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrDigest;
    }

    public static byte[] d(byte[] bArr, String str, boolean z7) {
        byte[] bArrArray;
        int length = bArr.length;
        int i8 = true != z7 ? 255 : 239;
        if (length > i8) {
            V3 v3A0 = C1496j4.a0();
            v3A0.d();
            C1496j4.K0((C1496j4) v3A0.f20255H, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            bArr = ((C1496j4) v3A0.b()).d();
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
            bArrArray = ByteBuffer.allocate(256).put(c(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        InterfaceC2275y4[] interfaceC2275y4Arr = (InterfaceC2275y4[]) new B4(0).f12124G2;
        int length3 = interfaceC2275y4Arr.length;
        for (int i10 = 0; i10 < 12; i10++) {
            ((C2327z4) interfaceC2275y4Arr[i10]).a(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new P2.b(str.getBytes("UTF-8"), 1).c(bArr3);
        }
        return bArr3;
    }
}
