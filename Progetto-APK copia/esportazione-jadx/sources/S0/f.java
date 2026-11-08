package S0;

import D0.RunnableC0122l;
import D0.U;
import android.content.Context;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.api.Endpoint;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.media.MediaPlayer;
import p027d2.v;
import p117p0.AbstractC3164b;
import p117p0.B;
import p117p0.C;
import p117p0.InterfaceC3168f;
import p141s0.O;
import z4.H;
import z4.J;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class f implements c, O {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final d0 f6329p = H.z(4300000L, 3200000L, 2400000L, 1700000L, 860000L);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final d0 f6330q = H.z(1500000L, 980000L, 750000L, 520000L, 290000L);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final d0 f6331r = H.z(2000000L, 1300000L, 1000000L, 860000L, 610000L);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final d0 f6332s = H.z(2500000L, 1700000L, 1200000L, 970000L, 680000L);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final d0 f6333t = H.z(4700000L, 2800000L, 2100000L, 1700000L, 980000L);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final d0 f6334u = H.z(2700000L, 2000000L, 1600000L, 1300000L, 1000000L);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static f f6335v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final J f6337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final U f6338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC3168f f6339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final r f6341f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6342g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f6343h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f6344i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f6345j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f6346k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f6347l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f6348m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6349n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f6350o;

    public f(Context context, Map map, int i8, InterfaceC3168f interfaceC3168f, boolean z7) {
        boolean z8;
        this.f6336a = context == null ? null : context.getApplicationContext();
        this.f6337b = J.b(map);
        this.f6338c = new U(6);
        this.f6341f = new r(i8);
        this.f6339d = interfaceC3168f;
        this.f6340e = z7;
        if (context == null) {
            this.f6349n = 0;
            this.f6347l = 1000000L;
            return;
        }
        C cB = C.b(context);
        int iC = cB.c();
        this.f6349n = iC;
        this.f6347l = a(iC);
        e eVar = new e(this);
        Executor executorS = AbstractC3164b.s();
        cB.f();
        B b8 = new B(cB, eVar, executorS);
        synchronized (cB.f28026K) {
            ((CopyOnWriteArrayList) cB.f28025J).add(b8);
            z8 = cB.f28023H;
        }
        if (z8) {
            b8.f28019b.execute(new p000a.b(b8, 5));
        }
    }

    /* JADX WARN: Code duplicated, block: B:1146:0x1224  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final long a(int i8) {
        int[] iArr;
        long jLongValue;
        Integer numValueOf = Integer.valueOf(i8);
        J j8 = this.f6337b;
        Long lValueOf = (Long) j8.get(numValueOf);
        if (lValueOf == null) {
            lValueOf = (Long) j8.get(0);
        } else if (lValueOf.longValue() == -9223372036854775807L) {
            String strR = v.r(this.f6350o);
            byte b8 = -1;
            switch (strR.hashCode()) {
                case 2083:
                    if (strR.equals("AD")) {
                        b8 = 0;
                    }
                    break;
                case 2084:
                    if (strR.equals("AE")) {
                        b8 = 1;
                    }
                    break;
                case 2085:
                    if (strR.equals("AF")) {
                        b8 = 2;
                    }
                    break;
                case 2086:
                    if (strR.equals("AG")) {
                        b8 = 3;
                    }
                    break;
                case 2088:
                    if (strR.equals("AI")) {
                        b8 = 4;
                    }
                    break;
                case 2091:
                    if (strR.equals("AL")) {
                        b8 = 5;
                    }
                    break;
                case 2092:
                    if (strR.equals("AM")) {
                        b8 = 6;
                    }
                    break;
                case 2094:
                    if (strR.equals("AO")) {
                        b8 = 7;
                    }
                    break;
                case 2096:
                    if (strR.equals("AQ")) {
                        b8 = 8;
                    }
                    break;
                case 2097:
                    if (strR.equals("AR")) {
                        b8 = 9;
                    }
                    break;
                case 2098:
                    if (strR.equals("AS")) {
                        b8 = 10;
                    }
                    break;
                case 2099:
                    if (strR.equals("AT")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    }
                    break;
                case 2100:
                    if (strR.equals("AU")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    }
                    break;
                case 2102:
                    if (strR.equals("AW")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    }
                    break;
                case 2103:
                    if (strR.equals("AX")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    }
                    break;
                case 2105:
                    if (strR.equals("AZ")) {
                        b8 = 15;
                    }
                    break;
                case 2111:
                    if (strR.equals("BA")) {
                        b8 = 16;
                    }
                    break;
                case 2112:
                    if (strR.equals("BB")) {
                        b8 = 17;
                    }
                    break;
                case 2114:
                    if (strR.equals("BD")) {
                        b8 = 18;
                    }
                    break;
                case 2115:
                    if (strR.equals("BE")) {
                        b8 = 19;
                    }
                    break;
                case 2116:
                    if (strR.equals("BF")) {
                        b8 = 20;
                    }
                    break;
                case 2117:
                    if (strR.equals("BG")) {
                        b8 = 21;
                    }
                    break;
                case 2118:
                    if (strR.equals("BH")) {
                        b8 = 22;
                    }
                    break;
                case 2119:
                    if (strR.equals("BI")) {
                        b8 = 23;
                    }
                    break;
                case 2120:
                    if (strR.equals("BJ")) {
                        b8 = 24;
                    }
                    break;
                case 2122:
                    if (strR.equals("BL")) {
                        b8 = 25;
                    }
                    break;
                case 2123:
                    if (strR.equals("BM")) {
                        b8 = 26;
                    }
                    break;
                case 2124:
                    if (strR.equals("BN")) {
                        b8 = 27;
                    }
                    break;
                case 2125:
                    if (strR.equals("BO")) {
                        b8 = 28;
                    }
                    break;
                case 2127:
                    if (strR.equals("BQ")) {
                        b8 = 29;
                    }
                    break;
                case 2128:
                    if (strR.equals("BR")) {
                        b8 = 30;
                    }
                    break;
                case 2129:
                    if (strR.equals("BS")) {
                        b8 = 31;
                    }
                    break;
                case 2130:
                    if (strR.equals("BT")) {
                        b8 = 32;
                    }
                    break;
                case 2133:
                    if (strR.equals("BW")) {
                        b8 = 33;
                    }
                    break;
                case 2135:
                    if (strR.equals("BY")) {
                        b8 = 34;
                    }
                    break;
                case 2136:
                    if (strR.equals("BZ")) {
                        b8 = 35;
                    }
                    break;
                case 2142:
                    if (strR.equals("CA")) {
                        b8 = 36;
                    }
                    break;
                case 2145:
                    if (strR.equals("CD")) {
                        b8 = 37;
                    }
                    break;
                case 2147:
                    if (strR.equals("CF")) {
                        b8 = 38;
                    }
                    break;
                case 2148:
                    if (strR.equals("CG")) {
                        b8 = 39;
                    }
                    break;
                case 2149:
                    if (strR.equals("CH")) {
                        b8 = 40;
                    }
                    break;
                case 2150:
                    if (strR.equals("CI")) {
                        b8 = 41;
                    }
                    break;
                case 2152:
                    if (strR.equals("CK")) {
                        b8 = 42;
                    }
                    break;
                case 2153:
                    if (strR.equals("CL")) {
                        b8 = 43;
                    }
                    break;
                case 2154:
                    if (strR.equals("CM")) {
                        b8 = 44;
                    }
                    break;
                case 2155:
                    if (strR.equals("CN")) {
                        b8 = 45;
                    }
                    break;
                case 2156:
                    if (strR.equals("CO")) {
                        b8 = 46;
                    }
                    break;
                case 2159:
                    if (strR.equals("CR")) {
                        b8 = 47;
                    }
                    break;
                case 2162:
                    if (strR.equals("CU")) {
                        b8 = 48;
                    }
                    break;
                case 2163:
                    if (strR.equals("CV")) {
                        b8 = 49;
                    }
                    break;
                case 2164:
                    if (strR.equals("CW")) {
                        b8 = 50;
                    }
                    break;
                case 2165:
                    if (strR.equals("CX")) {
                        b8 = 51;
                    }
                    break;
                case 2166:
                    if (strR.equals("CY")) {
                        b8 = 52;
                    }
                    break;
                case 2167:
                    if (strR.equals("CZ")) {
                        b8 = 53;
                    }
                    break;
                case 2177:
                    if (strR.equals("DE")) {
                        b8 = 54;
                    }
                    break;
                case 2182:
                    if (strR.equals("DJ")) {
                        b8 = 55;
                    }
                    break;
                case 2183:
                    if (strR.equals("DK")) {
                        b8 = 56;
                    }
                    break;
                case 2185:
                    if (strR.equals("DM")) {
                        b8 = 57;
                    }
                    break;
                case 2187:
                    if (strR.equals("DO")) {
                        b8 = 58;
                    }
                    break;
                case 2198:
                    if (strR.equals("DZ")) {
                        b8 = 59;
                    }
                    break;
                case 2206:
                    if (strR.equals("EC")) {
                        b8 = 60;
                    }
                    break;
                case 2208:
                    if (strR.equals("EE")) {
                        b8 = 61;
                    }
                    break;
                case 2210:
                    if (strR.equals("EG")) {
                        b8 = 62;
                    }
                    break;
                case 2221:
                    if (strR.equals("ER")) {
                        b8 = 63;
                    }
                    break;
                case 2222:
                    if (strR.equals("ES")) {
                        b8 = 64;
                    }
                    break;
                case 2223:
                    if (strR.equals("ET")) {
                        b8 = 65;
                    }
                    break;
                case 2243:
                    if (strR.equals("FI")) {
                        b8 = 66;
                    }
                    break;
                case 2244:
                    if (strR.equals("FJ")) {
                        b8 = 67;
                    }
                    break;
                case 2245:
                    if (strR.equals("FK")) {
                        b8 = 68;
                    }
                    break;
                case 2247:
                    if (strR.equals("FM")) {
                        b8 = 69;
                    }
                    break;
                case 2249:
                    if (strR.equals("FO")) {
                        b8 = 70;
                    }
                    break;
                case 2252:
                    if (strR.equals("FR")) {
                        b8 = 71;
                    }
                    break;
                case 2266:
                    if (strR.equals("GA")) {
                        b8 = 72;
                    }
                    break;
                case 2267:
                    if (strR.equals("GB")) {
                        b8 = 73;
                    }
                    break;
                case 2269:
                    if (strR.equals("GD")) {
                        b8 = 74;
                    }
                    break;
                case 2270:
                    if (strR.equals("GE")) {
                        b8 = 75;
                    }
                    break;
                case 2271:
                    if (strR.equals("GF")) {
                        b8 = 76;
                    }
                    break;
                case 2272:
                    if (strR.equals("GG")) {
                        b8 = 77;
                    }
                    break;
                case 2273:
                    if (strR.equals("GH")) {
                        b8 = 78;
                    }
                    break;
                case 2274:
                    if (strR.equals("GI")) {
                        b8 = 79;
                    }
                    break;
                case 2277:
                    if (strR.equals("GL")) {
                        b8 = 80;
                    }
                    break;
                case 2278:
                    if (strR.equals("GM")) {
                        b8 = 81;
                    }
                    break;
                case 2279:
                    if (strR.equals("GN")) {
                        b8 = 82;
                    }
                    break;
                case 2281:
                    if (strR.equals("GP")) {
                        b8 = 83;
                    }
                    break;
                case 2282:
                    if (strR.equals("GQ")) {
                        b8 = 84;
                    }
                    break;
                case 2283:
                    if (strR.equals("GR")) {
                        b8 = 85;
                    }
                    break;
                case 2285:
                    if (strR.equals("GT")) {
                        b8 = 86;
                    }
                    break;
                case 2286:
                    if (strR.equals("GU")) {
                        b8 = 87;
                    }
                    break;
                case 2288:
                    if (strR.equals("GW")) {
                        b8 = 88;
                    }
                    break;
                case 2290:
                    if (strR.equals("GY")) {
                        b8 = 89;
                    }
                    break;
                case 2307:
                    if (strR.equals("HK")) {
                        b8 = 90;
                    }
                    break;
                case 2314:
                    if (strR.equals("HR")) {
                        b8 = 91;
                    }
                    break;
                case 2316:
                    if (strR.equals("HT")) {
                        b8 = 92;
                    }
                    break;
                case 2317:
                    if (strR.equals("HU")) {
                        b8 = 93;
                    }
                    break;
                case 2331:
                    if (strR.equals("ID")) {
                        b8 = 94;
                    }
                    break;
                case 2332:
                    if (strR.equals("IE")) {
                        b8 = 95;
                    }
                    break;
                case 2339:
                    if (strR.equals("IL")) {
                        b8 = 96;
                    }
                    break;
                case 2340:
                    if (strR.equals("IM")) {
                        b8 = 97;
                    }
                    break;
                case 2341:
                    if (strR.equals("IN")) {
                        b8 = 98;
                    }
                    break;
                case 2342:
                    if (strR.equals("IO")) {
                        b8 = 99;
                    }
                    break;
                case 2344:
                    if (strR.equals("IQ")) {
                        b8 = 100;
                    }
                    break;
                case 2345:
                    if (strR.equals("IR")) {
                        b8 = 101;
                    }
                    break;
                case 2346:
                    if (strR.equals("IS")) {
                        b8 = 102;
                    }
                    break;
                case 2347:
                    if (strR.equals("IT")) {
                        b8 = 103;
                    }
                    break;
                case 2363:
                    if (strR.equals("JE")) {
                        b8 = 104;
                    }
                    break;
                case 2371:
                    if (strR.equals("JM")) {
                        b8 = 105;
                    }
                    break;
                case 2373:
                    if (strR.equals("JO")) {
                        b8 = 106;
                    }
                    break;
                case 2374:
                    if (strR.equals("JP")) {
                        b8 = 107;
                    }
                    break;
                case 2394:
                    if (strR.equals("KE")) {
                        b8 = 108;
                    }
                    break;
                case 2396:
                    if (strR.equals("KG")) {
                        b8 = 109;
                    }
                    break;
                case 2397:
                    if (strR.equals("KH")) {
                        b8 = 110;
                    }
                    break;
                case 2398:
                    if (strR.equals("KI")) {
                        b8 = 111;
                    }
                    break;
                case 2402:
                    if (strR.equals("KM")) {
                        b8 = 112;
                    }
                    break;
                case 2403:
                    if (strR.equals("KN")) {
                        b8 = 113;
                    }
                    break;
                case 2407:
                    if (strR.equals("KR")) {
                        b8 = 114;
                    }
                    break;
                case 2412:
                    if (strR.equals("KW")) {
                        b8 = 115;
                    }
                    break;
                case 2414:
                    if (strR.equals("KY")) {
                        b8 = 116;
                    }
                    break;
                case 2415:
                    if (strR.equals("KZ")) {
                        b8 = 117;
                    }
                    break;
                case 2421:
                    if (strR.equals("LA")) {
                        b8 = 118;
                    }
                    break;
                case 2422:
                    if (strR.equals("LB")) {
                        b8 = 119;
                    }
                    break;
                case 2423:
                    if (strR.equals("LC")) {
                        b8 = 120;
                    }
                    break;
                case 2429:
                    if (strR.equals("LI")) {
                        b8 = 121;
                    }
                    break;
                case 2431:
                    if (strR.equals("LK")) {
                        b8 = 122;
                    }
                    break;
                case 2438:
                    if (strR.equals("LR")) {
                        b8 = 123;
                    }
                    break;
                case 2439:
                    if (strR.equals("LS")) {
                        b8 = 124;
                    }
                    break;
                case 2440:
                    if (strR.equals("LT")) {
                        b8 = 125;
                    }
                    break;
                case 2441:
                    if (strR.equals("LU")) {
                        b8 = 126;
                    }
                    break;
                case 2442:
                    if (strR.equals("LV")) {
                        b8 = 127;
                    }
                    break;
                case 2445:
                    if (strR.equals("LY")) {
                        b8 = 128;
                    }
                    break;
                case 2452:
                    if (strR.equals("MA")) {
                        b8 = 129;
                    }
                    break;
                case 2454:
                    if (strR.equals("MC")) {
                        b8 = 130;
                    }
                    break;
                case 2455:
                    if (strR.equals("MD")) {
                        b8 = 131;
                    }
                    break;
                case 2456:
                    if (strR.equals("ME")) {
                        b8 = 132;
                    }
                    break;
                case 2457:
                    if (strR.equals("MF")) {
                        b8 = 133;
                    }
                    break;
                case 2458:
                    if (strR.equals("MG")) {
                        b8 = 134;
                    }
                    break;
                case 2459:
                    if (strR.equals("MH")) {
                        b8 = 135;
                    }
                    break;
                case 2462:
                    if (strR.equals("MK")) {
                        b8 = 136;
                    }
                    break;
                case 2463:
                    if (strR.equals("ML")) {
                        b8 = 137;
                    }
                    break;
                case 2464:
                    if (strR.equals("MM")) {
                        b8 = 138;
                    }
                    break;
                case 2465:
                    if (strR.equals("MN")) {
                        b8 = 139;
                    }
                    break;
                case 2466:
                    if (strR.equals("MO")) {
                        b8 = 140;
                    }
                    break;
                case 2467:
                    if (strR.equals("MP")) {
                        b8 = 141;
                    }
                    break;
                case 2468:
                    if (strR.equals("MQ")) {
                        b8 = 142;
                    }
                    break;
                case 2469:
                    if (strR.equals("MR")) {
                        b8 = 143;
                    }
                    break;
                case 2470:
                    if (strR.equals("MS")) {
                        b8 = 144;
                    }
                    break;
                case 2471:
                    if (strR.equals("MT")) {
                        b8 = 145;
                    }
                    break;
                case 2472:
                    if (strR.equals("MU")) {
                        b8 = 146;
                    }
                    break;
                case 2473:
                    if (strR.equals("MV")) {
                        b8 = 147;
                    }
                    break;
                case 2474:
                    if (strR.equals("MW")) {
                        b8 = 148;
                    }
                    break;
                case 2475:
                    if (strR.equals("MX")) {
                        b8 = 149;
                    }
                    break;
                case 2476:
                    if (strR.equals("MY")) {
                        b8 = 150;
                    }
                    break;
                case 2477:
                    if (strR.equals("MZ")) {
                        b8 = 151;
                    }
                    break;
                case 2483:
                    if (strR.equals("NA")) {
                        b8 = 152;
                    }
                    break;
                case 2485:
                    if (strR.equals("NC")) {
                        b8 = 153;
                    }
                    break;
                case 2487:
                    if (strR.equals("NE")) {
                        b8 = 154;
                    }
                    break;
                case 2488:
                    if (strR.equals("NF")) {
                        b8 = 155;
                    }
                    break;
                case 2489:
                    if (strR.equals("NG")) {
                        b8 = 156;
                    }
                    break;
                case 2491:
                    if (strR.equals("NI")) {
                        b8 = 157;
                    }
                    break;
                case 2494:
                    if (strR.equals("NL")) {
                        b8 = 158;
                    }
                    break;
                case 2497:
                    if (strR.equals("NO")) {
                        b8 = 159;
                    }
                    break;
                case 2498:
                    if (strR.equals("NP")) {
                        b8 = 160;
                    }
                    break;
                case 2500:
                    if (strR.equals("NR")) {
                        b8 = 161;
                    }
                    break;
                case 2503:
                    if (strR.equals("NU")) {
                        b8 = 162;
                    }
                    break;
                case 2508:
                    if (strR.equals("NZ")) {
                        b8 = 163;
                    }
                    break;
                case 2526:
                    if (strR.equals("OM")) {
                        b8 = 164;
                    }
                    break;
                case 2545:
                    if (strR.equals("PA")) {
                        b8 = 165;
                    }
                    break;
                case 2549:
                    if (strR.equals("PE")) {
                        b8 = 166;
                    }
                    break;
                case 2550:
                    if (strR.equals("PF")) {
                        b8 = 167;
                    }
                    break;
                case 2551:
                    if (strR.equals("PG")) {
                        b8 = 168;
                    }
                    break;
                case 2552:
                    if (strR.equals("PH")) {
                        b8 = 169;
                    }
                    break;
                case 2555:
                    if (strR.equals("PK")) {
                        b8 = 170;
                    }
                    break;
                case 2556:
                    if (strR.equals("PL")) {
                        b8 = 171;
                    }
                    break;
                case 2557:
                    if (strR.equals("PM")) {
                        b8 = 172;
                    }
                    break;
                case 2562:
                    if (strR.equals("PR")) {
                        b8 = 173;
                    }
                    break;
                case 2563:
                    if (strR.equals("PS")) {
                        b8 = 174;
                    }
                    break;
                case 2564:
                    if (strR.equals("PT")) {
                        b8 = 175;
                    }
                    break;
                case 2567:
                    if (strR.equals("PW")) {
                        b8 = 176;
                    }
                    break;
                case 2569:
                    if (strR.equals("PY")) {
                        b8 = 177;
                    }
                    break;
                case 2576:
                    if (strR.equals("QA")) {
                        b8 = 178;
                    }
                    break;
                case 2611:
                    if (strR.equals("RE")) {
                        b8 = 179;
                    }
                    break;
                case 2621:
                    if (strR.equals("RO")) {
                        b8 = 180;
                    }
                    break;
                case 2625:
                    if (strR.equals("RS")) {
                        b8 = 181;
                    }
                    break;
                case 2627:
                    if (strR.equals("RU")) {
                        b8 = 182;
                    }
                    break;
                case 2629:
                    if (strR.equals("RW")) {
                        b8 = 183;
                    }
                    break;
                case 2638:
                    if (strR.equals("SA")) {
                        b8 = 184;
                    }
                    break;
                case 2639:
                    if (strR.equals("SB")) {
                        b8 = 185;
                    }
                    break;
                case 2640:
                    if (strR.equals("SC")) {
                        b8 = 186;
                    }
                    break;
                case 2641:
                    if (strR.equals("SD")) {
                        b8 = 187;
                    }
                    break;
                case 2642:
                    if (strR.equals("SE")) {
                        b8 = 188;
                    }
                    break;
                case 2644:
                    if (strR.equals("SG")) {
                        b8 = 189;
                    }
                    break;
                case 2645:
                    if (strR.equals("SH")) {
                        b8 = 190;
                    }
                    break;
                case 2646:
                    if (strR.equals("SI")) {
                        b8 = 191;
                    }
                    break;
                case 2647:
                    if (strR.equals("SJ")) {
                        b8 = 192;
                    }
                    break;
                case 2648:
                    if (strR.equals("SK")) {
                        b8 = 193;
                    }
                    break;
                case 2649:
                    if (strR.equals("SL")) {
                        b8 = 194;
                    }
                    break;
                case 2650:
                    if (strR.equals("SM")) {
                        b8 = 195;
                    }
                    break;
                case 2651:
                    if (strR.equals("SN")) {
                        b8 = 196;
                    }
                    break;
                case 2652:
                    if (strR.equals("SO")) {
                        b8 = 197;
                    }
                    break;
                case 2655:
                    if (strR.equals("SR")) {
                        b8 = 198;
                    }
                    break;
                case 2656:
                    if (strR.equals("SS")) {
                        b8 = 199;
                    }
                    break;
                case 2657:
                    if (strR.equals("ST")) {
                        b8 = 200;
                    }
                    break;
                case 2659:
                    if (strR.equals("SV")) {
                        b8 = 201;
                    }
                    break;
                case 2661:
                    if (strR.equals("SX")) {
                        b8 = 202;
                    }
                    break;
                case 2662:
                    if (strR.equals("SY")) {
                        b8 = 203;
                    }
                    break;
                case 2663:
                    if (strR.equals("SZ")) {
                        b8 = 204;
                    }
                    break;
                case 2671:
                    if (strR.equals("TC")) {
                        b8 = 205;
                    }
                    break;
                case 2672:
                    if (strR.equals("TD")) {
                        b8 = 206;
                    }
                    break;
                case 2675:
                    if (strR.equals("TG")) {
                        b8 = 207;
                    }
                    break;
                case 2676:
                    if (strR.equals("TH")) {
                        b8 = 208;
                    }
                    break;
                case 2678:
                    if (strR.equals("TJ")) {
                        b8 = 209;
                    }
                    break;
                case 2680:
                    if (strR.equals("TL")) {
                        b8 = 210;
                    }
                    break;
                case 2681:
                    if (strR.equals("TM")) {
                        b8 = 211;
                    }
                    break;
                case 2682:
                    if (strR.equals("TN")) {
                        b8 = 212;
                    }
                    break;
                case 2683:
                    if (strR.equals("TO")) {
                        b8 = 213;
                    }
                    break;
                case 2686:
                    if (strR.equals("TR")) {
                        b8 = 214;
                    }
                    break;
                case 2688:
                    if (strR.equals("TT")) {
                        b8 = 215;
                    }
                    break;
                case 2690:
                    if (strR.equals("TV")) {
                        b8 = 216;
                    }
                    break;
                case 2691:
                    if (strR.equals("TW")) {
                        b8 = 217;
                    }
                    break;
                case 2694:
                    if (strR.equals("TZ")) {
                        b8 = 218;
                    }
                    break;
                case 2700:
                    if (strR.equals("UA")) {
                        b8 = 219;
                    }
                    break;
                case 2706:
                    if (strR.equals("UG")) {
                        b8 = 220;
                    }
                    break;
                case 2718:
                    if (strR.equals("US")) {
                        b8 = 221;
                    }
                    break;
                case 2724:
                    if (strR.equals("UY")) {
                        b8 = 222;
                    }
                    break;
                case 2725:
                    if (strR.equals("UZ")) {
                        b8 = 223;
                    }
                    break;
                case 2731:
                    if (strR.equals("VA")) {
                        b8 = 224;
                    }
                    break;
                case 2733:
                    if (strR.equals("VC")) {
                        b8 = 225;
                    }
                    break;
                case 2735:
                    if (strR.equals("VE")) {
                        b8 = 226;
                    }
                    break;
                case 2737:
                    if (strR.equals("VG")) {
                        b8 = 227;
                    }
                    break;
                case 2739:
                    if (strR.equals("VI")) {
                        b8 = 228;
                    }
                    break;
                case 2744:
                    if (strR.equals("VN")) {
                        b8 = 229;
                    }
                    break;
                case 2751:
                    if (strR.equals("VU")) {
                        b8 = 230;
                    }
                    break;
                case 2767:
                    if (strR.equals("WF")) {
                        b8 = 231;
                    }
                    break;
                case 2780:
                    if (strR.equals("WS")) {
                        b8 = 232;
                    }
                    break;
                case 2803:
                    if (strR.equals("XK")) {
                        b8 = 233;
                    }
                    break;
                case 2828:
                    if (strR.equals("YE")) {
                        b8 = 234;
                    }
                    break;
                case 2843:
                    if (strR.equals("YT")) {
                        b8 = 235;
                    }
                    break;
                case 2855:
                    if (strR.equals("ZA")) {
                        b8 = 236;
                    }
                    break;
                case 2867:
                    if (strR.equals("ZM")) {
                        b8 = 237;
                    }
                    break;
                case 2877:
                    if (strR.equals("ZW")) {
                        b8 = 238;
                    }
                    break;
            }
            switch (b8) {
                case 0:
                case 4:
                case 17:
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                case 50:
                case 57:
                case 113:
                case 116:
                case 202:
                case 225:
                    iArr = new int[]{1, 2, 0, 0, 2, 2};
                    break;
                case 1:
                    iArr = new int[]{1, 4, 2, 3, 4, 1};
                    break;
                case 2:
                case 204:
                    iArr = new int[]{4, 4, 3, 4, 2, 2};
                    break;
                case 3:
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    iArr = new int[]{2, 4, 3, 4, 2, 2};
                    break;
                case 5:
                    iArr = new int[]{1, 1, 1, 2, 2, 2};
                    break;
                case 6:
                case 165:
                    iArr = new int[]{2, 3, 2, 3, 2, 2};
                    break;
                case 7:
                    iArr = new int[]{3, 4, 4, 3, 2, 2};
                    break;
                case 8:
                case 63:
                case 162:
                case 186:
                case 190:
                    iArr = new int[]{4, 2, 2, 2, 2, 2};
                    break;
                case 9:
                    iArr = new int[]{2, 2, 2, 2, 1, 2};
                    break;
                case 10:
                    iArr = new int[]{2, 2, 3, 3, 2, 2};
                    break;
                case 11:
                case 61:
                case 93:
                case 102:
                case 127:
                case 145:
                case 188:
                    iArr = new int[]{0, 0, 0, 0, 0, 2};
                    break;
                case 12:
                    iArr = new int[]{0, 3, 1, 1, 3, 0};
                    break;
                case 13:
                    iArr = new int[]{2, 2, 3, 4, 2, 2};
                    break;
                case 14:
                case 51:
                case 121:
                case 144:
                case 172:
                case 195:
                case 224:
                    iArr = new int[]{0, 2, 2, 2, 2, 2};
                    break;
                case 15:
                case 55:
                case 128:
                case 194:
                    iArr = new int[]{4, 2, 3, 3, 2, 2};
                    break;
                case 16:
                case 106:
                case 214:
                    iArr = new int[]{1, 1, 1, 1, 2, 2};
                    break;
                case 18:
                    iArr = new int[]{2, 1, 3, 2, 4, 2};
                    break;
                case 19:
                    iArr = new int[]{0, 0, 1, 0, 1, 2};
                    break;
                case 20:
                case 187:
                case 203:
                case 206:
                    iArr = new int[]{4, 3, 4, 4, 2, 2};
                    break;
                case 21:
                case 175:
                case 191:
                    iArr = new int[]{0, 0, 0, 0, 1, 2};
                    break;
                case 22:
                    iArr = new int[]{1, 3, 1, 3, 4, 2};
                    break;
                case 23:
                case 84:
                case 92:
                case 154:
                case 226:
                case 234:
                    iArr = new int[]{4, 4, 4, 4, 2, 2};
                    break;
                case 24:
                    iArr = new int[]{4, 4, 2, 3, 2, 2};
                    break;
                case 25:
                case ModuleDescriptor.MODULE_VERSION /* 141 */:
                case 177:
                    iArr = new int[]{1, 2, 2, 2, 2, 2};
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    iArr = new int[]{0, 2, 0, 0, 2, 2};
                    break;
                case 27:
                    iArr = new int[]{3, 2, 0, 0, 2, 2};
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    iArr = new int[]{1, 2, 4, 4, 2, 2};
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    iArr = new int[]{1, 1, 1, 1, 2, 4};
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    iArr = new int[]{3, 2, 1, 1, 2, 2};
                    break;
                case 32:
                    iArr = new int[]{3, 1, 2, 2, 3, 2};
                    break;
                case 33:
                    iArr = new int[]{3, 2, 1, 0, 2, 2};
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    iArr = new int[]{1, 2, 3, 3, 2, 2};
                    break;
                case 35:
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    iArr = new int[]{2, 2, 2, 1, 2, 2};
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                case 219:
                    iArr = new int[]{0, 2, 1, 2, 3, 3};
                    break;
                case 37:
                case 137:
                    iArr = new int[]{3, 3, 2, 2, 2, 2};
                    break;
                case 38:
                    iArr = new int[]{4, 2, 4, 2, 2, 2};
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                case 62:
                case 134:
                    iArr = new int[]{3, 4, 3, 3, 2, 2};
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    iArr = new int[]{0, 1, 0, 0, 0, 2};
                    break;
                case 43:
                case 208:
                    iArr = new int[]{0, 1, 2, 2, 2, 2};
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                case 143:
                    iArr = new int[]{4, 3, 3, 4, 2, 2};
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    iArr = new int[]{2, 0, 1, 1, 3, 1};
                    break;
                case 46:
                    iArr = new int[]{2, 3, 3, 2, 2, 2};
                    break;
                case 47:
                case 157:
                    iArr = new int[]{2, 4, 4, 4, 2, 2};
                    break;
                case 48:
                case 111:
                case 161:
                case 210:
                    iArr = new int[]{4, 2, 4, 4, 2, 2};
                    break;
                case 49:
                    iArr = new int[]{2, 3, 0, 1, 2, 2};
                    break;
                case 52:
                    iArr = new int[]{1, 0, 1, 0, 0, 2};
                    break;
                case 53:
                    iArr = new int[]{0, 0, 2, 0, 1, 2};
                    break;
                case 54:
                    iArr = new int[]{0, 1, 4, 2, 2, 1};
                    break;
                case 56:
                    iArr = new int[]{0, 0, 2, 0, 0, 2};
                    break;
                case 58:
                case 123:
                    iArr = new int[]{3, 4, 4, 4, 2, 2};
                    break;
                case 59:
                case 209:
                    iArr = new int[]{3, 3, 4, 4, 2, 2};
                    break;
                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                    iArr = new int[]{1, 3, 2, 1, 2, 2};
                    break;
                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                    iArr = new int[]{0, 0, 0, 0, 1, 0};
                    break;
                case 65:
                    iArr = new int[]{4, 3, 4, 4, 4, 2};
                    break;
                case 66:
                    iArr = new int[]{0, 0, 0, 1, 0, 2};
                    break;
                case 67:
                    iArr = new int[]{3, 2, 2, 3, 2, 2};
                    break;
                case 68:
                case 155:
                case 192:
                    iArr = new int[]{3, 2, 2, 2, 2, 2};
                    break;
                case 69:
                    iArr = new int[]{4, 2, 4, 0, 2, 2};
                    break;
                case 70:
                    iArr = new int[]{0, 2, 2, 0, 2, 2};
                    break;
                case 71:
                    iArr = new int[]{1, 1, 1, 1, 0, 2};
                    break;
                case 72:
                    iArr = new int[]{3, 4, 0, 0, 2, 2};
                    break;
                case 73:
                    iArr = new int[]{1, 1, 3, 2, 2, 2};
                    break;
                case 74:
                    iArr = new int[]{2, 2, 0, 0, 2, 2};
                    break;
                case 75:
                    iArr = new int[]{1, 1, 0, 2, 2, 2};
                    break;
                case 76:
                    iArr = new int[]{3, 2, 3, 3, 2, 2};
                    break;
                case 77:
                    iArr = new int[]{0, 2, 1, 1, 2, 2};
                    break;
                case 78:
                    iArr = new int[]{3, 3, 3, 2, 2, 2};
                    break;
                case 79:
                case 97:
                case 104:
                    iArr = new int[]{0, 2, 0, 1, 2, 2};
                    break;
                case 80:
                case 130:
                    iArr = new int[]{1, 2, 2, 0, 2, 2};
                    break;
                case 81:
                case 199:
                    iArr = new int[]{4, 3, 2, 4, 2, 2};
                    break;
                case 82:
                    iArr = new int[]{3, 4, 4, 2, 2, 2};
                    break;
                case 83:
                    iArr = new int[]{2, 1, 1, 3, 2, 2};
                    break;
                case 85:
                    iArr = new int[]{1, 0, 0, 0, 1, 2};
                    break;
                case 86:
                    iArr = new int[]{2, 1, 2, 1, 2, 2};
                    break;
                case 87:
                    iArr = new int[]{2, 2, 4, 3, 3, 2};
                    break;
                case 88:
                    iArr = new int[]{4, 4, 1, 2, 2, 2};
                    break;
                case 89:
                    iArr = new int[]{3, 1, 1, 3, 2, 2};
                    break;
                case 90:
                    iArr = new int[]{0, 1, 0, 1, 1, 0};
                    break;
                case 91:
                case 115:
                    iArr = new int[]{1, 0, 0, 0, 0, 2};
                    break;
                case 94:
                    iArr = new int[]{3, 1, 3, 3, 2, 4};
                    break;
                case 95:
                    iArr = new int[]{1, 1, 1, 1, 1, 2};
                    break;
                case 96:
                    iArr = new int[]{1, 2, 2, 3, 4, 2};
                    break;
                case 98:
                    iArr = new int[]{1, 1, 3, 2, 2, 3};
                    break;
                case 99:
                    iArr = new int[]{3, 2, 2, 0, 2, 2};
                    break;
                case 100:
                    iArr = new int[]{3, 2, 3, 2, 2, 2};
                    break;
                case Endpoint.TARGET_FIELD_NUMBER /* 101 */:
                    iArr = new int[]{4, 2, 3, 3, 4, 3};
                    break;
                case 103:
                    iArr = new int[]{0, 1, 1, 2, 1, 2};
                    break;
                case 105:
                    iArr = new int[]{2, 4, 3, 1, 2, 2};
                    break;
                case 107:
                    iArr = new int[]{0, 3, 2, 3, 4, 2};
                    break;
                case 108:
                    iArr = new int[]{3, 2, 1, 1, 1, 2};
                    break;
                case 109:
                    iArr = new int[]{2, 1, 1, 2, 2, 2};
                    break;
                case 110:
                    iArr = new int[]{1, 0, 4, 2, 2, 2};
                    break;
                case 112:
                case 230:
                    iArr = new int[]{4, 3, 3, 2, 2, 2};
                    break;
                case 114:
                    iArr = new int[]{0, 2, 2, 4, 4, 4};
                    break;
                case 117:
                    iArr = new int[]{2, 1, 2, 2, 3, 2};
                    break;
                case 118:
                    iArr = new int[]{1, 2, 1, 3, 2, 2};
                    break;
                case 119:
                    iArr = new int[]{3, 1, 1, 2, 2, 2};
                    break;
                case 120:
                    iArr = new int[]{2, 2, 1, 1, 2, 2};
                    break;
                case 122:
                case 138:
                    iArr = new int[]{3, 2, 3, 3, 4, 2};
                    break;
                case 124:
                case 168:
                    iArr = new int[]{4, 3, 3, 3, 2, 2};
                    break;
                case 125:
                    iArr = new int[]{0, 1, 0, 1, 0, 2};
                    break;
                case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                    iArr = new int[]{4, 0, 3, 2, 1, 3};
                    break;
                case 129:
                    iArr = new int[]{3, 3, 1, 1, 2, 2};
                    break;
                case 131:
                    iArr = new int[]{1, 0, 0, 0, 2, 2};
                    break;
                case 132:
                    iArr = new int[]{2, 0, 0, 1, 3, 2};
                    break;
                case 133:
                    iArr = new int[]{1, 2, 2, 3, 2, 2};
                    break;
                case 135:
                case 211:
                case 216:
                case 231:
                    iArr = new int[]{4, 2, 2, 4, 2, 2};
                    break;
                case 136:
                    iArr = new int[]{1, 0, 0, 1, 3, 2};
                    break;
                case 139:
                    iArr = new int[]{2, 0, 2, 2, 2, 2};
                    break;
                case 140:
                    iArr = new int[]{0, 2, 4, 4, 3, 1};
                    break;
                case 142:
                    iArr = new int[]{2, 1, 2, 3, 2, 2};
                    break;
                case 146:
                    iArr = new int[]{3, 1, 0, 2, 2, 2};
                    break;
                case 147:
                    iArr = new int[]{3, 2, 1, 3, 4, 2};
                    break;
                case 148:
                    iArr = new int[]{3, 2, 2, 1, 2, 2};
                    break;
                case 149:
                    iArr = new int[]{2, 4, 4, 4, 3, 2};
                    break;
                case 150:
                    iArr = new int[]{1, 0, 4, 1, 1, 0};
                    break;
                case 151:
                case 232:
                    iArr = new int[]{3, 1, 2, 2, 2, 2};
                    break;
                case 152:
                    iArr = new int[]{3, 4, 3, 2, 2, 2};
                    break;
                case 153:
                case 235:
                    iArr = new int[]{2, 3, 3, 4, 2, 2};
                    break;
                case 156:
                    iArr = new int[]{3, 4, 2, 1, 2, 2};
                    break;
                case 158:
                    iArr = new int[]{2, 1, 4, 3, 0, 4};
                    break;
                case 159:
                    iArr = new int[]{0, 0, 3, 0, 0, 2};
                    break;
                case 160:
                    iArr = new int[]{2, 2, 4, 3, 2, 2};
                    break;
                case 163:
                    iArr = new int[]{0, 0, 1, 2, 4, 2};
                    break;
                case 164:
                    iArr = new int[]{2, 3, 1, 2, 4, 2};
                    break;
                case 166:
                    iArr = new int[]{1, 2, 4, 4, 3, 2};
                    break;
                case 167:
                    iArr = new int[]{2, 2, 3, 1, 2, 2};
                    break;
                case 169:
                    iArr = new int[]{2, 1, 2, 3, 2, 1};
                    break;
                case 170:
                    iArr = new int[]{3, 3, 3, 3, 2, 2};
                    break;
                case 171:
                    iArr = new int[]{1, 0, 2, 2, 4, 4};
                    break;
                case 173:
                    iArr = new int[]{2, 0, 2, 1, 2, 0};
                    break;
                case 174:
                    iArr = new int[]{3, 4, 1, 3, 2, 2};
                    break;
                case 176:
                    iArr = new int[]{2, 2, 4, 1, 2, 2};
                    break;
                case 178:
                    iArr = new int[]{1, 4, 4, 4, 4, 2};
                    break;
                case 179:
                    iArr = new int[]{0, 3, 2, 3, 1, 2};
                    break;
                case 180:
                    iArr = new int[]{0, 0, 1, 1, 3, 2};
                    break;
                case 181:
                    iArr = new int[]{1, 0, 0, 1, 2, 2};
                    break;
                case 182:
                    iArr = new int[]{1, 0, 0, 1, 3, 3};
                    break;
                case 183:
                    iArr = new int[]{3, 3, 2, 0, 2, 2};
                    break;
                case 184:
                    iArr = new int[]{3, 1, 1, 2, 2, 0};
                    break;
                case 185:
                case 238:
                    iArr = new int[]{4, 2, 4, 3, 2, 2};
                    break;
                case 189:
                    iArr = new int[]{2, 3, 3, 3, 1, 1};
                    break;
                case 193:
                    iArr = new int[]{0, 1, 1, 1, 2, 2};
                    break;
                case 196:
                    iArr = new int[]{4, 4, 3, 2, 2, 2};
                    break;
                case 197:
                    iArr = new int[]{2, 2, 3, 4, 4, 2};
                    break;
                case 198:
                    iArr = new int[]{2, 4, 4, 1, 2, 2};
                    break;
                case MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK /* 200 */:
                    iArr = new int[]{2, 2, 1, 2, 2, 2};
                    break;
                case 201:
                    iArr = new int[]{2, 3, 2, 1, 2, 2};
                    break;
                case 205:
                    iArr = new int[]{3, 2, 1, 2, 2, 2};
                    break;
                case 207:
                    iArr = new int[]{3, 4, 1, 0, 2, 2};
                    break;
                case 212:
                    iArr = new int[]{3, 1, 1, 1, 2, 2};
                    break;
                case 213:
                    iArr = new int[]{3, 2, 4, 3, 2, 2};
                    break;
                case 215:
                    iArr = new int[]{2, 4, 1, 0, 2, 2};
                    break;
                case 217:
                    iArr = new int[]{0, 0, 0, 0, 0, 0};
                    break;
                case 218:
                    iArr = new int[]{3, 4, 2, 1, 3, 2};
                    break;
                case 220:
                    iArr = new int[]{3, 3, 2, 3, 4, 2};
                    break;
                case 221:
                    iArr = new int[]{2, 2, 4, 1, 3, 1};
                    break;
                case 222:
                    iArr = new int[]{2, 1, 1, 2, 1, 2};
                    break;
                case 223:
                    iArr = new int[]{1, 2, 3, 4, 3, 2};
                    break;
                case 227:
                    iArr = new int[]{2, 2, 1, 1, 2, 4};
                    break;
                case 228:
                    iArr = new int[]{0, 2, 1, 2, 2, 2};
                    break;
                case 229:
                    iArr = new int[]{0, 0, 1, 2, 2, 2};
                    break;
                case 233:
                    iArr = new int[]{1, 2, 1, 1, 2, 2};
                    break;
                case 236:
                    iArr = new int[]{2, 4, 2, 1, 1, 2};
                    break;
                case 237:
                    iArr = new int[]{4, 4, 4, 3, 2, 2};
                    break;
                default:
                    iArr = new int[]{2, 2, 2, 2, 2, 2};
                    break;
            }
            if (i8 == 2) {
                jLongValue = ((Long) f6329p.get(iArr[0])).longValue();
            } else if (i8 == 3) {
                jLongValue = ((Long) f6330q.get(iArr[1])).longValue();
            } else if (i8 == 4) {
                jLongValue = ((Long) f6331r.get(iArr[2])).longValue();
            } else if (i8 == 5) {
                jLongValue = ((Long) f6332s.get(iArr[3])).longValue();
            } else if (i8 == 7) {
                jLongValue = ((Long) f6329p.get(iArr[0])).longValue();
            } else if (i8 != 9) {
                jLongValue = i8 != 10 ? 1000000L : ((Long) f6333t.get(iArr[4])).longValue();
            } else {
                jLongValue = ((Long) f6334u.get(iArr[5])).longValue();
            }
            lValueOf = Long.valueOf(jLongValue);
        }
        if (lValueOf == null) {
            lValueOf = 1000000L;
        }
        return lValueOf.longValue();
    }

    public final void b(int i8, long j8, long j9) {
        if (i8 == 0 && j8 == 0 && j9 == this.f6348m) {
            return;
        }
        this.f6348m = j9;
        for (b bVar : (CopyOnWriteArrayList) this.f6338c.f1868H) {
            if (!bVar.f6321c) {
                bVar.f6319a.post(new RunnableC0122l(bVar, i8, j8, j9, 1));
            }
        }
    }
}
