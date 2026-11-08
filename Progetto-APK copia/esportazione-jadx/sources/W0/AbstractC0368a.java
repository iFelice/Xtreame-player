package W0;

import A0.O;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
import org.videolan.libvlc.MediaDiscoverer;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IMediaList;
import p094m0.P;

/* JADX INFO: renamed from: W0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0368a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f7348a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f7349b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f7350c = {1, 2, 3, 6};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f7351d = {48000, 44100, 32000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f7352e = {24000, 22050, 16000};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f7353f = {2, 1, 2, 3, 3, 4, 4, 5};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f7354g = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, IMediaList.Event.ItemAdded, 576, 640};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f7355h = {69, 87, 104, 121, 139, 174, 208, 243, MediaPlayer.Event.ESSelected, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f7356i = {2002, 2000, 1920, 1601, 1600, WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 1000, 960, org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_BAD_INTERLEAVING, org.videolan.libvlc.media.MediaPlayer.MEDIA_INFO_BAD_INTERLEAVING, 480, 400, 400, 2048};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f7357j = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f7358k = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f7359l = {64, 112, 128, 192, 224, 256, 384, 448, IMediaList.Event.ItemAdded, 640, 768, 896, 1024, 1152, MediaDiscoverer.Event.Started, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f7360m = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f7361n = {5, 8, 10, 12};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f7362o = {6, 9, 12, 15};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f7363p = {2, 4, 6, 8};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f7364q = {9, 11, 13, 16};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f7365r = {5, 8, 10, 12};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String[] f7366s = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f7367t = {44100, 48000, 32000};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f7368u = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f7369v = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f7370w = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f7371x = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f7372y = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    public static int a(int i8, int i9) {
        int i10 = i9 / 2;
        if (i8 < 0 || i8 >= 3 || i9 < 0 || i10 >= 19) {
            return -1;
        }
        int i11 = f7351d[i8];
        if (i11 == 44100) {
            return ((i9 % 2) + f7355h[i10]) * 2;
        }
        int i12 = f7354g[i10];
        return i11 == 32000 ? i12 * 6 : i12 * 4;
    }

    public static void b(int i8, p117p0.E e8) {
        e8.I(7);
        byte[] bArr = e8.f28035a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i8 >> 16) & 255);
        bArr[5] = (byte) ((i8 >> 8) & 255);
        bArr[6] = (byte) (i8 & 255);
    }

    public static int c(int i8) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        if (!((i8 & (-2097152)) == -2097152) || (i9 = (i8 >>> 19) & 3) == 1 || (i10 = (i8 >>> 17) & 3) == 0 || (i11 = (i8 >>> 12) & 15) == 0 || i11 == 15 || (i12 = (i8 >>> 10) & 3) == 3) {
            return -1;
        }
        int i14 = f7367t[i12];
        if (i9 == 2) {
            i14 /= 2;
        } else if (i9 == 0) {
            i14 /= 4;
        }
        int i15 = (i8 >>> 9) & 1;
        if (i10 == 3) {
            return ((((i9 == 3 ? f7368u[i11 - 1] : f7369v[i11 - 1]) * 12) / i14) + i15) * 4;
        }
        if (i9 == 3) {
            i13 = i10 == 2 ? f7370w[i11 - 1] : f7371x[i11 - 1];
        } else {
            i13 = f7372y[i11 - 1];
        }
        if (i9 == 3) {
            return O.v(i13, 144, i14, i15);
        }
        return O.v(i10 == 1 ? 72 : 144, i13, i14, i15);
    }

    public static p117p0.D d(byte[] bArr) {
        byte b8 = bArr[0];
        if (b8 == 127 || b8 == 100 || b8 == 64 || b8 == 113) {
            return new p117p0.D(bArr, 0, (Object) null);
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
        p117p0.D d6 = new p117p0.D(bArrCopyOf, 0, (Object) null);
        if (bArrCopyOf[0] == 31) {
            p117p0.D d8 = new p117p0.D(bArrCopyOf, 0, (Object) null);
            while (d8.b() >= 16) {
                d8.u(2);
                int i10 = d8.i(14) & 16383;
                int iMin = Math.min(8 - d6.f28030d, 14);
                int i11 = d6.f28030d;
                int i12 = (8 - i11) - iMin;
                byte[] bArr2 = d6.f28028b;
                int i13 = d6.f28029c;
                byte b11 = (byte) (((65280 >> i11) | ((1 << i12) - 1)) & bArr2[i13]);
                bArr2[i13] = b11;
                int i14 = 14 - iMin;
                bArr2[i13] = (byte) (b11 | ((i10 >>> i14) << i12));
                int i15 = i13 + 1;
                while (i14 > 8) {
                    d6.f28028b[i15] = (byte) (i10 >>> (i14 - 8));
                    i14 -= 8;
                    i15++;
                }
                int i16 = 8 - i14;
                byte[] bArr3 = d6.f28028b;
                byte b12 = (byte) (bArr3[i15] & ((1 << i16) - 1));
                bArr3[i15] = b12;
                bArr3[i15] = (byte) (((i10 & ((1 << i14) - 1)) << i16) | b12);
                d6.u(14);
                d6.a();
            }
        }
        d6.p(bArrCopyOf.length, bArrCopyOf);
        return d6;
    }

    public static int e(p117p0.D d6) throws P {
        int i8 = d6.i(4);
        if (i8 == 15) {
            if (d6.b() >= 24) {
                return d6.i(24);
            }
            throw P.a("AAC header insufficient data", null);
        }
        if (i8 < 13) {
            return f7348a[i8];
        }
        throw P.a("AAC header wrong Sampling Frequency Index", null);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0092  */
    /* JADX WARN: Code duplicated, block: B:47:0x009a  */
    public static C0371d f(p117p0.D d6) {
        int i8;
        int i9;
        int i10 = d6.i(16);
        int i11 = d6.i(16);
        if (i11 == 65535) {
            i11 = d6.i(24);
            i8 = 7;
        } else {
            i8 = 4;
        }
        int i12 = i11 + i8;
        if (i10 == 44097) {
            i12 += 2;
        }
        int i13 = d6.i(2);
        int i14 = 0;
        if (i13 == 3) {
            int i15 = 0;
            while (true) {
                i9 = d6.i(2) + i15;
                if (!d6.h()) {
                    break;
                }
                i15 = (i9 + 1) << 2;
            }
            i13 += i9;
        }
        int i16 = d6.i(10);
        if (d6.h() && d6.i(3) > 0) {
            d6.u(2);
        }
        int i17 = d6.h() ? 48000 : 44100;
        int i18 = d6.i(4);
        int[] iArr = f7356i;
        if (i17 == 44100 && i18 == 13) {
            i14 = iArr[i18];
        } else if (i17 == 48000 && i18 < 14) {
            i14 = iArr[i18];
            int i19 = i16 % 5;
            if (i19 == 1) {
                if (i18 != 3 || i18 == 8) {
                    i14++;
                }
            } else if (i19 != 2) {
                if (i19 != 3) {
                    if (i19 == 4 && (i18 == 3 || i18 == 8 || i18 == 11)) {
                        i14++;
                    }
                } else if (i18 != 3) {
                    i14++;
                } else {
                    i14++;
                }
            } else if (i18 == 8 || i18 == 11) {
                i14++;
            }
        }
        return new C0371d(i13, i17, i12, i14);
    }

    public static r g(p117p0.D d6, boolean z7) throws P {
        int i8 = d6.i(5);
        if (i8 == 31) {
            i8 = d6.i(6) + 32;
        }
        int iE = e(d6);
        int i9 = d6.i(4);
        String strF = p000a.r.f("mp4a.40.", i8);
        if (i8 == 5 || i8 == 29) {
            iE = e(d6);
            int i10 = d6.i(5);
            if (i10 == 31) {
                i10 = d6.i(6) + 32;
            }
            i8 = i10;
            if (i8 == 22) {
                i9 = d6.i(4);
            }
        }
        if (z7) {
            if (i8 != 1 && i8 != 2 && i8 != 3 && i8 != 4 && i8 != 6 && i8 != 7 && i8 != 17) {
                switch (i8) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw P.c("Unsupported audio object type: " + i8);
                }
            }
            if (d6.h()) {
                p117p0.x.f("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (d6.h()) {
                d6.u(14);
            }
            boolean zH = d6.h();
            if (i9 == 0) {
                throw new UnsupportedOperationException();
            }
            if (i8 == 6 || i8 == 20) {
                d6.u(3);
            }
            if (zH) {
                if (i8 == 22) {
                    d6.u(16);
                }
                if (i8 == 17 || i8 == 19 || i8 == 20 || i8 == 23) {
                    d6.u(3);
                }
                d6.u(1);
            }
            switch (i8) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int i11 = d6.i(2);
                    if (i11 == 2 || i11 == 3) {
                        throw P.c("Unsupported epConfig: " + i11);
                    }
                    break;
            }
        }
        int i12 = f7349b[i9];
        if (i12 != -1) {
            return new r(iE, i12, strF);
        }
        throw P.a(null, null);
    }

    public static void h(p117p0.D d6, C0370c c0370c) throws P {
        int i8 = d6.i(5);
        d6.u(2);
        if (d6.h()) {
            d6.u(5);
        }
        if (i8 >= 7 && i8 <= 10) {
            d6.t();
        }
        if (d6.h()) {
            int i9 = d6.i(3);
            if (c0370c.f7381b == -1 && i8 >= 0 && i8 <= 15 && (i9 == 0 || i9 == 1)) {
                c0370c.f7381b = i8;
            }
            if (d6.h()) {
                k(d6);
            }
        }
    }

    public static void i(p117p0.D d6, C0370c c0370c) throws P {
        d6.u(2);
        boolean zH = d6.h();
        int i8 = d6.i(8);
        for (int i9 = 0; i9 < i8; i9++) {
            d6.u(2);
            if (d6.h()) {
                d6.u(5);
            }
            if (zH) {
                d6.u(24);
            } else {
                if (d6.h()) {
                    if (!d6.h()) {
                        d6.u(4);
                    }
                    c0370c.f7382c = d6.i(6) + 1;
                }
                d6.u(4);
            }
        }
        if (d6.h()) {
            d6.u(3);
            if (d6.h()) {
                k(d6);
            }
        }
    }

    public static int j(p117p0.D d6, int[] iArr) {
        int i8 = 0;
        for (int i9 = 0; i9 < 3 && d6.h(); i9++) {
            i8++;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < i8; i11++) {
            i10 += 1 << iArr[i11];
        }
        return d6.i(iArr[i8]) + i10;
    }

    public static void k(p117p0.D d6) throws P {
        int i8 = d6.i(6);
        if (i8 < 2 || i8 > 42) {
            throw P.c(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(i8)));
        }
        d6.u(i8 * 8);
    }
}
