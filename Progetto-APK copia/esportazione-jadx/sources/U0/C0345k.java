package U0;

import B0.C0053i;
import B0.C0055j;
import B0.C0072w;
import B0.C0073x;
import B0.H0;
import B0.Z;
import C0.C0082g;
import D0.RunnableC0121k;
import D0.U;
import O0.C0300y;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.util.Range;
import android.util.SparseArray;
import android.view.Surface;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Endpoint;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.PriorityQueue;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.MediaDiscoverer;
import p086l.C3061x;
import p094m0.C3126i;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.f0;
import p094m0.s0;
import p094m0.w0;
import p117p0.AbstractC3169g;
import p117p0.RunnableC3174l;
import z4.d0;

/* JADX INFO: renamed from: U0.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0345k extends K0.r implements D {

    /* JADX INFO: renamed from: P1, reason: collision with root package name */
    public static final int[] f6765P1 = {1920, 1600, 1440, MediaDiscoverer.Event.Started, 960, 854, 640, 540, 480};

    /* JADX INFO: renamed from: Q1, reason: collision with root package name */
    public static boolean f6766Q1;

    /* JADX INFO: renamed from: R1, reason: collision with root package name */
    public static boolean f6767R1;

    /* JADX INFO: renamed from: A1, reason: collision with root package name */
    public boolean f6768A1;

    /* JADX INFO: renamed from: B1, reason: collision with root package name */
    public long f6769B1;

    /* JADX INFO: renamed from: C1, reason: collision with root package name */
    public int f6770C1;

    /* JADX INFO: renamed from: D1, reason: collision with root package name */
    public long f6771D1;

    /* JADX INFO: renamed from: E1, reason: collision with root package name */
    public w0 f6772E1;

    /* JADX INFO: renamed from: F1, reason: collision with root package name */
    public w0 f6773F1;

    /* JADX INFO: renamed from: G1, reason: collision with root package name */
    public int f6774G1;

    /* JADX INFO: renamed from: H1, reason: collision with root package name */
    public boolean f6775H1;

    /* JADX INFO: renamed from: I1, reason: collision with root package name */
    public int f6776I1;

    /* JADX INFO: renamed from: J1, reason: collision with root package name */
    public C0344j f6777J1;

    /* JADX INFO: renamed from: K1, reason: collision with root package name */
    public B f6778K1;

    /* JADX INFO: renamed from: L1, reason: collision with root package name */
    public long f6779L1;

    /* JADX INFO: renamed from: M1, reason: collision with root package name */
    public long f6780M1;

    /* JADX INFO: renamed from: N1, reason: collision with root package name */
    public boolean f6781N1;

    /* JADX INFO: renamed from: O1, reason: collision with root package name */
    public int f6782O1;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public final Context f6783W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public final boolean f6784X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public final x0 f6785Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public final int f6786Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final boolean f6787a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final E f6788b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final C f6789c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final U f6790d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final long f6791e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final F f6792f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final PriorityQueue f6793g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final boolean f6794h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public A2.i f6795i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public boolean f6796j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public boolean f6797k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public S f6798l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public boolean f6799m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public int f6800n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public List f6801o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public Surface f6802p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public C0347m f6803q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public p117p0.F f6804r1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public boolean f6805s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public int f6806t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public int f6807u1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public long f6808v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public int f6809w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public int f6810x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public int f6811y1;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public H0 f6812z1;

    public C0345k(C0343i c0343i) {
        super(2, c0343i.f6753d, c0343i.f6752c, c0343i.f6755f, c0343i.f6759j);
        Context applicationContext = c0343i.f6750a.getApplicationContext();
        this.f6783W0 = applicationContext;
        this.f6786Z0 = c0343i.f6758i;
        this.f6798l1 = null;
        this.f6785Y0 = new x0(c0343i.f6756g, c0343i.f6757h);
        this.f6784X0 = this.f6798l1 == null;
        this.f6788b1 = new E(applicationContext, this, c0343i.f6754e);
        this.f6789c1 = new C();
        this.f6787a1 = "NVIDIA".equals(Build.MANUFACTURER);
        this.f6804r1 = p117p0.F.f28038c;
        this.f6806t1 = 1;
        this.f6807u1 = 0;
        this.f6772E1 = w0.f27062d;
        this.f6776I1 = 0;
        this.f6773F1 = null;
        this.f6774G1 = -1000;
        this.f6779L1 = -9223372036854775807L;
        this.f6780M1 = -9223372036854775807L;
        this.f6790d1 = c0343i.f6760k ? new U(7) : null;
        this.f6793g1 = new PriorityQueue();
        long j8 = c0343i.f6761l;
        if (j8 != -9223372036854775807L) {
            this.f6791e1 = -j8;
            F f8 = new F();
            Range range = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) 1.0f)));
            f8.f6646d = range;
            f8.f6645c = ((Double) range.getUpper()).doubleValue();
            f8.f6643a = -9223372036854775807L;
            f8.f6644b = -9223372036854775807L;
            this.f6792f1 = f8;
        } else {
            this.f6791e1 = -9223372036854775807L;
            this.f6792f1 = null;
        }
        this.f6794h1 = c0343i.f6762m;
        this.f6812z1 = null;
    }

    public static boolean Y(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (C0345k.class) {
            try {
                if (!f6766Q1) {
                    f6767R1 = Z();
                    f6766Q1 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f6767R1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:49:0x0097  */
    /* JADX WARN: Code duplicated, block: B:6:0x001b  */
    /* JADX WARN: Code duplicated, block: B:91:0x0111  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean Z() {
        int i8 = Build.VERSION.SDK_INT;
        byte b8 = 7;
        if (i8 <= 28) {
            String str = Build.DEVICE;
            str.getClass();
            switch (str) {
                case "dangal":
                case "dangalFHD":
                case "dangalUHD":
                case "oneday":
                case "aquaman":
                case "magnolia":
                case "once":
                case "machuca":
                    return true;
            }
        }
        if (i8 <= 27 && "HWEML".equals(Build.DEVICE)) {
            return true;
        }
        String str2 = Build.MODEL;
        str2.getClass();
        switch (str2) {
            case "AFTJMST12":
            case "AFTKMST12":
            case "AFTA":
            case "AFTN":
            case "AFTR":
            case "AFTEU011":
            case "AFTEU014":
            case "AFTSO001":
            case "AFTEUFF014":
                return true;
            default:
                if (i8 <= 26) {
                    String str3 = Build.DEVICE;
                    str3.getClass();
                    switch (str3.hashCode()) {
                        case -2144781245:
                            if (!str3.equals("GIONEE_SWW1609")) {
                                b8 = -1;
                            } else {
                                b8 = 0;
                            }
                            break;
                        case -2144781185:
                            if (!str3.equals("GIONEE_SWW1627")) {
                                b8 = -1;
                            } else {
                                b8 = 1;
                            }
                            break;
                        case -2144781160:
                            if (!str3.equals("GIONEE_SWW1631")) {
                                b8 = -1;
                            } else {
                                b8 = 2;
                            }
                            break;
                        case -2097309513:
                            if (!str3.equals("K50a40")) {
                                b8 = -1;
                            } else {
                                b8 = 3;
                            }
                            break;
                        case -2022874474:
                            if (!str3.equals("CP8676_I02")) {
                                b8 = -1;
                            } else {
                                b8 = 4;
                            }
                            break;
                        case -1978993182:
                            if (!str3.equals("NX541J")) {
                                b8 = -1;
                            } else {
                                b8 = 5;
                            }
                            break;
                        case -1978990237:
                            if (!str3.equals("NX573J")) {
                                b8 = -1;
                            } else {
                                b8 = 6;
                            }
                            break;
                        case -1936688988:
                            if (!str3.equals("PGN528")) {
                                b8 = -1;
                            }
                            break;
                        case -1936688066:
                            if (!str3.equals("PGN610")) {
                                b8 = -1;
                            } else {
                                b8 = 8;
                            }
                            break;
                        case -1936688065:
                            if (!str3.equals("PGN611")) {
                                b8 = -1;
                            } else {
                                b8 = 9;
                            }
                            break;
                        case -1931988508:
                            if (!str3.equals("AquaPowerM")) {
                                b8 = -1;
                            } else {
                                b8 = 10;
                            }
                            break;
                        case -1885099851:
                            if (!str3.equals("RAIJIN")) {
                                b8 = -1;
                            } else {
                                b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                            }
                            break;
                        case -1696512866:
                            if (!str3.equals("XT1663")) {
                                b8 = -1;
                            } else {
                                b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                            }
                            break;
                        case -1680025915:
                            if (!str3.equals("ComioS1")) {
                                b8 = -1;
                            } else {
                                b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                            }
                            break;
                        case -1615810839:
                            if (!str3.equals("Phantom6")) {
                                b8 = -1;
                            } else {
                                b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                            }
                            break;
                        case -1600724499:
                            if (!str3.equals("pacificrim")) {
                                b8 = -1;
                            } else {
                                b8 = 15;
                            }
                            break;
                        case -1554255044:
                            if (!str3.equals("vernee_M5")) {
                                b8 = -1;
                            } else {
                                b8 = 16;
                            }
                            break;
                        case -1481772737:
                            if (!str3.equals("panell_dl")) {
                                b8 = -1;
                            } else {
                                b8 = 17;
                            }
                            break;
                        case -1481772730:
                            if (!str3.equals("panell_ds")) {
                                b8 = -1;
                            } else {
                                b8 = 18;
                            }
                            break;
                        case -1481772729:
                            if (!str3.equals("panell_dt")) {
                                b8 = -1;
                            } else {
                                b8 = 19;
                            }
                            break;
                        case -1320080169:
                            if (!str3.equals("GiONEE_GBL7319")) {
                                b8 = -1;
                            } else {
                                b8 = 20;
                            }
                            break;
                        case -1217592143:
                            if (!str3.equals("BRAVIA_ATV2")) {
                                b8 = -1;
                            } else {
                                b8 = 21;
                            }
                            break;
                        case -1180384755:
                            if (!str3.equals("iris60")) {
                                b8 = -1;
                            } else {
                                b8 = 22;
                            }
                            break;
                        case -1139198265:
                            if (!str3.equals("Slate_Pro")) {
                                b8 = -1;
                            } else {
                                b8 = 23;
                            }
                            break;
                        case -1052835013:
                            if (!str3.equals("namath")) {
                                b8 = -1;
                            } else {
                                b8 = 24;
                            }
                            break;
                        case -993250464:
                            if (!str3.equals("A10-70F")) {
                                b8 = -1;
                            } else {
                                b8 = 25;
                            }
                            break;
                        case -993250458:
                            if (!str3.equals("A10-70L")) {
                                b8 = -1;
                            } else {
                                b8 = 26;
                            }
                            break;
                        case -965403638:
                            if (!str3.equals("s905x018")) {
                                b8 = -1;
                            } else {
                                b8 = 27;
                            }
                            break;
                        case -958336948:
                            if (!str3.equals("ELUGA_Ray_X")) {
                                b8 = -1;
                            } else {
                                b8 = 28;
                            }
                            break;
                        case -879245230:
                            if (!str3.equals("tcl_eu")) {
                                b8 = -1;
                            } else {
                                b8 = 29;
                            }
                            break;
                        case -842500323:
                            if (!str3.equals("nicklaus_f")) {
                                b8 = -1;
                            } else {
                                b8 = 30;
                            }
                            break;
                        case -821392978:
                            if (!str3.equals("A7000-a")) {
                                b8 = -1;
                            } else {
                                b8 = 31;
                            }
                            break;
                        case -797483286:
                            if (!str3.equals("SVP-DTV15")) {
                                b8 = -1;
                            } else {
                                b8 = 32;
                            }
                            break;
                        case -794946968:
                            if (!str3.equals("watson")) {
                                b8 = -1;
                            } else {
                                b8 = 33;
                            }
                            break;
                        case -788334647:
                            if (!str3.equals("whyred")) {
                                b8 = -1;
                            } else {
                                b8 = 34;
                            }
                            break;
                        case -782144577:
                            if (!str3.equals("OnePlus5T")) {
                                b8 = -1;
                            } else {
                                b8 = 35;
                            }
                            break;
                        case -575125681:
                            if (!str3.equals("GiONEE_CBL7513")) {
                                b8 = -1;
                            } else {
                                b8 = 36;
                            }
                            break;
                        case -521118391:
                            if (!str3.equals("GIONEE_GBL7360")) {
                                b8 = -1;
                            } else {
                                b8 = 37;
                            }
                            break;
                        case -430914369:
                            if (!str3.equals("Pixi4-7_3G")) {
                                b8 = -1;
                            } else {
                                b8 = 38;
                            }
                            break;
                        case -290434366:
                            if (!str3.equals("taido_row")) {
                                b8 = -1;
                            } else {
                                b8 = 39;
                            }
                            break;
                        case -282781963:
                            if (!str3.equals("BLACK-1X")) {
                                b8 = -1;
                            } else {
                                b8 = 40;
                            }
                            break;
                        case -277133239:
                            if (!str3.equals("Z12_PRO")) {
                                b8 = -1;
                            } else {
                                b8 = 41;
                            }
                            break;
                        case -173639913:
                            if (!str3.equals("ELUGA_A3_Pro")) {
                                b8 = -1;
                            } else {
                                b8 = 42;
                            }
                            break;
                        case -56598463:
                            if (!str3.equals("woods_fn")) {
                                b8 = -1;
                            } else {
                                b8 = 43;
                            }
                            break;
                        case 2126:
                            if (!str3.equals("C1")) {
                                b8 = -1;
                            } else {
                                b8 = 44;
                            }
                            break;
                        case 2564:
                            if (!str3.equals("Q5")) {
                                b8 = -1;
                            } else {
                                b8 = 45;
                            }
                            break;
                        case 2715:
                            if (!str3.equals("V1")) {
                                b8 = -1;
                            } else {
                                b8 = 46;
                            }
                            break;
                        case 2719:
                            if (!str3.equals("V5")) {
                                b8 = -1;
                            } else {
                                b8 = 47;
                            }
                            break;
                        case 3091:
                            if (!str3.equals("b5")) {
                                b8 = -1;
                            } else {
                                b8 = 48;
                            }
                            break;
                        case 3483:
                            if (!str3.equals("mh")) {
                                b8 = -1;
                            } else {
                                b8 = 49;
                            }
                            break;
                        case 73405:
                            if (!str3.equals("JGZ")) {
                                b8 = -1;
                            } else {
                                b8 = 50;
                            }
                            break;
                        case 75537:
                            if (!str3.equals("M04")) {
                                b8 = -1;
                            } else {
                                b8 = 51;
                            }
                            break;
                        case 75739:
                            if (!str3.equals("M5c")) {
                                b8 = -1;
                            } else {
                                b8 = 52;
                            }
                            break;
                        case 76779:
                            if (!str3.equals("MX6")) {
                                b8 = -1;
                            } else {
                                b8 = 53;
                            }
                            break;
                        case 78669:
                            if (!str3.equals("P85")) {
                                b8 = -1;
                            } else {
                                b8 = 54;
                            }
                            break;
                        case 79305:
                            if (!str3.equals("PLE")) {
                                b8 = -1;
                            } else {
                                b8 = 55;
                            }
                            break;
                        case 80618:
                            if (!str3.equals("QX1")) {
                                b8 = -1;
                            } else {
                                b8 = 56;
                            }
                            break;
                        case 88274:
                            if (!str3.equals("Z80")) {
                                b8 = -1;
                            } else {
                                b8 = 57;
                            }
                            break;
                        case 98846:
                            if (!str3.equals("cv1")) {
                                b8 = -1;
                            } else {
                                b8 = 58;
                            }
                            break;
                        case 98848:
                            if (!str3.equals("cv3")) {
                                b8 = -1;
                            } else {
                                b8 = 59;
                            }
                            break;
                        case 99329:
                            if (!str3.equals("deb")) {
                                b8 = -1;
                            } else {
                                b8 = 60;
                            }
                            break;
                        case 101481:
                            if (!str3.equals("flo")) {
                                b8 = -1;
                            } else {
                                b8 = 61;
                            }
                            break;
                        case 1513190:
                            if (!str3.equals("1601")) {
                                b8 = -1;
                            } else {
                                b8 = 62;
                            }
                            break;
                        case 1514184:
                            if (!str3.equals("1713")) {
                                b8 = -1;
                            } else {
                                b8 = 63;
                            }
                            break;
                        case 1514185:
                            if (!str3.equals("1714")) {
                                b8 = -1;
                            } else {
                                b8 = 64;
                            }
                            break;
                        case 2133089:
                            if (!str3.equals("F01H")) {
                                b8 = -1;
                            } else {
                                b8 = 65;
                            }
                            break;
                        case 2133091:
                            if (!str3.equals("F01J")) {
                                b8 = -1;
                            } else {
                                b8 = 66;
                            }
                            break;
                        case 2133120:
                            if (!str3.equals("F02H")) {
                                b8 = -1;
                            } else {
                                b8 = 67;
                            }
                            break;
                        case 2133151:
                            if (!str3.equals("F03H")) {
                                b8 = -1;
                            } else {
                                b8 = 68;
                            }
                            break;
                        case 2133182:
                            if (!str3.equals("F04H")) {
                                b8 = -1;
                            } else {
                                b8 = 69;
                            }
                            break;
                        case 2133184:
                            if (!str3.equals("F04J")) {
                                b8 = -1;
                            } else {
                                b8 = 70;
                            }
                            break;
                        case 2436959:
                            if (!str3.equals("P681")) {
                                b8 = -1;
                            } else {
                                b8 = 71;
                            }
                            break;
                        case 2463773:
                            if (!str3.equals("Q350")) {
                                b8 = -1;
                            } else {
                                b8 = 72;
                            }
                            break;
                        case 2464648:
                            if (!str3.equals("Q427")) {
                                b8 = -1;
                            } else {
                                b8 = 73;
                            }
                            break;
                        case 2689555:
                            if (!str3.equals("XE2X")) {
                                b8 = -1;
                            } else {
                                b8 = 74;
                            }
                            break;
                        case 3154429:
                            if (!str3.equals("fugu")) {
                                b8 = -1;
                            } else {
                                b8 = 75;
                            }
                            break;
                        case 3284551:
                            if (!str3.equals("kate")) {
                                b8 = -1;
                            } else {
                                b8 = 76;
                            }
                            break;
                        case 3351335:
                            if (!str3.equals("mido")) {
                                b8 = -1;
                            } else {
                                b8 = 77;
                            }
                            break;
                        case 3386211:
                            if (!str3.equals("p212")) {
                                b8 = -1;
                            } else {
                                b8 = 78;
                            }
                            break;
                        case 41325051:
                            if (!str3.equals("MEIZU_M5")) {
                                b8 = -1;
                            } else {
                                b8 = 79;
                            }
                            break;
                        case 51349633:
                            if (!str3.equals("601LV")) {
                                b8 = -1;
                            } else {
                                b8 = 80;
                            }
                            break;
                        case 51350594:
                            if (!str3.equals("602LV")) {
                                b8 = -1;
                            } else {
                                b8 = 81;
                            }
                            break;
                        case 55178625:
                            if (!str3.equals("Aura_Note_2")) {
                                b8 = -1;
                            } else {
                                b8 = 82;
                            }
                            break;
                        case 61542055:
                            if (!str3.equals("A1601")) {
                                b8 = -1;
                            } else {
                                b8 = 83;
                            }
                            break;
                        case 65355429:
                            if (!str3.equals("E5643")) {
                                b8 = -1;
                            } else {
                                b8 = 84;
                            }
                            break;
                        case 66214468:
                            if (!str3.equals("F3111")) {
                                b8 = -1;
                            } else {
                                b8 = 85;
                            }
                            break;
                        case 66214470:
                            if (!str3.equals("F3113")) {
                                b8 = -1;
                            } else {
                                b8 = 86;
                            }
                            break;
                        case 66214473:
                            if (!str3.equals("F3116")) {
                                b8 = -1;
                            } else {
                                b8 = 87;
                            }
                            break;
                        case 66215429:
                            if (!str3.equals("F3211")) {
                                b8 = -1;
                            } else {
                                b8 = 88;
                            }
                            break;
                        case 66215431:
                            if (!str3.equals("F3213")) {
                                b8 = -1;
                            } else {
                                b8 = 89;
                            }
                            break;
                        case 66215433:
                            if (!str3.equals("F3215")) {
                                b8 = -1;
                            } else {
                                b8 = 90;
                            }
                            break;
                        case 66216390:
                            if (!str3.equals("F3311")) {
                                b8 = -1;
                            } else {
                                b8 = 91;
                            }
                            break;
                        case 76402249:
                            if (!str3.equals("PRO7S")) {
                                b8 = -1;
                            } else {
                                b8 = 92;
                            }
                            break;
                        case 76404105:
                            if (!str3.equals("Q4260")) {
                                b8 = -1;
                            } else {
                                b8 = 93;
                            }
                            break;
                        case 76404911:
                            if (!str3.equals("Q4310")) {
                                b8 = -1;
                            } else {
                                b8 = 94;
                            }
                            break;
                        case 80963634:
                            if (!str3.equals("V23GB")) {
                                b8 = -1;
                            } else {
                                b8 = 95;
                            }
                            break;
                        case 82882791:
                            if (!str3.equals("X3_HK")) {
                                b8 = -1;
                            } else {
                                b8 = 96;
                            }
                            break;
                        case 98715550:
                            if (!str3.equals("i9031")) {
                                b8 = -1;
                            } else {
                                b8 = 97;
                            }
                            break;
                        case 101370885:
                            if (!str3.equals("l5460")) {
                                b8 = -1;
                            } else {
                                b8 = 98;
                            }
                            break;
                        case 102844228:
                            if (!str3.equals("le_x6")) {
                                b8 = -1;
                            } else {
                                b8 = 99;
                            }
                            break;
                        case 165221241:
                            if (!str3.equals("A2016a40")) {
                                b8 = -1;
                            } else {
                                b8 = 100;
                            }
                            break;
                        case 182191441:
                            if (!str3.equals("CPY83_I00")) {
                                b8 = -1;
                            } else {
                                b8 = 101;
                            }
                            break;
                        case 245388979:
                            if (!str3.equals("marino_f")) {
                                b8 = -1;
                            } else {
                                b8 = 102;
                            }
                            break;
                        case 287431619:
                            if (!str3.equals("griffin")) {
                                b8 = -1;
                            } else {
                                b8 = 103;
                            }
                            break;
                        case 307593612:
                            if (!str3.equals("A7010a48")) {
                                b8 = -1;
                            } else {
                                b8 = 104;
                            }
                            break;
                        case 308517133:
                            if (!str3.equals("A7020a48")) {
                                b8 = -1;
                            } else {
                                b8 = 105;
                            }
                            break;
                        case 316215098:
                            if (!str3.equals("TB3-730F")) {
                                b8 = -1;
                            } else {
                                b8 = 106;
                            }
                            break;
                        case 316215116:
                            if (!str3.equals("TB3-730X")) {
                                b8 = -1;
                            } else {
                                b8 = 107;
                            }
                            break;
                        case 316246811:
                            if (!str3.equals("TB3-850F")) {
                                b8 = -1;
                            } else {
                                b8 = 108;
                            }
                            break;
                        case 316246818:
                            if (!str3.equals("TB3-850M")) {
                                b8 = -1;
                            } else {
                                b8 = 109;
                            }
                            break;
                        case 407160593:
                            if (!str3.equals("Pixi5-10_4G")) {
                                b8 = -1;
                            } else {
                                b8 = 110;
                            }
                            break;
                        case 507412548:
                            if (!str3.equals("QM16XE_U")) {
                                b8 = -1;
                            } else {
                                b8 = 111;
                            }
                            break;
                        case 793982701:
                            if (!str3.equals("GIONEE_WBL5708")) {
                                b8 = -1;
                            } else {
                                b8 = 112;
                            }
                            break;
                        case 794038622:
                            if (!str3.equals("GIONEE_WBL7365")) {
                                b8 = -1;
                            } else {
                                b8 = 113;
                            }
                            break;
                        case 794040393:
                            if (!str3.equals("GIONEE_WBL7519")) {
                                b8 = -1;
                            } else {
                                b8 = 114;
                            }
                            break;
                        case 835649806:
                            if (!str3.equals("manning")) {
                                b8 = -1;
                            } else {
                                b8 = 115;
                            }
                            break;
                        case 917340916:
                            if (!str3.equals("A7000plus")) {
                                b8 = -1;
                            } else {
                                b8 = 116;
                            }
                            break;
                        case 958008161:
                            if (!str3.equals("j2xlteins")) {
                                b8 = -1;
                            } else {
                                b8 = 117;
                            }
                            break;
                        case 1060579533:
                            if (!str3.equals("panell_d")) {
                                b8 = -1;
                            } else {
                                b8 = 118;
                            }
                            break;
                        case 1150207623:
                            if (!str3.equals("LS-5017")) {
                                b8 = -1;
                            } else {
                                b8 = 119;
                            }
                            break;
                        case 1176899427:
                            if (!str3.equals("itel_S41")) {
                                b8 = -1;
                            } else {
                                b8 = 120;
                            }
                            break;
                        case 1280332038:
                            if (!str3.equals("hwALE-H")) {
                                b8 = -1;
                            } else {
                                b8 = 121;
                            }
                            break;
                        case 1306947716:
                            if (!str3.equals("EverStar_S")) {
                                b8 = -1;
                            } else {
                                b8 = 122;
                            }
                            break;
                        case 1349174697:
                            if (!str3.equals("htc_e56ml_dtul")) {
                                b8 = -1;
                            } else {
                                b8 = 123;
                            }
                            break;
                        case 1522194893:
                            if (!str3.equals("woods_f")) {
                                b8 = -1;
                            } else {
                                b8 = 124;
                            }
                            break;
                        case 1691543273:
                            if (!str3.equals("CPH1609")) {
                                b8 = -1;
                            } else {
                                b8 = 125;
                            }
                            break;
                        case 1691544261:
                            if (!str3.equals("CPH1715")) {
                                b8 = -1;
                            } else {
                                b8 = 126;
                            }
                            break;
                        case 1709443163:
                            if (!str3.equals("iball8735_9806")) {
                                b8 = -1;
                            } else {
                                b8 = 127;
                            }
                            break;
                        case 1865889110:
                            if (!str3.equals("santoni")) {
                                b8 = -1;
                            } else {
                                b8 = 128;
                            }
                            break;
                        case 1906253259:
                            if (!str3.equals("PB2-670M")) {
                                b8 = -1;
                            } else {
                                b8 = 129;
                            }
                            break;
                        case 1977196784:
                            if (!str3.equals("Infinix-X572")) {
                                b8 = -1;
                            } else {
                                b8 = 130;
                            }
                            break;
                        case 2006372676:
                            if (!str3.equals("BRAVIA_ATV3_4K")) {
                                b8 = -1;
                            } else {
                                b8 = 131;
                            }
                            break;
                        case 2019281702:
                            if (!str3.equals("DM-01K")) {
                                b8 = -1;
                            } else {
                                b8 = 132;
                            }
                            break;
                        case 2029784656:
                            if (!str3.equals("HWBLN-H")) {
                                b8 = -1;
                            } else {
                                b8 = 133;
                            }
                            break;
                        case 2030379515:
                            if (!str3.equals("HWCAM-H")) {
                                b8 = -1;
                            } else {
                                b8 = 134;
                            }
                            break;
                        case 2033393791:
                            if (!str3.equals("ASUS_X00AD_2")) {
                                b8 = -1;
                            } else {
                                b8 = 135;
                            }
                            break;
                        case 2047190025:
                            if (!str3.equals("ELUGA_Note")) {
                                b8 = -1;
                            } else {
                                b8 = 136;
                            }
                            break;
                        case 2047252157:
                            if (!str3.equals("ELUGA_Prim")) {
                                b8 = -1;
                            } else {
                                b8 = 137;
                            }
                            break;
                        case 2048319463:
                            if (!str3.equals("HWVNS-H")) {
                                b8 = -1;
                            } else {
                                b8 = 138;
                            }
                            break;
                        case 2048855701:
                            if (!str3.equals("HWWAS-H")) {
                                b8 = -1;
                            } else {
                                b8 = 139;
                            }
                            break;
                        default:
                            b8 = -1;
                            break;
                    }
                    switch (b8) {
                        default:
                            str2.getClass();
                            if (!str2.equals("JSN-L21")) {
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                        case 27:
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                        case 32:
                        case 33:
                        case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                        case 35:
                        case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                        case 37:
                        case 38:
                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                        case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                        case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                        case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                        case 43:
                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                        case 61:
                        case 62:
                        case 63:
                        case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                        case 65:
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                        case 80:
                        case 81:
                        case 82:
                        case 83:
                        case 84:
                        case 85:
                        case 86:
                        case 87:
                        case 88:
                        case 89:
                        case 90:
                        case 91:
                        case 92:
                        case 93:
                        case 94:
                        case 95:
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                        case 100:
                        case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                        case 102:
                        case 103:
                        case 104:
                        case 105:
                        case 106:
                        case 107:
                        case 108:
                        case 109:
                        case 110:
                        case 111:
                        case 112:
                        case 113:
                        case 114:
                        case 115:
                        case 116:
                        case 117:
                        case 118:
                        case 119:
                        case 120:
                        case 121:
                        case 122:
                        case 123:
                        case 124:
                        case 125:
                        case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                        case 127:
                        case 128:
                        case 129:
                        case 130:
                        case 131:
                        case 132:
                        case 133:
                        case 134:
                        case 135:
                        case 136:
                        case 137:
                        case 138:
                        case 139:
                            return true;
                    }
                }
                return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    /* JADX WARN: Code duplicated, block: B:23:0x004b  */
    public static int a0(C3136t c3136t, K0.o oVar) {
        int i8;
        int i9 = c3136t.f27048v;
        if (i9 == -1 || (i8 = c3136t.f27049w) == -1) {
            return -1;
        }
        String str = c3136t.f27041o;
        str.getClass();
        if ("video/dolby-vision".equals(str)) {
            HashMap map = K0.z.f4454a;
            Pair pairB = AbstractC3169g.b(c3136t);
            if (pairB == null) {
                str = "video/hevc";
            } else {
                int iIntValue = ((Integer) pairB.first).intValue();
                if (iIntValue == 512 || iIntValue == 1 || iIntValue == 2) {
                    str = "video/avc";
                } else if (iIntValue == 1024) {
                    str = "video/av01";
                } else {
                    str = "video/hevc";
                }
            }
        }
        switch (str) {
            case "video/3gpp":
            case "video/av01":
            case "video/mp4v-es":
            case "video/x-vnd.on2.vp8":
                return ((i9 * i8) * 3) / 4;
            case "video/hevc":
                return Math.max(2097152, ((i9 * i8) * 3) / 4);
            case "video/avc":
                String str2 = Build.MODEL;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(Build.MANUFACTURER) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && oVar.f4360f)))) {
                    return -1;
                }
                return ((p117p0.M.f(i8, 16) * p117p0.M.f(i9, 16)) * 768) / 4;
            case "video/x-vnd.on2.vp9":
                return ((i9 * i8) * 3) / 8;
            default:
                return -1;
        }
    }

    public static List b0(Context context, K0.s sVar, C3136t c3136t, boolean z7, boolean z8) {
        List listD;
        String str = c3136t.f27041o;
        if (str == null) {
            return d0.f31844K;
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !Z3.C.a(context)) {
            String strB = K0.z.b(c3136t);
            if (strB == null) {
                listD = d0.f31844K;
            } else {
                ((C0082g) sVar).getClass();
                listD = K0.z.d(strB, z7, z8);
            }
            if (!listD.isEmpty()) {
                return listD;
            }
        }
        return K0.z.f(sVar, c3136t, z7, z8);
    }

    public static int c0(C3136t c3136t, K0.o oVar) {
        int i8 = c3136t.f27042p;
        if (i8 == -1) {
            return a0(c3136t, oVar);
        }
        List list = c3136t.f27044r;
        int size = list.size();
        int length = 0;
        for (int i9 = 0; i9 < size; i9++) {
            length += ((byte[]) list.get(i9)).length;
        }
        return i8 + length;
    }

    @Override // K0.r
    public final void B(long j8) {
        super.B(j8);
        if (this.f6775H1) {
            return;
        }
        this.f6811y1--;
    }

    @Override // K0.r
    public final void C() {
        S s7 = this.f6798l1;
        if (s7 != null) {
            s7.a();
            if (this.f6779L1 == -9223372036854775807L) {
                this.f6779L1 = this.f4402O0.f4375b;
            }
            this.f6798l1.g(-this.f6779L1);
        } else {
            this.f6788b1.f(2);
        }
        this.f6781N1 = true;
        h0();
    }

    @Override // K0.r
    public final void D(p171w0.g gVar) {
        Surface surface;
        ByteBuffer byteBuffer;
        U u7 = this.f6790d1;
        if (u7 != null) {
            K0.o oVar = this.f4427h0;
            oVar.getClass();
            if (oVar.f4356b.equals("video/av01") && (byteBuffer = gVar.f30904I) != null) {
                u7.N(E3.f.C(byteBuffer));
            }
        }
        this.f6782O1 = 0;
        int iJ = j(gVar);
        int i8 = Build.VERSION.SDK_INT;
        if ((i8 < 34 || (iJ & 32) == 0) && !this.f6775H1) {
            this.f6811y1++;
        }
        if (i8 >= 23 || !this.f6775H1) {
            return;
        }
        long j8 = gVar.f30906K;
        X(j8);
        w0 w0Var = this.f6772E1;
        boolean zEquals = w0Var.equals(w0.f27062d);
        x0 x0Var = this.f6785Y0;
        if (!zEquals && !w0Var.equals(this.f6773F1)) {
            this.f6773F1 = w0Var;
            x0Var.A(w0Var);
        }
        this.f4400N0.f968e++;
        E e8 = this.f6788b1;
        boolean z7 = e8.f6633e != 3;
        e8.f6633e = 3;
        ((p117p0.G) e8.f6640l).getClass();
        e8.f6635g = p117p0.M.R(SystemClock.elapsedRealtime());
        if (z7 && (surface = this.f6802p1) != null) {
            x0Var.v(surface);
            this.f6805s1 = true;
        }
        B(j8);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00aa  */
    @Override // K0.r
    public final boolean F(long j8, long j9, K0.l lVar, ByteBuffer byteBuffer, int i8, int i9, int i10, long j10, boolean z7, boolean z8, C3136t c3136t) {
        double dDoubleValue;
        lVar.getClass();
        long j11 = j10 - this.f4402O0.f4376c;
        int i11 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.f6793g1;
            Long l4 = (Long) priorityQueue.peek();
            if (l4 == null || l4.longValue() >= j10) {
                break;
            }
            i11++;
            priorityQueue.poll();
        }
        n0(i11, 0);
        S s7 = this.f6798l1;
        if (s7 != null) {
            if (!z7 || z8) {
                return s7.r(j10, new C0342h(this, lVar, i8, j11));
            }
            m0(lVar, i8);
            return true;
        }
        int iA = this.f6788b1.a(j10, j8, j9, this.f4402O0.f4375b, z7, z8, this.f6789c1);
        C c8 = this.f6789c1;
        F f8 = this.f6792f1;
        if (f8 != null && iA != 5 && iA != 4) {
            long j12 = c8.f6627a;
            H1.d(j10 != -9223372036854775807L);
            H1.d(j12 != -9223372036854775807L);
            long j13 = f8.f6643a;
            if (j13 != -9223372036854775807L) {
                long j14 = f8.f6644b;
                if (j14 == -9223372036854775807L || j10 == j13) {
                    dDoubleValue = ((Double) f8.f6646d.getUpper()).doubleValue();
                } else {
                    dDoubleValue = (j12 - j14) / (j10 - j13);
                }
            } else {
                dDoubleValue = ((Double) f8.f6646d.getUpper()).doubleValue();
            }
            f8.f6645c = (((Double) f8.f6646d.clamp(Double.valueOf(dDoubleValue))).doubleValue() * 0.20000000298023224d) + (f8.f6645c * 0.800000011920929d);
            f8.f6643a = j10;
            f8.f6644b = j12;
        }
        if (iA == 0) {
            ((p117p0.G) getClock()).getClass();
            long jNanoTime = System.nanoTime();
            B b8 = this.f6778K1;
            if (b8 != null) {
                b8.b(j11, jNanoTime, c3136t, this.f4422c0);
            }
            i0(lVar, i8, jNanoTime);
            o0(c8.f6627a);
            return true;
        }
        if (iA == 1) {
            long j15 = c8.f6628b;
            long j16 = c8.f6627a;
            if (j15 == this.f6771D1) {
                m0(lVar, i8);
            } else {
                B b9 = this.f6778K1;
                if (b9 != null) {
                    b9.b(j11, j15, c3136t, this.f4422c0);
                }
                i0(lVar, i8, j15);
            }
            o0(j16);
            this.f6771D1 = j15;
            return true;
        }
        if (iA == 2) {
            Trace.beginSection("dropVideoBuffer");
            lVar.f(i8);
            Trace.endSection();
            n0(0, 1);
            o0(c8.f6627a);
            return true;
        }
        if (iA == 3) {
            m0(lVar, i8);
            o0(c8.f6627a);
            return true;
        }
        if (iA == 4 || iA == 5) {
            return false;
        }
        throw new IllegalStateException(String.valueOf(iA));
    }

    @Override // K0.r
    public final void I() {
        S s7 = this.f6798l1;
        if (s7 != null) {
            s7.a();
        }
    }

    @Override // K0.r
    public final void K() {
        super.K();
        this.f6793g1.clear();
        this.f6811y1 = 0;
        this.f6782O1 = 0;
        this.f6768A1 = false;
        U u7 = this.f6790d1;
        if (u7 != null) {
            switch (u7.f1867G) {
                case 2:
                    ((SparseArray) u7.f1868H).clear();
                    break;
                default:
                    u7.f1868H = null;
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0040  */
    /* JADX WARN: Code duplicated, block: B:87:0x0127 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x0129  */
    /* JADX WARN: Code duplicated, block: B:89:0x0131  */
    @Override // K0.r
    public final boolean P(p171w0.g gVar) {
        boolean z7;
        ByteBuffer byteBuffer;
        int iLimit;
        p125q0.s sVar;
        G.c cVar;
        boolean z8 = false;
        if (f0(gVar)) {
            return false;
        }
        boolean z9 = gVar.f30906K < getLastResetPositionUs();
        F f8 = this.f6792f1;
        if (f8 != null) {
            long j8 = gVar.f30906K;
            long j9 = f8.f6643a;
            long j10 = j9 == -9223372036854775807L ? -9223372036854775807L : (long) (((j8 - j9) * f8.f6645c) + f8.f6644b);
            if (j10 == -9223372036854775807L || j10 >= this.f6791e1) {
                z7 = false;
            } else {
                z7 = true;
            }
        } else {
            z7 = false;
        }
        if ((!z9 && !z7) || gVar.hasSupplementalData()) {
            return false;
        }
        if (!gVar.notDependedOn()) {
            U u7 = this.f6790d1;
            if (u7 != null) {
                K0.o oVar = this.f4427h0;
                oVar.getClass();
                if (oVar.f4356b.equals("video/av01") && (byteBuffer = gVar.f30904I) != null) {
                    boolean z10 = z9 || this.f6782O1 <= 0;
                    ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                    byteBufferAsReadOnlyBuffer.flip();
                    ArrayList arrayListC = E3.f.C(byteBufferAsReadOnlyBuffer);
                    u7.N(arrayListC);
                    int size = arrayListC.size() - 1;
                    int i8 = 0;
                    while (size >= 0) {
                        p125q0.r rVar = (p125q0.r) arrayListC.get(size);
                        int i9 = rVar.f29512a;
                        if (i9 != 2 && i9 != 15) {
                            if ((i9 == 3 && !z10) || ((i9 != 6 && i9 != 3) || (sVar = (p125q0.s) u7.f1868H) == null)) {
                                break;
                            }
                            try {
                                cVar = new G.c(sVar, rVar);
                            } catch (p125q0.q unused) {
                                cVar = null;
                            }
                            if (cVar == null || cVar.f3280H) {
                                break;
                            }
                        }
                        if (((p125q0.r) arrayListC.get(size)).f29512a == 6 || ((p125q0.r) arrayListC.get(size)).f29512a == 3) {
                            i8++;
                        }
                        size--;
                    }
                    if (i8 > 1 || size + 1 >= 8) {
                        iLimit = byteBufferAsReadOnlyBuffer.limit();
                    } else {
                        iLimit = size >= 0 ? ((p125q0.r) arrayListC.get(size)).f29513b.limit() : byteBufferAsReadOnlyBuffer.position();
                    }
                    if (iLimit == 0) {
                        gVar.clear();
                    } else if (iLimit != byteBufferAsReadOnlyBuffer.limit()) {
                        A2.i iVar = this.f6795i1;
                        iVar.getClass();
                        if (iVar.f632c + iLimit < byteBufferAsReadOnlyBuffer.capacity() && !gVar.getFlag(1073741824)) {
                            ByteBuffer byteBuffer2 = gVar.f30904I;
                            byteBuffer2.getClass();
                            byteBuffer2.position(iLimit);
                        }
                    }
                }
            }
            if (z8) {
                if (z9) {
                    this.f4400N0.f967d++;
                } else {
                    this.f6793g1.add(Long.valueOf(gVar.f30906K));
                    this.f6782O1++;
                }
            }
            return z8;
        }
        gVar.clear();
        z8 = true;
        if (z8) {
            if (z9) {
                this.f4400N0.f967d++;
            } else {
                this.f6793g1.add(Long.valueOf(gVar.f30906K));
                this.f6782O1++;
            }
        }
        return z8;
    }

    @Override // K0.r
    public final boolean Q() {
        C3136t c3136t = this.f4421b0;
        H0 h8 = this.f6812z1;
        if (h8 == null || !h8.f723c || this.f6768A1 || this.f6775H1) {
            return true;
        }
        return (c3136t != null && c3136t.f27043q > 0) || this.f4410S0 || this.f4388H0 != -9223372036854775807L;
    }

    @Override // K0.r
    public final boolean R(K0.o oVar) {
        return e0(oVar);
    }

    @Override // K0.r
    public final boolean S() {
        K0.o oVar = this.f4427h0;
        if (this.f6798l1 != null && oVar != null) {
            String str = oVar.f4355a;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                return true;
            }
        }
        return super.S();
    }

    @Override // K0.r
    public final int U(K0.s sVar, C3136t c3136t) {
        boolean z7;
        int i8 = 0;
        if (!p094m0.O.o(c3136t.f27041o)) {
            return A0.O.o(0, 0, 0, 0);
        }
        boolean z8 = c3136t.f27045s != null;
        Context context = this.f6783W0;
        List listB0 = b0(context, sVar, c3136t, z8, false);
        if (z8 && listB0.isEmpty()) {
            listB0 = b0(context, sVar, c3136t, false, false);
        }
        if (listB0.isEmpty()) {
            return A0.O.o(1, 0, 0, 0);
        }
        int i9 = c3136t.f27025P;
        if (i9 != 0 && i9 != 2) {
            return A0.O.o(2, 0, 0, 0);
        }
        K0.o oVar = (K0.o) listB0.get(0);
        boolean zE = oVar.e(c3136t);
        if (!zE) {
            int i10 = 1;
            while (true) {
                if (i10 >= listB0.size()) {
                    z7 = true;
                    break;
                }
                K0.o oVar2 = (K0.o) listB0.get(i10);
                if (oVar2.e(c3136t)) {
                    oVar = oVar2;
                    z7 = false;
                    zE = true;
                    break;
                }
                i10++;
            }
        } else {
            z7 = true;
            break;
        }
        int i11 = zE ? 4 : 3;
        int i12 = oVar.f(c3136t) ? 16 : 8;
        int i13 = oVar.f4361g ? 64 : 0;
        int i14 = z7 ? 128 : 0;
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(c3136t.f27041o) && !Z3.C.a(context)) {
            i14 = 256;
        }
        if (zE) {
            List listB1 = b0(context, sVar, c3136t, z8, true);
            if (!listB1.isEmpty()) {
                HashMap map = K0.z.f4454a;
                ArrayList arrayList = new ArrayList(listB1);
                Collections.sort(arrayList, new K0.t(new C0073x(c3136t, 18), i8));
                K0.o oVar3 = (K0.o) arrayList.get(0);
                if (oVar3.e(c3136t) && oVar3.f(c3136t)) {
                    i8 = 32;
                }
            }
        }
        return i11 | i12 | i8 | i13 | i14;
    }

    @Override // K0.r
    public final C0055j b(K0.o oVar, C3136t c3136t, C3136t c3136t2) {
        C0055j c0055jB = oVar.b(c3136t, c3136t2);
        A2.i iVar = this.f6795i1;
        iVar.getClass();
        int i8 = c3136t2.f27048v;
        int i9 = iVar.f630a;
        int i10 = c0055jB.f997e;
        if (i8 > i9 || c3136t2.f27049w > iVar.f631b) {
            i10 |= 256;
        }
        if (c0(c3136t2, oVar) > iVar.f632c) {
            i10 |= 64;
        }
        int i11 = i10;
        return new C0055j(oVar.f4355a, c3136t, c3136t2, i11 != 0 ? 0 : c0055jB.f996d, i11);
    }

    @Override // K0.r
    public final K0.n c(IllegalStateException illegalStateException, K0.o oVar) {
        Surface surface = this.f6802p1;
        C0341g c0341g = new C0341g(illegalStateException, oVar);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
        return c0341g;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0054  */
    /* JADX WARN: Code duplicated, block: B:33:0x0057  */
    /* JADX WARN: Code duplicated, block: B:50:0x0090  */
    /* JADX WARN: Code duplicated, block: B:53:0x009b  */
    /* JADX WARN: Code duplicated, block: B:55:0x009f  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:57:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:62:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final Surface d0(K0.o oVar) {
        boolean z7;
        HandlerThreadC0346l handlerThreadC0346l;
        int i8;
        RuntimeException runtimeException;
        Error error;
        S s7 = this.f6798l1;
        if (s7 != null) {
            return s7.c();
        }
        Surface surface = this.f6802p1;
        if (surface != null) {
            return surface;
        }
        if (Build.VERSION.SDK_INT >= 35 && oVar.f4364j) {
            return null;
        }
        H1.i(l0(oVar));
        C0347m c0347m = this.f6803q1;
        if (c0347m != null && c0347m.f6821G != oVar.f4360f && c0347m != null) {
            c0347m.release();
            this.f6803q1 = null;
        }
        if (this.f6803q1 == null) {
            Context context = this.f6783W0;
            boolean z8 = oVar.f4360f;
            int i9 = 0;
            if (z8) {
                if (!C0347m.c(context)) {
                    z7 = false;
                }
                H1.i(z7);
                handlerThreadC0346l = new HandlerThreadC0346l(i9);
                if (z8) {
                    i8 = C0347m.f6819J;
                } else {
                    i8 = 0;
                }
                handlerThreadC0346l.start();
                Handler handler = new Handler(handlerThreadC0346l.getLooper(), handlerThreadC0346l);
                handlerThreadC0346l.f6814H = handler;
                handlerThreadC0346l.f6817K = new RunnableC3174l(handler);
                synchronized (handlerThreadC0346l) {
                    handlerThreadC0346l.f6814H.obtainMessage(1, i8, 0).sendToTarget();
                    while (((C0347m) handlerThreadC0346l.f6818L) == null && handlerThreadC0346l.f6816J == null && handlerThreadC0346l.f6815I == null) {
                        try {
                            handlerThreadC0346l.wait();
                        } catch (InterruptedException unused) {
                            i9 = 1;
                        }
                    }
                }
                if (i9 != 0) {
                    Thread.currentThread().interrupt();
                }
                runtimeException = handlerThreadC0346l.f6816J;
                if (runtimeException == null) {
                    throw runtimeException;
                }
                error = handlerThreadC0346l.f6815I;
                if (error == null) {
                    throw error;
                }
                C0347m c0347m2 = (C0347m) handlerThreadC0346l.f6818L;
                c0347m2.getClass();
                this.f6803q1 = c0347m2;
            } else {
                int i10 = C0347m.f6819J;
            }
            z7 = true;
            H1.i(z7);
            handlerThreadC0346l = new HandlerThreadC0346l(i9);
            if (z8) {
                i8 = C0347m.f6819J;
            } else {
                i8 = 0;
            }
            handlerThreadC0346l.start();
            Handler handler2 = new Handler(handlerThreadC0346l.getLooper(), handlerThreadC0346l);
            handlerThreadC0346l.f6814H = handler2;
            handlerThreadC0346l.f6817K = new RunnableC3174l(handler2);
            synchronized (handlerThreadC0346l) {
                handlerThreadC0346l.f6814H.obtainMessage(1, i8, 0).sendToTarget();
                while (((C0347m) handlerThreadC0346l.f6818L) == null) {
                    handlerThreadC0346l.wait();
                }
                if (i9 != 0) {
                    Thread.currentThread().interrupt();
                }
                runtimeException = handlerThreadC0346l.f6816J;
                if (runtimeException == null) {
                    throw runtimeException;
                }
                error = handlerThreadC0346l.f6815I;
                if (error == null) {
                    throw error;
                }
                C0347m c0347m3 = (C0347m) handlerThreadC0346l.f6818L;
                c0347m3.getClass();
                this.f6803q1 = c0347m3;
            }
        }
        return this.f6803q1;
    }

    public final boolean e0(K0.o oVar) {
        Surface surface;
        return this.f6798l1 != null || ((surface = this.f6802p1) != null && surface.isValid()) || ((Build.VERSION.SDK_INT >= 35 && oVar.f4364j) || l0(oVar));
    }

    @Override // B0.AbstractC0051h
    public final void enableMayRenderStartOfStream() {
        S s7 = this.f6798l1;
        if (s7 == null) {
            E e8 = this.f6788b1;
            if (e8.f6633e == 0) {
                e8.f6633e = 1;
                return;
            }
            return;
        }
        int i8 = this.f6800n1;
        if (i8 == 0 || i8 == 1) {
            this.f6800n1 = 0;
        } else {
            s7.u();
        }
    }

    public final boolean f0(p171w0.g gVar) {
        if (hasReadStreamToEnd() || gVar.isLastSample()) {
            return true;
        }
        long j8 = this.f6780M1;
        return j8 == -9223372036854775807L || j8 - (gVar.f30906K - this.f4402O0.f4376c) <= 100000;
    }

    public final void g0() {
        if (this.f6809w1 > 0) {
            ((p117p0.G) getClock()).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j8 = jElapsedRealtime - this.f6808v1;
            x0 x0Var = this.f6785Y0;
            int i8 = this.f6809w1;
            Handler handler = (Handler) x0Var.f22390H;
            if (handler != null) {
                handler.post(new L(x0Var, i8, j8));
            }
            this.f6809w1 = 0;
            this.f6808v1 = jElapsedRealtime;
        }
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "MediaCodecVideoRenderer";
    }

    public final void h0() {
        int i8;
        K0.l lVar;
        if (!this.f6775H1 || (i8 = Build.VERSION.SDK_INT) < 23 || (lVar = this.f4420a0) == null) {
            return;
        }
        this.f6777J1 = new C0344j(this, lVar);
        if (i8 >= 33) {
            Bundle bundle = new Bundle();
            bundle.putInt("tunnel-peek", 1);
            lVar.d(bundle);
        }
    }

    @Override // B0.AbstractC0051h, B0.y0
    public final void handleMessage(int i8, Object obj) throws C0072w {
        if (i8 == 1) {
            j0(obj);
        }
        if (i8 == 7) {
            obj.getClass();
            B b8 = (B) obj;
            this.f6778K1 = b8;
            S s7 = this.f6798l1;
            if (s7 != null) {
                s7.t(b8);
                return;
            }
            return;
        }
        if (i8 == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (this.f6776I1 != iIntValue) {
                this.f6776I1 = iIntValue;
                if (this.f6775H1) {
                    H();
                    return;
                }
                return;
            }
            return;
        }
        if (i8 == 4) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            this.f6806t1 = iIntValue2;
            K0.l lVar = this.f4420a0;
            if (lVar != null) {
                lVar.m(iIntValue2);
                return;
            }
            return;
        }
        if (i8 == 5) {
            obj.getClass();
            int iIntValue3 = ((Integer) obj).intValue();
            this.f6807u1 = iIntValue3;
            S s8 = this.f6798l1;
            if (s8 != null) {
                s8.h(iIntValue3);
                return;
            }
            I i9 = this.f6788b1.f6630b;
            if (i9.f6660g == iIntValue3) {
                return;
            }
            i9.f6660g = iIntValue3;
            i9.d(true);
            return;
        }
        if (i8 == 13) {
            obj.getClass();
            List list = (List) obj;
            if (list.equals(s0.f27009a)) {
                S s9 = this.f6798l1;
                if (s9 == null || !s9.isInitialized()) {
                    return;
                }
                this.f6798l1.s();
                return;
            }
            this.f6801o1 = list;
            S s10 = this.f6798l1;
            if (s10 != null) {
                s10.m(list);
                return;
            }
            return;
        }
        if (i8 == 14) {
            obj.getClass();
            p117p0.F f8 = (p117p0.F) obj;
            if (f8.f28039a == 0 || f8.f28040b == 0) {
                return;
            }
            this.f6804r1 = f8;
            S s11 = this.f6798l1;
            if (s11 != null) {
                Surface surface = this.f6802p1;
                H1.j(surface);
                s11.n(surface, f8);
                return;
            }
            return;
        }
        switch (i8) {
            case 16:
                obj.getClass();
                this.f6774G1 = ((Integer) obj).intValue();
                K0.l lVar2 = this.f4420a0;
                if (lVar2 != null && Build.VERSION.SDK_INT >= 35) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("importance", Math.max(0, -this.f6774G1));
                    lVar2.d(bundle);
                }
                break;
            case 17:
                Surface surface2 = this.f6802p1;
                j0(null);
                obj.getClass();
                ((C0345k) obj).handleMessage(1, surface2);
                break;
            case 18:
                H0 h8 = this.f6812z1;
                boolean z7 = h8 != null && h8.f722b;
                H0 h9 = (H0) obj;
                this.f6812z1 = h9;
                if (z7 != (h9 != null && h9.f722b)) {
                    V(this.f4421b0);
                }
                break;
            default:
                if (i8 == 11) {
                    B0.S s12 = (B0.S) obj;
                    s12.getClass();
                    this.f4415V = s12;
                }
                break;
        }
    }

    public final void i0(K0.l lVar, int i8, long j8) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        lVar.j(i8, j8);
        Trace.endSection();
        this.f4400N0.f968e++;
        this.f6810x1 = 0;
        if (this.f6798l1 == null) {
            w0 w0Var = this.f6772E1;
            boolean zEquals = w0Var.equals(w0.f27062d);
            x0 x0Var = this.f6785Y0;
            if (!zEquals && !w0Var.equals(this.f6773F1)) {
                this.f6773F1 = w0Var;
                x0Var.A(w0Var);
            }
            E e8 = this.f6788b1;
            boolean z7 = e8.f6633e != 3;
            e8.f6633e = 3;
            ((p117p0.G) e8.f6640l).getClass();
            e8.f6635g = p117p0.M.R(SystemClock.elapsedRealtime());
            if (!z7 || (surface = this.f6802p1) == null) {
                return;
            }
            x0Var.v(surface);
            this.f6805s1 = true;
        }
    }

    @Override // B0.AbstractC0051h
    public final boolean isEnded() {
        S s7;
        return this.f4392J0 && ((s7 = this.f6798l1) == null || s7.b());
    }

    @Override // K0.r, B0.AbstractC0051h
    public final boolean isReady() {
        boolean zIsReady = super.isReady();
        S s7 = this.f6798l1;
        if (s7 != null) {
            return s7.q(zIsReady);
        }
        if (zIsReady && (this.f4420a0 == null || this.f6775H1)) {
            return true;
        }
        return this.f6788b1.b(zIsReady);
    }

    @Override // K0.r
    public final int j(p171w0.g gVar) {
        H0 h8;
        if (Build.VERSION.SDK_INT >= 34) {
            return ((this.f6794h1 || (((h8 = this.f6812z1) != null && h8.f725e) || this.f6775H1)) && gVar.f30906K < getLastResetPositionUs() && !f0(gVar)) ? 32 : 0;
        }
        return 0;
    }

    public final void j0(Object obj) throws C0072w {
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        Surface surface2 = this.f6802p1;
        x0 x0Var = this.f6785Y0;
        if (surface2 == surface) {
            if (surface != null) {
                w0 w0Var = this.f6773F1;
                if (w0Var != null) {
                    x0Var.A(w0Var);
                }
                Surface surface3 = this.f6802p1;
                if (surface3 == null || !this.f6805s1) {
                    return;
                }
                x0Var.v(surface3);
                return;
            }
            return;
        }
        this.f6802p1 = surface;
        S s7 = this.f6798l1;
        E e8 = this.f6788b1;
        if (s7 == null) {
            e8.h(surface);
        }
        this.f6805s1 = false;
        int state = getState();
        K0.l lVar = this.f4420a0;
        if (lVar != null && this.f6798l1 == null) {
            K0.o oVar = this.f4427h0;
            oVar.getClass();
            boolean zE0 = e0(oVar);
            int i8 = Build.VERSION.SDK_INT;
            if (i8 < 23 || !zE0 || this.f6796j1) {
                H();
                s();
            } else {
                Surface surfaceD0 = d0(oVar);
                if (i8 >= 23 && surfaceD0 != null) {
                    lVar.p(surfaceD0);
                } else {
                    if (i8 < 35) {
                        throw new IllegalStateException();
                    }
                    lVar.i();
                }
            }
        }
        if (surface != null) {
            w0 w0Var2 = this.f6773F1;
            if (w0Var2 != null) {
                x0Var.A(w0Var2);
            }
        } else {
            this.f6773F1 = null;
            S s8 = this.f6798l1;
            if (s8 != null) {
                s8.i();
            }
        }
        if (state == 2) {
            S s9 = this.f6798l1;
            if (s9 != null) {
                s9.p(true);
            } else {
                e8.c(true);
            }
        }
        h0();
    }

    @Override // K0.r
    public final boolean k() {
        return this.f6775H1 && Build.VERSION.SDK_INT < 23;
    }

    public final boolean k0(long j8, long j9, boolean z7, boolean z8) throws C0072w {
        int iSkipSource;
        if (this.f6798l1 != null && this.f6784X0) {
            j9 -= -this.f6779L1;
        }
        if (j8 >= -500000 || z7 || (iSkipSource = skipSource(j9)) == 0) {
            return false;
        }
        PriorityQueue priorityQueue = this.f6793g1;
        if (z8) {
            C0053i c0053i = this.f4400N0;
            int i8 = c0053i.f967d + iSkipSource;
            c0053i.f967d = i8;
            c0053i.f969f += this.f6811y1;
            c0053i.f967d = priorityQueue.size() + i8;
        } else {
            this.f4400N0.f973j++;
            n0(priorityQueue.size() + iSkipSource, this.f6811y1);
        }
        if (h()) {
            s();
        }
        S s7 = this.f6798l1;
        if (s7 != null) {
            s7.k(false);
        }
        return true;
    }

    @Override // K0.r
    public final float l(float f8, C3136t c3136t, C3136t[] c3136tArr) {
        K0.o oVar;
        float fMax = -1.0f;
        for (C3136t c3136t2 : c3136tArr) {
            float f9 = c3136t2.f27052z;
            if (f9 != -1.0f) {
                fMax = Math.max(fMax, f9);
            }
        }
        float f10 = fMax == -1.0f ? -1.0f : fMax * f8;
        if (this.f6812z1 == null || (oVar = this.f4427h0) == null) {
            return f10;
        }
        int i8 = c3136t.f27048v;
        float f11 = -3.4028235E38f;
        if (oVar.f4365k) {
            float f12 = oVar.f4368n;
            int i9 = c3136t.f27049w;
            if (f12 != -3.4028235E38f && oVar.f4366l == i8 && oVar.f4367m == i9) {
                f11 = f12;
            } else {
                float f13 = 1024.0f;
                if (!oVar.g(i8, i9, 1024.0f)) {
                    f11 = 0.0f;
                    while (true) {
                        float f14 = f13 - f11;
                        if (Math.abs(f14) <= 5.0f) {
                            break;
                        }
                        float f15 = (f14 / 2.0f) + f11;
                        if (oVar.g(i8, i9, f15)) {
                            f11 = f15;
                        } else {
                            f13 = f15;
                        }
                    }
                } else {
                    f11 = 1024.0f;
                }
                oVar.f4368n = f11;
                oVar.f4366l = i8;
                oVar.f4367m = i9;
            }
        }
        return f10 != -1.0f ? Math.max(f10, f11) : f11;
    }

    public final boolean l0(K0.o oVar) {
        return Build.VERSION.SDK_INT >= 23 && !this.f6775H1 && !Y(oVar.f4355a) && (!oVar.f4360f || C0347m.c(this.f6783W0));
    }

    @Override // K0.r
    public final ArrayList m(K0.s sVar, C3136t c3136t, boolean z7) {
        List listB0 = b0(this.f6783W0, sVar, c3136t, z7, this.f6775H1);
        HashMap map = K0.z.f4454a;
        ArrayList arrayList = new ArrayList(listB0);
        Collections.sort(arrayList, new K0.t(new C0073x(c3136t, 18), 0));
        return arrayList;
    }

    public final void m0(K0.l lVar, int i8) {
        Trace.beginSection("skipVideoBuffer");
        lVar.f(i8);
        Trace.endSection();
        this.f4400N0.f969f++;
    }

    public final void n0(int i8, int i9) {
        C0053i c0053i = this.f4400N0;
        c0053i.f971h += i8;
        int i10 = i8 + i9;
        c0053i.f970g += i10;
        this.f6809w1 += i10;
        int i11 = this.f6810x1 + i10;
        this.f6810x1 = i11;
        c0053i.f972i = Math.max(i11, c0053i.f972i);
        int i12 = this.f6786Z0;
        if (i12 <= 0 || this.f6809w1 < i12) {
            return;
        }
        g0();
    }

    @Override // K0.r
    public final C3061x o(K0.o oVar, C3136t c3136t, MediaCrypto mediaCrypto, float f8) {
        C3126i c3126i;
        int i8;
        A2.i iVar;
        Point point;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        boolean z7;
        int iA0;
        C3136t[] streamFormats = getStreamFormats();
        int iC0 = c0(c3136t, oVar);
        int length = streamFormats.length;
        int i9 = c3136t.f27048v;
        float f9 = c3136t.f27052z;
        C3126i c3126i2 = c3136t.f27014E;
        int i10 = c3136t.f27049w;
        if (length == 1) {
            if (iC0 != -1 && (iA0 = a0(c3136t, oVar)) != -1) {
                iC0 = Math.min((int) (iC0 * 1.5f), iA0);
            }
            iVar = new A2.i(i9, i10, iC0);
            c3126i = c3126i2;
            i8 = i10;
        } else {
            int iMax = i9;
            int iMax2 = i10;
            int i11 = 0;
            boolean z8 = false;
            for (int length2 = streamFormats.length; i11 < length2; length2 = length2) {
                C3136t c3136t2 = streamFormats[i11];
                C3136t[] c3136tArr = streamFormats;
                if (c3126i2 != null && c3136t2.f27014E == null) {
                    C3135s c3135sA = c3136t2.a();
                    c3135sA.f26971D = c3126i2;
                    c3136t2 = new C3136t(c3135sA);
                }
                if (oVar.b(c3136t, c3136t2).f996d != 0) {
                    int i12 = c3136t2.f27049w;
                    int i13 = c3136t2.f27048v;
                    z8 |= i13 == -1 || i12 == -1;
                    iMax = Math.max(iMax, i13);
                    iMax2 = Math.max(iMax2, i12);
                    iC0 = Math.max(iC0, c0(c3136t2, oVar));
                }
                i11++;
                streamFormats = c3136tArr;
            }
            if (z8) {
                p117p0.x.f("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
                boolean z9 = i10 > i9;
                int i14 = z9 ? i10 : i9;
                int i15 = z9 ? i9 : i10;
                c3126i = c3126i2;
                float f10 = i15 / i14;
                int[] iArr = f6765P1;
                i8 = i10;
                int i16 = 0;
                while (true) {
                    if (i16 < 9) {
                        int i17 = iArr[i16];
                        int[] iArr2 = iArr;
                        int i18 = (int) (i17 * f10);
                        if (i17 > i14 && i18 > i15) {
                            if (!z9) {
                                i18 = i17;
                            }
                            if (!z9) {
                                i17 = i18;
                            }
                            boolean z10 = z9;
                            MediaCodecInfo.CodecCapabilities codecCapabilities = oVar.f4358d;
                            if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
                                point = null;
                            } else {
                                int widthAlignment = videoCapabilities.getWidthAlignment();
                                int heightAlignment = videoCapabilities.getHeightAlignment();
                                point = new Point(p117p0.M.f(i18, widthAlignment) * widthAlignment, p117p0.M.f(i17, heightAlignment) * heightAlignment);
                            }
                            if (point != null && oVar.g(point.x, point.y, f9)) {
                                break;
                            }
                            i16++;
                            iArr = iArr2;
                            z9 = z10;
                            i14 = i14;
                            i15 = i15;
                        }
                    }
                    point = null;
                    break;
                }
                if (point != null) {
                    iMax = Math.max(iMax, point.x);
                    iMax2 = Math.max(iMax2, point.y);
                    C3135s c3135sA2 = c3136t.a();
                    c3135sA2.f27003u = iMax;
                    c3135sA2.f27004v = iMax2;
                    iC0 = Math.max(iC0, a0(new C3136t(c3135sA2), oVar));
                    p117p0.x.f("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                }
            } else {
                c3126i = c3126i2;
                i8 = i10;
            }
            iVar = new A2.i(iMax, iMax2, iC0);
        }
        this.f6795i1 = iVar;
        int i19 = this.f6775H1 ? this.f6776I1 : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", oVar.f4357c);
        mediaFormat.setInteger("width", i9);
        mediaFormat.setInteger("height", i8);
        J6.r.q(mediaFormat, c3136t.f27044r);
        if (f9 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f9);
        }
        J6.r.o(mediaFormat, "rotation-degrees", c3136t.f27010A);
        if (c3126i != null) {
            C3126i c3126i3 = c3126i;
            J6.r.o(mediaFormat, "color-transfer", c3126i3.f26874c);
            J6.r.o(mediaFormat, "color-standard", c3126i3.f26872a);
            J6.r.o(mediaFormat, "color-range", c3126i3.f26873b);
            byte[] bArr = c3126i3.f26875d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(c3136t.f27041o)) {
            HashMap map = K0.z.f4454a;
            Pair pairB = AbstractC3169g.b(c3136t);
            if (pairB != null) {
                J6.r.o(mediaFormat, "profile", ((Integer) pairB.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", iVar.f630a);
        mediaFormat.setInteger("max-height", iVar.f631b);
        J6.r.o(mediaFormat, "max-input-size", iVar.f632c);
        int i20 = Build.VERSION.SDK_INT;
        if (i20 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f8 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f8);
            }
        }
        if (this.f6787a1) {
            z7 = true;
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            z7 = true;
        }
        if (i19 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", z7);
            mediaFormat.setInteger("audio-session-id", i19);
        }
        if (i20 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.f6774G1));
        }
        Surface surfaceD0 = d0(oVar);
        if (this.f6798l1 != null && !p117p0.M.N(this.f6783W0)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return new C3061x(oVar, mediaFormat, c3136t, surfaceD0, mediaCrypto, null);
    }

    public final void o0(long j8) {
        C0053i c0053i = this.f4400N0;
        c0053i.f974k += j8;
        c0053i.f975l++;
        this.f6769B1 += j8;
        this.f6770C1++;
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void onDisabled() {
        x0 x0Var = this.f6785Y0;
        this.f6773F1 = null;
        this.f6780M1 = -9223372036854775807L;
        h0();
        this.f6805s1 = false;
        this.f6777J1 = null;
        this.f6768A1 = true;
        try {
            super.onDisabled();
        } finally {
            x0Var.j(this.f4400N0);
            x0Var.A(w0.f27062d);
        }
    }

    @Override // B0.AbstractC0051h
    public final void onEnabled(boolean z7, boolean z8) {
        S s7;
        this.f4400N0 = new C0053i();
        boolean z9 = getConfiguration().f703b;
        int i8 = 0;
        H1.i((z9 && this.f6776I1 == 0) ? false : true);
        if (this.f6775H1 != z9) {
            this.f6775H1 = z9;
            H();
        }
        x0 x0Var = this.f6785Y0;
        C0053i c0053i = this.f4400N0;
        Handler handler = (Handler) x0Var.f22390H;
        if (handler != null) {
            handler.post(new M(x0Var, c0053i, i8));
        }
        boolean z10 = this.f6799m1;
        E e8 = this.f6788b1;
        if (!z10) {
            if (this.f6801o1 != null && this.f6798l1 == null) {
                C0350p c0350p = new C0350p(this.f6783W0, e8);
                c0350p.f6830d = true;
                c0350p.f6831e = getClock();
                H1.i(!c0350p.f6832f);
                if (c0350p.f6829c == null) {
                    c0350p.f6829c = new v();
                }
                x xVar = new x(c0350p);
                c0350p.f6832f = true;
                xVar.f6879x = 1;
                SparseArray sparseArray = xVar.f6858c;
                if (p117p0.M.k(sparseArray, 0)) {
                    s7 = (S) sparseArray.get(0);
                } else {
                    C0352s c0352s = new C0352s(xVar, xVar.f6856a);
                    xVar.f6863h.add(c0352s);
                    sparseArray.put(0, c0352s);
                    s7 = c0352s;
                }
                this.f6798l1 = s7;
            }
            this.f6799m1 = true;
        }
        S s8 = this.f6798l1;
        if (s8 == null) {
            e8.f6640l = getClock();
            e8.f(!z8 ? 1 : 0);
            return;
        }
        s8.j(new U(this, 8));
        B b8 = this.f6778K1;
        if (b8 != null) {
            this.f6798l1.t(b8);
        }
        if (this.f6802p1 != null && !this.f6804r1.equals(p117p0.F.f28038c)) {
            this.f6798l1.n(this.f6802p1, this.f6804r1);
        }
        this.f6798l1.h(this.f6807u1);
        this.f6798l1.setPlaybackSpeed(this.f4418Y);
        List list = this.f6801o1;
        if (list != null) {
            this.f6798l1.m(list);
        }
        this.f6800n1 = !z8 ? 1 : 0;
        this.f4408R0 = true;
    }

    @Override // B0.AbstractC0051h
    public final void onInit() {
        super.onInit();
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void onPositionReset(long j8, boolean z7) throws C0072w {
        S s7 = this.f6798l1;
        if (s7 != null && !z7) {
            s7.k(true);
        }
        super.onPositionReset(j8, z7);
        S s8 = this.f6798l1;
        E e8 = this.f6788b1;
        if (s8 == null) {
            I i8 = e8.f6630b;
            i8.f6663j = 0L;
            i8.f6666m = -1L;
            i8.f6664k = -1L;
            e8.f6636h = -9223372036854775807L;
            e8.f6634f = -9223372036854775807L;
            e8.f6633e = Math.min(e8.f6633e, 1);
            e8.f6637i = -9223372036854775807L;
        }
        F f8 = this.f6792f1;
        if (f8 != null) {
            f8.a();
        }
        if (z7) {
            S s9 = this.f6798l1;
            if (s9 != null) {
                s9.p(false);
            } else {
                e8.c(false);
            }
        }
        h0();
        this.f6810x1 = 0;
    }

    @Override // B0.AbstractC0051h
    public final void onRelease() {
        super.onRelease();
        S s7 = this.f6798l1;
        if (s7 == null || !this.f6784X0) {
            return;
        }
        s7.release();
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void onReset() {
        try {
            super.onReset();
        } finally {
            this.f6799m1 = false;
            this.f6779L1 = -9223372036854775807L;
            C0347m c0347m = this.f6803q1;
            if (c0347m != null) {
                c0347m.release();
                this.f6803q1 = null;
            }
        }
    }

    @Override // B0.AbstractC0051h
    public final void onStarted() {
        this.f6809w1 = 0;
        ((p117p0.G) getClock()).getClass();
        this.f6808v1 = SystemClock.elapsedRealtime();
        this.f6769B1 = 0L;
        this.f6770C1 = 0;
        S s7 = this.f6798l1;
        if (s7 != null) {
            s7.f();
        } else {
            this.f6788b1.d();
        }
    }

    @Override // B0.AbstractC0051h
    public final void onStopped() {
        g0();
        int i8 = this.f6770C1;
        if (i8 != 0) {
            x0 x0Var = this.f6785Y0;
            long j8 = this.f6769B1;
            Handler handler = (Handler) x0Var.f22390H;
            if (handler != null) {
                handler.post(new L(x0Var, j8, i8));
            }
            this.f6769B1 = 0L;
            this.f6770C1 = 0;
        }
        S s7 = this.f6798l1;
        if (s7 != null) {
            s7.d();
        } else {
            this.f6788b1.e();
        }
        F f8 = this.f6792f1;
        if (f8 != null) {
            f8.a();
        }
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void onStreamChanged(C3136t[] c3136tArr, long j8, long j9, C0300y c0300y) {
        super.onStreamChanged(c3136tArr, j8, j9, c0300y);
        f0 timeline = getTimeline();
        if (timeline.q()) {
            this.f6780M1 = -9223372036854775807L;
        } else {
            c0300y.getClass();
            this.f6780M1 = timeline.h(c0300y.f5257a, new p094m0.d0()).f26828d;
        }
        F f8 = this.f6792f1;
        if (f8 != null) {
            f8.a();
        }
    }

    @Override // K0.r
    public final void p(p171w0.g gVar) {
        if (this.f6797k1) {
            ByteBuffer byteBuffer = gVar.f30907L;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b8 = byteBuffer.get();
                short s7 = byteBuffer.getShort();
                short s8 = byteBuffer.getShort();
                byte b9 = byteBuffer.get();
                byte b10 = byteBuffer.get();
                byteBuffer.position(0);
                if (b8 == -75 && s7 == 60 && s8 == 1 && b9 == 4) {
                    if (b10 == 0 || b10 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        K0.l lVar = this.f4420a0;
                        lVar.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        lVar.d(bundle);
                    }
                }
            }
        }
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void render(long j8, long j9) throws C0072w {
        S s7 = this.f6798l1;
        if (s7 != null) {
            try {
                s7.o(j8, j9);
            } catch (Q e8) {
                throw createRendererException(e8, e8.f6690G, 7001);
            }
        }
        super.render(j8, j9);
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void setPlaybackSpeed(float f8, float f9) throws C0072w {
        super.setPlaybackSpeed(f8, f9);
        S s7 = this.f6798l1;
        if (s7 != null) {
            s7.setPlaybackSpeed(f8);
        } else {
            this.f6788b1.i(f8);
        }
        F f10 = this.f6792f1;
        if (f10 != null) {
            f10.getClass();
            H1.d(f8 > 0.0f);
            f10.f6646d = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) f8)));
            f10.a();
        }
    }

    @Override // K0.r
    public final boolean u(C3136t c3136t) throws C0072w {
        S s7 = this.f6798l1;
        if (s7 == null || s7.isInitialized()) {
            return true;
        }
        try {
            return this.f6798l1.l(c3136t);
        } catch (Q e8) {
            throw createRendererException(e8, c3136t, 7000);
        }
    }

    @Override // K0.r
    public final void v(Exception exc) {
        p117p0.x.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.f6785Y0.z(exc);
    }

    @Override // K0.r
    public final void w(String str, long j8, long j9) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        x0 x0Var = this.f6785Y0;
        Handler handler = (Handler) x0Var.f22390H;
        if (handler != null) {
            handler.post(new RunnableC0121k(x0Var, str, j8, j9, 1));
        }
        this.f6796j1 = Y(str);
        K0.o oVar = this.f4427h0;
        oVar.getClass();
        boolean z7 = false;
        if (Build.VERSION.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(oVar.f4356b)) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = oVar.f4358d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                if (codecProfileLevel.profile == 16384) {
                    z7 = true;
                    break;
                }
            }
        }
        this.f6797k1 = z7;
        h0();
    }

    @Override // K0.r
    public final void x(String str) {
        x0 x0Var = this.f6785Y0;
        Handler handler = (Handler) x0Var.f22390H;
        if (handler != null) {
            handler.post(new r(3, x0Var, str));
        }
    }

    @Override // K0.r
    public final C0055j y(Z z7) throws C0072w {
        C0055j c0055jY = super.y(z7);
        x0 x0Var = this.f6785Y0;
        C3136t c3136t = z7.f904b;
        c3136t.getClass();
        x0Var.q(c3136t, c0055jY);
        F f8 = this.f6792f1;
        if (f8 != null) {
            f8.a();
        }
        return c0055jY;
    }

    @Override // K0.r
    public final void z(C3136t c3136t, MediaFormat mediaFormat) {
        int integer;
        int i8;
        K0.l lVar = this.f4420a0;
        if (lVar != null) {
            lVar.m(this.f6806t1);
        }
        if (this.f6775H1) {
            i8 = c3136t.f27048v;
            integer = c3136t.f27049w;
        } else {
            mediaFormat.getClass();
            boolean z7 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            int integer2 = z7 ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            integer = z7 ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
            i8 = integer2;
        }
        float f8 = c3136t.f27011B;
        int i9 = c3136t.f27010A;
        if (i9 == 90 || i9 == 270) {
            f8 = 1.0f / f8;
            int i10 = integer;
            integer = i8;
            i8 = i10;
        }
        this.f6772E1 = new w0(f8, i8, integer);
        S s7 = this.f6798l1;
        if (s7 == null || !this.f6781N1) {
            this.f6788b1.g(c3136t.f27052z);
        } else {
            C3135s c3135sA = c3136t.a();
            c3135sA.f27003u = i8;
            c3135sA.f27004v = integer;
            c3135sA.f26968A = f8;
            C3136t c3136t2 = new C3136t(c3135sA);
            int i11 = this.f6800n1;
            List list = this.f6801o1;
            if (list == null) {
                z4.F f9 = z4.H.f31804H;
                list = d0.f31844K;
            }
            s7.e(i11, this.f4402O0.f4375b, c3136t2, list);
            this.f6800n1 = 2;
        }
        this.f6781N1 = false;
    }
}
