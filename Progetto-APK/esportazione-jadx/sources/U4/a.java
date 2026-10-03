package U4;

import A0.O;
import C3.J;
import D.u;
import U2.m;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Process;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC1656m8;
import com.google.android.gms.internal.ads.C1230dx;
import com.google.android.gms.internal.ads.C1495j3;
import com.google.android.gms.internal.ads.C1547k3;
import com.google.android.gms.internal.ads.C1599l3;
import com.google.android.gms.internal.ads.InterfaceC1445i3;
import com.google.android.gms.internal.ads.K4;
import com.google.android.gms.internal.ads.Ow;
import com.google.android.gms.internal.ads.Pv;
import com.google.android.gms.internal.ads.Pw;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Uw;
import com.google.android.gms.internal.ads.V5;
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
import java.util.List;
import java.util.PriorityQueue;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Settings;
import org.videolan.libvlc.MediaPlayer;
import org.xmlpull.v1.XmlPullParser;
import p000a.r;
import p043f3.g;
import p090l3.C3099q;
import p090l3.b1;
import p090l3.d1;
import p113o3.z;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static X509Certificate[] A(ByteBuffer byteBuffer, HashMap map, CertificateFactory certificateFactory) throws IOException {
        String str;
        Pair pairCreate;
        ByteBuffer byteBufferX = x(byteBuffer);
        ByteBuffer byteBufferX2 = x(byteBuffer);
        byte[] bArrZ = z(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArrZ2 = null;
        byte[] bArrZ3 = null;
        int i8 = -1;
        int i9 = 0;
        while (byteBufferX2.hasRemaining()) {
            i9++;
            try {
                ByteBuffer byteBufferX3 = x(byteBufferX2);
                if (byteBufferX3.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i10 = byteBufferX3.getInt();
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
                    int iR = r(i10);
                    int iR2 = r(i8);
                    if (iR != 1 && iR2 == 1) {
                    }
                }
                bArrZ3 = z(byteBufferX3);
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
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArrZ));
            Signature signature = Signature.getInstance(str2);
            signature.initVerify(publicKeyGeneratePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(byteBufferX);
            if (!signature.verify(bArrZ3)) {
                throw new SecurityException(String.valueOf(str2).concat(" signature did not verify"));
            }
            byteBufferX.clear();
            ByteBuffer byteBufferX4 = x(byteBufferX);
            ArrayList arrayList2 = new ArrayList();
            int i11 = 0;
            while (byteBufferX4.hasRemaining()) {
                i11++;
                try {
                    ByteBuffer byteBufferX5 = x(byteBufferX4);
                    if (byteBufferX5.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i12 = byteBufferX5.getInt();
                    arrayList2.add(Integer.valueOf(i12));
                    if (i12 == i8) {
                        bArrZ2 = z(byteBufferX5);
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
            int iR3 = r(i8);
            byte[] bArr = (byte[]) map.put(Integer.valueOf(iR3), bArrZ2);
            if (bArr != null && !MessageDigest.isEqual(bArr, bArrZ2)) {
                throw new SecurityException(t(iR3).concat(" contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer byteBufferX6 = x(byteBufferX);
            ArrayList arrayList3 = new ArrayList();
            int i13 = 0;
            while (byteBufferX6.hasRemaining()) {
                i13++;
                byte[] bArrZ4 = z(byteBufferX6);
                try {
                    arrayList3.add(new C1599l3((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArrZ4)), bArrZ4));
                } catch (CertificateException e12) {
                    throw new SecurityException(r.f("Failed to decode certificate #", i13), e12);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (Arrays.equals(bArrZ, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
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

    public static byte[][] B(int[] iArr, InterfaceC1445i3[] interfaceC1445i3Arr) throws DigestException {
        long j8;
        int i8;
        int length;
        long j9 = 0;
        long jZza = 0;
        int i9 = 0;
        while (true) {
            j8 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (i9 >= 3) {
                break;
            }
            jZza += (interfaceC1445i3Arr[i9].zza() + 1048575) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i9++;
        }
        if (jZza >= 2097151) {
            throw new DigestException(O.z("Too many chunks: ", jZza));
        }
        byte[][] bArr = new byte[iArr.length][];
        int i10 = 0;
        while (true) {
            length = iArr.length;
            if (i10 >= length) {
                break;
            }
            int i11 = (int) jZza;
            byte[] bArr2 = new byte[(n(iArr[i10]) * i11) + 5];
            bArr2[0] = 90;
            y(i11, bArr2);
            bArr[i10] = bArr2;
            i10++;
        }
        byte[] bArr3 = new byte[5];
        bArr3[0] = -91;
        MessageDigest[] messageDigestArr = new MessageDigest[length];
        for (int i12 = 0; i12 < iArr.length; i12++) {
            String strT = t(iArr[i12]);
            try {
                messageDigestArr[i12] = MessageDigest.getInstance(strT);
            } catch (NoSuchAlgorithmException e8) {
                throw new RuntimeException(strT.concat(" digest not supported"), e8);
            }
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (i8 = 3; i13 < i8; i8 = 3) {
            InterfaceC1445i3 interfaceC1445i3 = interfaceC1445i3Arr[i13];
            int i16 = i14;
            long j10 = j9;
            int i17 = i13;
            long jZza2 = interfaceC1445i3.zza();
            while (jZza2 > j9) {
                int iMin = (int) Math.min(jZza2, j8);
                y(iMin, bArr3);
                for (int i18 = 0; i18 < length; i18++) {
                    messageDigestArr[i18].update(bArr3);
                }
                try {
                    interfaceC1445i3.zzb(messageDigestArr, j10, iMin);
                    int i19 = 0;
                    while (i19 < iArr.length) {
                        int i20 = iArr[i19];
                        byte[] bArr4 = bArr[i19];
                        int iN = n(i20);
                        InterfaceC1445i3 interfaceC1445i4 = interfaceC1445i3;
                        MessageDigest messageDigest = messageDigestArr[i19];
                        byte[] bArr5 = bArr3;
                        int iDigest = messageDigest.digest(bArr4, (i16 * iN) + 5, iN);
                        if (iDigest != iN) {
                            throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + iDigest);
                        }
                        i19++;
                        interfaceC1445i3 = interfaceC1445i4;
                        bArr3 = bArr5;
                    }
                    InterfaceC1445i3 interfaceC1445i5 = interfaceC1445i3;
                    long j11 = iMin;
                    j10 += j11;
                    jZza2 -= j11;
                    i16++;
                    interfaceC1445i3 = interfaceC1445i5;
                    j9 = 0;
                    j8 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                } catch (IOException e9) {
                    throw new DigestException(U2.j("Failed to digest chunk #", i16, " of section #", i15), e9);
                }
            }
            i14 = i16;
            i15++;
            i13 = i17 + 1;
            j9 = 0;
            j8 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        }
        byte[][] bArr6 = new byte[iArr.length][];
        for (int i21 = 0; i21 < iArr.length; i21++) {
            int i22 = iArr[i21];
            byte[] bArr7 = bArr[i21];
            String strT2 = t(i22);
            try {
                bArr6[i21] = MessageDigest.getInstance(strT2).digest(bArr7);
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(strT2.concat(" digest not supported"), e10);
            }
        }
        return bArr6;
    }

    public static X509Certificate[][] C(FileChannel fileChannel, C1495j3 c1495j3) {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer byteBufferX = x(c1495j3.f19424a);
                int i8 = 0;
                while (byteBufferX.hasRemaining()) {
                    i8++;
                    try {
                        arrayList.add(A(x(byteBufferX), map, certificateFactory));
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
                if (map.isEmpty()) {
                    throw new SecurityException("No digests provided");
                }
                long j8 = c1495j3.f19425b;
                z zVar = new z(fileChannel, 0L, j8);
                long j9 = c1495j3.f19427d;
                long j10 = c1495j3.f19426c;
                z zVar2 = new z(fileChannel, j10, j9 - j10);
                ByteBuffer byteBufferDuplicate = c1495j3.f19428e.duplicate();
                byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                c.J(byteBufferDuplicate);
                int iPosition = byteBufferDuplicate.position() + 16;
                if (j8 < 0 || j8 > 4294967295L) {
                    throw new IllegalArgumentException(O.z("uint32 value of out range: ", j8));
                }
                byteBufferDuplicate.putInt(byteBufferDuplicate.position() + iPosition, (int) j8);
                K4 k8 = new K4(byteBufferDuplicate);
                int size = map.size();
                int[] iArr = new int[size];
                Iterator it = map.keySet().iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    iArr[i9] = ((Integer) it.next()).intValue();
                    i9++;
                }
                try {
                    byte[][] bArrB = B(iArr, new InterfaceC1445i3[]{zVar, zVar2, k8});
                    for (int i10 = 0; i10 < size; i10++) {
                        int i11 = iArr[i10];
                        if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i11)), bArrB[i10])) {
                            throw new SecurityException(t(i11).concat(" digest of contents did not verify"));
                        }
                    }
                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]);
                } catch (DigestException e9) {
                    throw new SecurityException("Failed to compute digest(s) of contents", e9);
                }
            } catch (IOException e10) {
                throw new SecurityException("Failed to read list of signers", e10);
            }
        } catch (CertificateException e11) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e11);
        }
    }

    public static String a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        }
        J j8 = new J();
        j8.f1467a = "com.google.android.gms.cast.CATEGORY_CAST";
        j8.f1468b = str;
        j8.f1469c = null;
        return J.a(j8);
    }

    public static int b(Context context, String str) {
        if (str == null) {
            throw new NullPointerException("permission must be non-null");
        }
        if (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        return new u(context).a() ? 0 : -1;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0037  */
    public static Integer d(String str) {
        byte b8;
        if (str == null) {
            return null;
        }
        switch (str) {
            case "REPEAT_ALL_AND_SHUFFLE":
                b8 = 3;
                break;
            case "REPEAT_SINGLE":
                b8 = 2;
                break;
            case "REPEAT_ALL":
                b8 = 1;
                break;
            case "REPEAT_OFF":
                b8 = 0;
                break;
            default:
                b8 = -1;
                break;
        }
        if (b8 == 0) {
            return 0;
        }
        if (b8 == 1) {
            return 1;
        }
        if (b8 != 2) {
            return b8 != 3 ? null : 3;
        }
        return 2;
    }

    public static String e(Context context) {
        String str = context.getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (J6.r.c(context, str) == 0) {
            return str;
        }
        throw new RuntimeException(r.g("Permission ", str, " is required by your application to receive broadcasts, please add it to your manifest"));
    }

    public static void f(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i8) {
        int i9 = i8 & 2;
        if (i9 == 0 && (i8 & 4) == 0) {
            throw new IllegalArgumentException("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
        }
        if (i9 != 0 && (i8 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            D.r.f(context, broadcastReceiver, intentFilter, i8);
            return;
        }
        if (i10 >= 26) {
            D.r.e(context, broadcastReceiver, intentFilter, i8);
        } else if ((i8 & 4) != 0) {
            context.registerReceiver(broadcastReceiver, intentFilter, e(context), null);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter, null, null);
        }
    }

    public static long g(int i8, long j8) {
        if (i8 == 1) {
            return j8;
        }
        int i9 = i8 >> 1;
        long j9 = (j8 * j8) % 1073807359;
        return (i8 & 1) == 0 ? g(i9, j9) % 1073807359 : ((g(i9, j9) % 1073807359) * j8) % 1073807359;
    }

    public static Ow h(Context context, int i8) {
        boolean zBooleanValue;
        if (Uw.a()) {
            int i9 = i8 - 2;
            if (i9 != 20 && i9 != 21) {
                switch (i9) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        zBooleanValue = ((Boolean) AbstractC1656m8.f19913c.l()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        zBooleanValue = ((Boolean) AbstractC1656m8.f19914d.l()).booleanValue();
                        break;
                    case 5:
                        zBooleanValue = ((Boolean) AbstractC1656m8.f19912b.l()).booleanValue();
                        break;
                }
            } else {
                zBooleanValue = ((Boolean) AbstractC1656m8.f19915e.l()).booleanValue();
            }
            if (zBooleanValue) {
                return new Pw(context, i8);
            }
        }
        return new C1230dx();
    }

    public static String i(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        int visibility = view.getVisibility();
        if (visibility == 8) {
            return "viewGone";
        }
        if (visibility == 4) {
            return "viewInvisible";
        }
        if (visibility != 0) {
            return "viewNotVisible";
        }
        if (view.getAlpha() == 0.0f) {
            return "viewAlphaZero";
        }
        return null;
    }

    public static String j(Integer num) {
        if (num == null) {
            return null;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            return "REPEAT_OFF";
        }
        if (iIntValue == 1) {
            return "REPEAT_ALL";
        }
        if (iIntValue == 2) {
            return "REPEAT_SINGLE";
        }
        if (iIntValue != 3) {
            return null;
        }
        return "REPEAT_ALL_AND_SHUFFLE";
    }

    public static String k(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i8 = 0; i8 < attributeCount; i8++) {
            if (xmlPullParser.getAttributeName(i8).equals(str)) {
                return xmlPullParser.getAttributeValue(i8);
            }
        }
        return null;
    }

    public static d1 l(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Pv pv = (Pv) it.next();
            if (pv.f15501c) {
                arrayList.add(g.f25171o);
            } else {
                arrayList.add(new g(pv.f15499a, pv.f15500b));
            }
        }
        return new d1(context, (g[]) arrayList.toArray(new g[arrayList.size()]));
    }

    public static X509Certificate[][] m(String str) {
        Pair pairG;
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            if (randomAccessFile.length() < 22) {
                pairG = null;
            } else {
                pairG = c.G(randomAccessFile, 0);
                if (pairG == null) {
                    pairG = c.G(randomAccessFile, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                }
            }
            if (pairG == null) {
                throw new C1547k3("Not an APK file: ZIP End of Central Directory record not found in file with " + randomAccessFile.length() + " bytes");
            }
            ByteBuffer byteBuffer = (ByteBuffer) pairG.first;
            long jLongValue = ((Long) pairG.second).longValue();
            long j8 = (-20) + jLongValue;
            if (j8 >= 0) {
                randomAccessFile.seek(j8);
                if (randomAccessFile.readInt() == 1347094023) {
                    throw new C1547k3("ZIP64 APK not supported");
                }
            }
            c.J(byteBuffer);
            long j9 = ((long) byteBuffer.getInt(byteBuffer.position() + 16)) & 4294967295L;
            if (j9 >= jLongValue) {
                throw new C1547k3("ZIP Central Directory offset out of range: " + j9 + ". ZIP End of Central Directory offset: " + jLongValue);
            }
            c.J(byteBuffer);
            long j10 = j9;
            if (j10 + (((long) byteBuffer.getInt(byteBuffer.position() + 12)) & 4294967295L) != jLongValue) {
                throw new C1547k3("ZIP Central Directory is not immediately followed by End of Central Directory");
            }
            if (j10 < 32) {
                throw new C1547k3("APK too small for APK Signing Block. ZIP Central Directory offset: " + j10);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            randomAccessFile.seek(j10 - ((long) byteBufferAllocate.capacity()));
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            if (byteBufferAllocate.getLong(8) != 2334950737559900225L || byteBufferAllocate.getLong(16) != 3617552046287187010L) {
                throw new C1547k3("No APK Signing Block before ZIP Central Directory");
            }
            long j11 = byteBufferAllocate.getLong(0);
            if (j11 < byteBufferAllocate.capacity() || j11 > 2147483639) {
                throw new C1547k3("APK Signing Block size out of range: " + j11);
            }
            int i8 = (int) (8 + j11);
            long j12 = j10 - ((long) i8);
            if (j12 < 0) {
                throw new C1547k3("APK Signing Block offset out of range: " + j12);
            }
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i8);
            byteBufferAllocate2.order(byteOrder);
            randomAccessFile.seek(j12);
            randomAccessFile.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
            long j13 = byteBufferAllocate2.getLong(0);
            if (j13 != j11) {
                throw new C1547k3("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j11);
            }
            Pair pairCreate = Pair.create(byteBufferAllocate2, Long.valueOf(j12));
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
                int i9 = 0;
                while (byteBufferSlice.hasRemaining()) {
                    i9++;
                    if (byteBufferSlice.remaining() < 8) {
                        throw new C1547k3("Insufficient data to read size of APK Signing Block entry #" + i9);
                    }
                    long j14 = byteBufferSlice.getLong();
                    if (j14 < 4 || j14 > 2147483647L) {
                        throw new C1547k3("APK Signing Block entry #" + i9 + " size out of range: " + j14);
                    }
                    int i10 = (int) j14;
                    int iPosition2 = byteBufferSlice.position() + i10;
                    if (i10 > byteBufferSlice.remaining()) {
                        throw new C1547k3("APK Signing Block entry #" + i9 + " size out of range: " + i10 + ", available: " + byteBufferSlice.remaining());
                    }
                    if (byteBufferSlice.getInt() == 1896449818) {
                        X509Certificate[][] x509CertificateArrC = C(randomAccessFile.getChannel(), new C1495j3(w(byteBufferSlice, i10 - 4), jLongValue2, j10, jLongValue, byteBuffer));
                        randomAccessFile.close();
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused) {
                        }
                        return x509CertificateArrC;
                    }
                    long j15 = j10;
                    byteBufferSlice.position(iPosition2);
                    j10 = j15;
                }
                throw new C1547k3("No APK Signature Scheme v2 block in APK Signing Block");
            } catch (Throwable th) {
                byteBuffer2.position(0);
                byteBuffer2.limit(iLimit);
                byteBuffer2.position(iPosition);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
            throw th2;
        }
    }

    public static int n(int i8) {
        if (i8 == 1) {
            return 32;
        }
        if (i8 == 2) {
            return 64;
        }
        throw new IllegalArgumentException(r.f("Unknown content digest algorthm: ", i8));
    }

    public static Ow o(Context context, int i8, int i9, b1 b1Var) {
        Ow owH = h(context, i8);
        if (owH instanceof Pw) {
            owH.zzi();
            owH.b(i9);
            owH.a(m.d(b1Var.f26529S));
            String str = b1Var.f26532V;
            if (!TextUtils.isEmpty(str)) {
                if (Pattern.matches((String) C3099q.f26624d.f26627c.a(Q7.b8), str)) {
                    owH.o(str);
                }
            }
        }
        return owH;
    }

    public static String p(String[] strArr, int i8, int i9) {
        int i10 = i9 + i8;
        if (strArr.length < i10) {
            h.d("Unable to construct shingle");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i11 = i10 - 1;
            if (i8 >= i11) {
                sb.append(strArr[i11]);
                return sb.toString();
            }
            sb.append(strArr[i8]);
            sb.append(' ');
            i8++;
        }
    }

    public static boolean q(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals(str);
    }

    public static int r(int i8) {
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

    public static boolean s(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals(str);
    }

    public static String t(int i8) {
        if (i8 == 1) {
            return "SHA-256";
        }
        if (i8 == 2) {
            return "SHA-512";
        }
        throw new IllegalArgumentException(r.f("Unknown content digest algorthm: ", i8));
    }

    public static void u(int i8, long j8, String str, int i9, PriorityQueue priorityQueue) {
        V5 v5 = new V5(j8, str, i9);
        if ((priorityQueue.size() != i8 || (((V5) priorityQueue.peek()).f16958c <= i9 && ((V5) priorityQueue.peek()).f16956a <= j8)) && !priorityQueue.contains(v5)) {
            priorityQueue.add(v5);
            if (priorityQueue.size() > i8) {
                priorityQueue.poll();
            }
        }
    }

    public static long v(String[] strArr, int i8) {
        long jM = (((long) a7.b.m(strArr[0])) + 2147483647L) % 1073807359;
        for (int i9 = 1; i9 < i8; i9++) {
            jM = (((((long) a7.b.m(strArr[i9])) + 2147483647L) % 1073807359) + ((jM * 16785407) % 1073807359)) % 1073807359;
        }
        return jM;
    }

    public static ByteBuffer w(ByteBuffer byteBuffer, int i8) {
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

    public static ByteBuffer x(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() < 4) {
            throw new IOException(r.f("Remaining buffer too short to contain length of length-prefixed field. Remaining: ", byteBuffer.remaining()));
        }
        int i8 = byteBuffer.getInt();
        if (i8 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i8 <= byteBuffer.remaining()) {
            return w(byteBuffer, i8);
        }
        throw new IOException(U2.j("Length-prefixed field longer than remaining buffer. Field length: ", i8, ", remaining: ", byteBuffer.remaining()));
    }

    public static void y(int i8, byte[] bArr) {
        bArr[1] = (byte) (i8 & 255);
        bArr[2] = (byte) ((i8 >>> 8) & 255);
        bArr[3] = (byte) ((i8 >>> 16) & 255);
        bArr[4] = (byte) (i8 >> 24);
    }

    public static byte[] z(ByteBuffer byteBuffer) throws IOException {
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
}
