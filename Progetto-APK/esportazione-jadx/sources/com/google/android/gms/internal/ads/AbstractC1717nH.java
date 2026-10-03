package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.videolan.libvlc.MediaDiscoverer;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IMediaList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1717nH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f20108a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f20110b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f20112c = {1, 2, 3, 6};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f20114d = {48000, 44100, 32000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f20116e = {24000, 22050, 16000};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f20118f = {2, 1, 2, 3, 3, 4, 4, 5};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f20120g = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, IMediaList.Event.ItemAdded, 576, 640};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f20122h = {69, 87, 104, 121, 139, 174, 208, 243, MediaPlayer.Event.ESSelected, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f20124i = {2002, 2000, 1920, 1601, 1600, WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 1000, 960, org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_BAD_INTERLEAVING, org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_BAD_INTERLEAVING, 480, 400, 400, 2048};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f20126j = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f20128k = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f20130l = {64, 112, 128, 192, 224, 256, 384, 448, IMediaList.Event.ItemAdded, 640, 768, 896, 1024, 1152, MediaDiscoverer.Event.Started, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f20132m = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f20134n = {5, 8, 10, 12};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f20136o = {6, 9, 12, 15};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f20138p = {2, 4, 6, 8};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f20140q = {9, 11, 13, 16};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f20142r = {5, 8, 10, 12};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String[] f20144s = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f20146t = {44100, 48000, 32000};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f20147u = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f20148v = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f20149w = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f20150x = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f20151y = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String[] f20152z = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final String[] f20082A = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final String[] f20083B = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final C1561kH f20084C = new C1561kH(6);

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final int[] f20085D = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final Bw f20086E = new Bw(1);

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final C1294f8 f20087F = new C1294f8("gads:sdk_csi_server", (Object) "https://csi.gstatic.com/csi", 4);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final C1294f8 f20088G = new C1294f8("gads:afs:csa:experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C1294f8 f20089H = new C1294f8("gads:app_index:experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C1294f8 f20090I = new C1294f8("gads:block_autoclicks_experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C1294f8 f20091J = new C1294f8("gads:sdk_core_experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C1294f8 f20092K = new C1294f8("gads:spam_app_context:experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final C1294f8 f20093L = new C1294f8("gads:temporary_experiment_id:1", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final C1294f8 f20094M = new C1294f8("gads:temporary_experiment_id:10", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final C1294f8 f20095N = new C1294f8("gads:temporary_experiment_id:11", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final C1294f8 f20096O = new C1294f8("gads:temporary_experiment_id:12", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final C1294f8 f20097P = new C1294f8("gads:temporary_experiment_id:13", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final C1294f8 f20098Q = new C1294f8("gads:temporary_experiment_id:14", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final C1294f8 f20099R = new C1294f8("gads:temporary_experiment_id:15", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final C1294f8 f20100S = new C1294f8("gads:temporary_experiment_id:2", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final C1294f8 f20101T = new C1294f8("gads:temporary_experiment_id:3", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final C1294f8 f20102U = new C1294f8("gads:temporary_experiment_id:4", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final C1294f8 f20103V = new C1294f8("gads:temporary_experiment_id:5", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final C1294f8 f20104W = new C1294f8("gads:temporary_experiment_id:6", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static final C1294f8 f20105X = new C1294f8("gads:temporary_experiment_id:7", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static final C1294f8 f20106Y = new C1294f8("gads:temporary_experiment_id:8", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static final C1294f8 f20107Z = new C1294f8("gads:temporary_experiment_id:9", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final C1294f8 f20109a0 = new C1294f8("gads:corewebview:experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final C1294f8 f20111b0 = new C1294f8("gads:sdk_core_location", (Object) "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40-loader.html", 4);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final C1294f8 f20113c0 = new C1294f8("gads:pan:experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final Bw f20115d0 = new Bw(6);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final Bw f20117e0 = new Bw(7);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final Bw f20119f0 = new Bw(12);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final Bw f20121g0 = new Bw(14);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final Bw f20123h0 = new Bw(18);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final Bw f20125i0 = new Bw(19);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final Bw f20127j0 = new Bw(21);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final Bw f20129k0 = new Bw(22);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final Bw f20131l0 = new Bw(23);

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final Bw f20133m0 = new Bw(24);

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final Bw f20135n0 = new Bw(25);

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final Bw f20137o0 = new Bw(26);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final Bw f20139p0 = new Bw(27);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final Bw f20141q0 = new Bw(28);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final C2202wk f20143r0 = new C2202wk(5);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final C2202wk f20145s0 = new C2202wk(6);

    /* JADX WARN: Code duplicated, block: B:41:0x0088  */
    /* JADX WARN: Code duplicated, block: B:45:0x0090  */
    /* JADX WARN: Code duplicated, block: B:48:0x0095  */
    public static A2.i a(C1286f0 c1286f0) {
        int i8;
        int i9;
        int iG = c1286f0.g(16);
        int iG2 = c1286f0.g(16);
        if (iG2 == 65535) {
            iG2 = c1286f0.g(24);
            i8 = 7;
        } else {
            i8 = 4;
        }
        int i10 = iG2 + i8;
        if (iG == 44097) {
            i10 += 2;
        }
        if (c1286f0.g(2) == 3) {
            do {
                c1286f0.g(2);
            } while (c1286f0.x());
        }
        int iG3 = c1286f0.g(10);
        if (c1286f0.x() && c1286f0.g(3) > 0) {
            c1286f0.v(2);
        }
        int i11 = true != c1286f0.x() ? 44100 : 48000;
        int iG4 = c1286f0.g(4);
        int[] iArr = f20124i;
        if (i11 == 44100 && iG4 == 13) {
            i9 = iArr[13];
        } else if (i11 != 48000 || iG4 >= 14) {
            i9 = 0;
        } else {
            int i12 = iArr[iG4];
            int i13 = iG3 % 5;
            if (i13 == 1) {
                if (iG4 != 3 || iG4 == 8) {
                    i9 = i12 + 1;
                } else {
                    i9 = i12;
                }
            } else if (i13 != 2) {
                if (i13 == 3) {
                    if (iG4 != 3) {
                    }
                    i9 = i12 + 1;
                } else if (i13 == 4 && (iG4 == 3 || iG4 == 8 || iG4 == 11)) {
                    i9 = i12 + 1;
                } else {
                    i9 = i12;
                }
            } else if (iG4 == 8 || iG4 == 11) {
                i9 = i12 + 1;
            } else {
                i9 = i12;
            }
        }
        A2.i iVar = new A2.i();
        iVar.f630a = i11;
        iVar.f631b = i10;
        iVar.f632c = i9;
        return iVar;
    }

    public static int b(int i8) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        if (!((i8 & (-2097152)) == -2097152) || (i9 = (i8 >>> 19) & 3) == 1 || (i10 = (i8 >>> 17) & 3) == 0 || (i11 = (i8 >>> 12) & 15) == 0 || i11 == 15 || (i12 = (i8 >>> 10) & 3) == 3) {
            return -1;
        }
        int i14 = i11 - 1;
        int i15 = f20146t[i12];
        if (i9 == 2) {
            i15 /= 2;
        } else if (i9 == 0) {
            i15 /= 4;
        }
        int i16 = (i8 >>> 9) & 1;
        if (i10 == 3) {
            return ((((i9 == 3 ? f20147u[i14] : f20148v[i14]) * 12) / i15) + i16) * 4;
        }
        if (i9 == 3) {
            i13 = i10 == 2 ? f20149w[i14] : f20150x[i14];
        } else {
            i13 = f20151y[i14];
        }
        if (i9 == 3) {
            return A0.O.v(i13, 144, i15, i16);
        }
        return A0.O.v(i10 == 1 ? 72 : 144, i13, i15, i16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ba, code lost:
    
        if (r11 != 3) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static W0.r c(com.google.android.gms.internal.ads.C1286f0 r11, boolean r12) throws com.google.android.gms.internal.ads.C0800Ka {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC1717nH.c(com.google.android.gms.internal.ads.f0, boolean):W0.r");
    }

    public static PA d(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i8 = 0;
        do {
            String strConcat = str.concat(":Item");
            xmlPullParser.next();
            if (U4.a.s(xmlPullParser, strConcat)) {
                String strConcat2 = str2.concat(":Mime");
                String strConcat3 = str2.concat(":Semantic");
                String strConcat4 = str2.concat(":Length");
                String strConcat5 = str2.concat(":Padding");
                String strK = U4.a.k(xmlPullParser, strConcat2);
                String strK2 = U4.a.k(xmlPullParser, strConcat3);
                String strK3 = U4.a.k(xmlPullParser, strConcat4);
                String strK4 = U4.a.k(xmlPullParser, strConcat5);
                if (strK == null || strK2 == null) {
                    C1969sA c1969sA = AbstractC2073uA.f21207H;
                    return PA.f15340K;
                }
                C2323z0 c2323z0 = new C2323z0(strK, strK3 != null ? Long.parseLong(strK3) : 0L, strK4 != null ? Long.parseLong(strK4) : 0L);
                int i9 = i8 + 1;
                int length = objArrCopyOf.length;
                if (length < i9) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i9));
                }
                objArrCopyOf[i8] = c2323z0;
                i8 = i9;
            }
        } while (!U4.a.q(xmlPullParser, str.concat(":Directory")));
        return AbstractC2073uA.s(i8, objArrCopyOf);
    }

    public static C1509jH e() {
        String strB;
        ClassLoader classLoader = AbstractC1717nH.class.getClassLoader();
        if (C1509jH.class.equals(C1509jH.class)) {
            strB = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else {
            if (!C1509jH.class.getPackage().equals(AbstractC1717nH.class.getPackage())) {
                throw new IllegalArgumentException(C1509jH.class.getName());
            }
            strB = A0.O.B(C1509jH.class.getPackage().getName(), ".BlazeGenerated", C1509jH.class.getSimpleName(), "Loader");
        }
        try {
            try {
                try {
                    A0.O.I(Class.forName(strB, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0]));
                    throw null;
                } catch (InstantiationException e8) {
                    throw new IllegalStateException(e8);
                } catch (NoSuchMethodException e9) {
                    throw new IllegalStateException(e9);
                }
            } catch (IllegalAccessException e10) {
                throw new IllegalStateException(e10);
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException(e11);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(AbstractC1717nH.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    A0.O.I(it.next());
                    throw null;
                } catch (ServiceConfigurationError e12) {
                    Logger.getLogger(AbstractC1407hH.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(C1509jH.class.getSimpleName()), (Throwable) e12);
                }
            }
            if (arrayList.size() == 1) {
                return (C1509jH) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (C1509jH) C1509jH.class.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e13) {
                throw new IllegalStateException(e13);
            } catch (NoSuchMethodException e14) {
                throw new IllegalStateException(e14);
            } catch (InvocationTargetException e15) {
                throw new IllegalStateException(e15);
            }
        }
    }

    public static void f(int i8, C1534jr c1534jr) {
        c1534jr.g(7);
        byte[] bArr = c1534jr.f19515a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i8 >> 16) & 255);
        bArr[5] = (byte) ((i8 >> 8) & 255);
        bArr[6] = (byte) (i8 & 255);
    }

    public static int g(int i8) {
        return (i8 == 0 || i8 == 3) ? 1 : 2;
    }

    public static int h(int i8, byte[] bArr, int i9) {
        int iJ = j(i8, bArr);
        if (i9 == 0 || i9 == 3) {
            return iJ;
        }
        while (true) {
            int length = bArr.length;
            if (iJ >= length - 1) {
                return length;
            }
            int i10 = iJ + 1;
            if ((iJ - i8) % 2 == 0 && bArr[i10] == 0) {
                return iJ;
            }
            iJ = j(i10, bArr);
        }
    }

    public static InterfaceC1131c0 i(M m7, boolean z7, boolean z8) {
        long jD;
        int i8;
        M m8;
        int[] iArr;
        M m9 = m7;
        long jZzd = m7.zzd();
        long j8 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        long j9 = -1;
        if (jZzd != -1 && jZzd <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j8 = jZzd;
        }
        C1534jr c1534jr = new C1534jr(64);
        int i9 = (int) j8;
        int i10 = 0;
        int i11 = 0;
        boolean z9 = false;
        while (true) {
            if (i11 < i9) {
                c1534jr.g(8);
                boolean z10 = true;
                if (!m9.d(c1534jr.f19515a, i10, 8, true)) {
                    break;
                }
                long jE = c1534jr.E();
                int iR = c1534jr.r();
                if (jE == 1) {
                    m9.g(8, c1534jr.f19515a, 8);
                    i8 = 16;
                    c1534jr.i(16);
                    jD = c1534jr.D();
                } else {
                    if (jE == 0) {
                        long jZzd2 = m7.zzd();
                        if (jZzd2 != j9) {
                            jE = (jZzd2 - m7.zze()) + 8;
                        }
                    }
                    jD = jE;
                    i8 = 8;
                }
                long j10 = i8;
                if (jD < j10) {
                    return new C1561kH((Object) null);
                }
                i11 += i8;
                if (iR == 1836019574) {
                    i9 += (int) jD;
                    if (jZzd != -1 && i9 > jZzd) {
                        i9 = (int) jZzd;
                    }
                } else {
                    if (iR == 1836019558 || iR == 1836475768) {
                        i10 = 1;
                        break;
                    }
                    z9 |= !(iR != 1835295092);
                    long j11 = jZzd;
                    if ((((long) i11) + jD) - j10 < i9) {
                        int i12 = (int) (jD - j10);
                        i11 += i12;
                        if (iR != 1718909296) {
                            m8 = m7;
                            if (i12 != 0) {
                                m8.zzg(i12);
                            }
                        } else {
                            if (i12 < 8) {
                                return new C1561kH((Object) null);
                            }
                            c1534jr.g(i12);
                            m8 = m7;
                            m8.g(0, c1534jr.f19515a, i12);
                            boolean zL = l(c1534jr.r(), z8) | z9;
                            c1534jr.k(4);
                            int iO = c1534jr.o() / 4;
                            if (!zL && iO > 0) {
                                iArr = new int[iO];
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= iO) {
                                        z10 = zL;
                                        break;
                                    }
                                    int iR2 = c1534jr.r();
                                    iArr[i13] = iR2;
                                    if (l(iR2, z8)) {
                                        break;
                                    }
                                    i13++;
                                }
                            } else {
                                z10 = zL;
                                iArr = null;
                            }
                            if (!z10) {
                                return new C1561kH(iArr);
                            }
                            z9 = z10;
                        }
                        m9 = m8;
                        jZzd = j11;
                    }
                }
                i10 = 0;
                j9 = -1;
            }
            i10 = 0;
            break;
        }
        if (!z9) {
            return C2272y1.f21982I;
        }
        if (z7 != i10) {
            return i10 != 0 ? C2272y1.f21980G : C2272y1.f21981H;
        }
        return null;
    }

    public static int j(int i8, byte[] bArr) {
        while (true) {
            int length = bArr.length;
            if (i8 >= length) {
                return length;
            }
            if (bArr[i8] == 0) {
                return i8;
            }
            i8++;
        }
    }

    public static int k(C1286f0 c1286f0) throws C0800Ka {
        int iG = c1286f0.g(4);
        if (iG == 15) {
            if (c1286f0.a() >= 24) {
                return c1286f0.g(24);
            }
            throw C0800Ka.a("AAC header insufficient data", null);
        }
        if (iG < 13) {
            return f20108a[iG];
        }
        throw C0800Ka.a("AAC header wrong Sampling Frequency Index", null);
    }

    public static boolean l(int i8, boolean z7) {
        if ((i8 >>> 8) == 3368816) {
            return true;
        }
        if (i8 == 1751476579) {
            if (z7) {
                return true;
            }
            i8 = 1751476579;
        }
        int[] iArr = f20085D;
        for (int i9 = 0; i9 < 29; i9++) {
            if (iArr[i9] == i8) {
                return true;
            }
        }
        return false;
    }

    public static int m(int i8, C1534jr c1534jr) {
        byte[] bArr = c1534jr.f19515a;
        int i9 = c1534jr.f19516b;
        int i10 = i9;
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= i9 + i8) {
                return i8;
            }
            if ((bArr[i10] & 255) == 255 && bArr[i11] == 0) {
                System.arraycopy(bArr, i10 + 2, bArr, i11, (i8 - (i10 - i9)) - 2);
                i8--;
            }
            i10 = i11;
        }
    }

    public static int n(int i8, int i9) {
        int i10;
        if (i8 < 0 || i8 >= 3 || i9 < 0 || (i10 = i9 >> 1) >= 19) {
            return -1;
        }
        int i11 = f20114d[i8];
        if (i11 == 44100) {
            int i12 = f20122h[i10] + (i9 & 1);
            return i12 + i12;
        }
        int i13 = f20120g[i10];
        return i11 == 32000 ? i13 * 6 : i13 * 4;
    }

    public static int o(C1286f0 c1286f0, int[] iArr) {
        int i8 = 0;
        for (int i9 = 0; i9 < 3 && c1286f0.x(); i9++) {
            i8++;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < i8; i11++) {
            i10 += 1 << iArr[i11];
        }
        return c1286f0.g(iArr[i8]) + i10;
    }

    public static PA p(int i8, byte[] bArr, int i9) {
        if (i9 >= bArr.length) {
            return AbstractC2073uA.w(HttpUrl.FRAGMENT_ENCODE_SET);
        }
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int iH = h(i9, bArr, i8);
        int i10 = 0;
        while (i9 < iH) {
            String str = new String(bArr, i9, iH - i9, t(i8));
            int i11 = i10 + 1;
            int length = objArrCopyOf.length;
            if (length < i11) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i11));
            }
            objArrCopyOf[i10] = str;
            int iG = iH + g(i8);
            i10 = i11;
            i9 = iG;
            iH = h(iG, bArr, i8);
        }
        PA paS = AbstractC2073uA.s(i10, objArrCopyOf);
        return paS.isEmpty() ? AbstractC2073uA.w(HttpUrl.FRAGMENT_ENCODE_SET) : paS;
    }

    public static C1286f0 q(byte[] bArr) {
        byte b8 = bArr[0];
        if (b8 == 127 || b8 == 100 || b8 == 64 || b8 == 113) {
            return new C1286f0(bArr, bArr.length);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        byte b9 = bArrCopyOf[0];
        if (b9 == -2 || b9 == -1 || b9 == 37 || b9 == -14 || b9 == -24) {
            for (int i8 = 0; i8 < bArrCopyOf.length - 1; i8 += 2) {
                byte b10 = bArrCopyOf[i8];
                int i9 = i8 + 1;
                bArrCopyOf[i8] = bArrCopyOf[i9];
                bArrCopyOf[i9] = b10;
            }
        }
        int length = bArrCopyOf.length;
        C1286f0 c1286f0 = new C1286f0(bArrCopyOf, length);
        if (bArrCopyOf[0] == 31) {
            C1286f0 c1286f1 = new C1286f0(bArrCopyOf, length);
            while (c1286f1.a() >= 16) {
                c1286f1.v(2);
                int iG = c1286f1.g(14);
                int iMin = Math.min(8 - c1286f0.f18647d, 14);
                int i10 = c1286f0.f18647d;
                int i11 = (8 - i10) - iMin;
                byte[] bArr2 = c1286f0.f18645b;
                int i12 = c1286f0.f18646c;
                byte b11 = (byte) (((65280 >> i10) | ((1 << i11) - 1)) & bArr2[i12]);
                bArr2[i12] = b11;
                int i13 = 14 - iMin;
                int i14 = iG & 16383;
                bArr2[i12] = (byte) (b11 | ((i14 >>> i13) << i11));
                int i15 = i12 + 1;
                while (i13 > 8) {
                    i13 -= 8;
                    c1286f0.f18645b[i15] = (byte) (i14 >>> i13);
                    i15++;
                }
                int i16 = 8 - i13;
                byte[] bArr3 = c1286f0.f18645b;
                byte b12 = (byte) (bArr3[i15] & ((1 << i16) - 1));
                bArr3[i15] = b12;
                bArr3[i15] = (byte) (((i14 & ((1 << i13) - 1)) << i16) | b12);
                c1286f0.v(14);
                c1286f0.y();
            }
        }
        int length2 = bArrCopyOf.length;
        c1286f0.f18645b = bArrCopyOf;
        c1286f0.f18646c = 0;
        c1286f0.f18647d = 0;
        c1286f0.f18648e = length2;
        return c1286f0;
    }

    public static String r(byte[] bArr, int i8, int i9, Charset charset) {
        return (i9 <= i8 || i9 > bArr.length) ? HttpUrl.FRAGMENT_ENCODE_SET : new String(bArr, i8, i9 - i8, charset);
    }

    public static String s(int i8, int i9, int i10, int i11, int i12) {
        return i8 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static Charset t(int i8) {
        if (i8 == 1) {
            return AbstractC2113uz.f21415e;
        }
        if (i8 != 2) {
            return i8 != 3 ? AbstractC2113uz.f21412b : AbstractC2113uz.f21413c;
        }
        return AbstractC2113uz.f21414d;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:3:0x0006, B:7:0x0013, B:20:0x003e, B:23:0x0048, B:25:0x006a, B:29:0x0070, B:41:0x008c, B:42:0x008e, B:45:0x0094, B:48:0x009e, B:31:0x007a, B:35:0x0081, B:10:0x0023), top: B:54:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x006e  */
    /* JADX WARN: Code duplicated, block: B:28:0x006f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x007a A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:3:0x0006, B:7:0x0013, B:20:0x003e, B:23:0x0048, B:25:0x006a, B:29:0x0070, B:41:0x008c, B:42:0x008e, B:45:0x0094, B:48:0x009e, B:31:0x007a, B:35:0x0081, B:10:0x0023), top: B:54:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x007e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0080  */
    /* JADX WARN: Code duplicated, block: B:37:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    /* JADX WARN: Code duplicated, block: B:41:0x008c A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:3:0x0006, B:7:0x0013, B:20:0x003e, B:23:0x0048, B:25:0x006a, B:29:0x0070, B:41:0x008c, B:42:0x008e, B:45:0x0094, B:48:0x009e, B:31:0x007a, B:35:0x0081, B:10:0x0023), top: B:54:0x0006 }] */
    public static boolean u(C1534jr c1534jr, int i8, int i9, boolean z7) {
        boolean z8;
        int iY;
        long jY;
        int iA;
        int i10;
        int i11 = c1534jr.f19516b;
        while (true) {
            try {
                z8 = true;
                z8 = true;
                int i12 = 1;
                int i13 = 1;
                if (c1534jr.o() >= i9) {
                    if (i8 >= 3) {
                        iY = c1534jr.r();
                        jY = c1534jr.E();
                        iA = c1534jr.A();
                    } else {
                        iY = c1534jr.y();
                        jY = c1534jr.y();
                        iA = 0;
                    }
                    if (iY != 0 || jY != 0 || iA != 0) {
                        if (i8 != 4 || z7) {
                            if (i8 == 4) {
                                if ((iA & 64) != 0) {
                                    i12 = 0;
                                }
                                int i14 = i12;
                                i13 = iA & 1;
                                i10 = i14;
                            } else {
                                if (i8 == 3) {
                                    if ((iA & 32) != 0) {
                                        i10 = 1;
                                    } else {
                                        i10 = 0;
                                    }
                                    if ((iA & 128) != 0) {
                                    }
                                } else {
                                    i10 = 0;
                                }
                                i13 = 0;
                            }
                            if (i13 != 0) {
                                i10 += 4;
                            }
                            if (jY >= i10 && c1534jr.o() >= jY) {
                                c1534jr.k((int) jY);
                            }
                        } else if ((8421504 & jY) == 0) {
                            long j8 = ((jY >> 16) & 255) << 14;
                            jY = ((jY >> 24) << 21) | j8 | (jY & 255) | (((jY >> 8) & 255) << 7);
                            if (i8 == 4) {
                                if ((iA & 64) != 0) {
                                    i12 = 0;
                                }
                                int i15 = i12;
                                i13 = iA & 1;
                                i10 = i15;
                            } else {
                                if (i8 == 3) {
                                    if ((iA & 32) != 0) {
                                        i10 = 1;
                                    } else {
                                        i10 = 0;
                                    }
                                    if ((iA & 128) != 0) {
                                    }
                                } else {
                                    i10 = 0;
                                }
                                i13 = 0;
                            }
                            if (i13 != 0) {
                                i10 += 4;
                            }
                            if (jY >= i10) {
                                c1534jr.k((int) jY);
                            }
                        }
                        z8 = false;
                        break;
                    }
                    break;
                }
                break;
            } catch (Throwable th) {
                c1534jr.j(i11);
                throw th;
            }
        }
        c1534jr.j(i11);
        return z8;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 16121. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public static com.google.android.gms.internal.ads.P0 v(int r35, com.google.android.gms.internal.ads.C1534jr r36, boolean r37, int r38, com.google.android.gms.internal.ads.C1561kH r39) {
        /*
            Method dump skipped, instruction units count: 1612
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC1717nH.v(int, com.google.android.gms.internal.ads.jr, boolean, int, com.google.android.gms.internal.ads.kH):com.google.android.gms.internal.ads.P0");
    }
}
