package p094m0;

import B4.c;
import C0.C0083h;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import okhttp3.internal.http2.Http2;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.videolan.libvlc.interfaces.IMediaList;
import p113o3.r;
import p117p0.M;
import p120p3.e;
import z4.H;

/* JADX INFO: renamed from: m0.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3136t {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final int f27010A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final float f27011B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final byte[] f27012C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final int f27013D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final C3126i f27014E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final int f27015F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f27016G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f27017H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f27018I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f27019J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f27020K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f27021L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f27022M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f27023N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f27024O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f27025P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f27026Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f27029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f27030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27032f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f27033g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f27034h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f27035i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f27036j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f27037k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final N f27038l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Object f27039m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f27040n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f27041o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f27042p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f27043q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final List f27044r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final C3131n f27045s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f27046t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f27047u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f27048v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f27049w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f27050x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f27051y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f27052z;

    static {
        new C3135s().a();
        M.L(0);
        M.L(1);
        M.L(2);
        M.L(3);
        M.L(4);
        U2.r(5, 6, 7, 8, 9);
        U2.r(10, 11, 12, 13, 14);
        U2.r(15, 16, 17, 18, 19);
        U2.r(20, 21, 22, 23, 24);
        U2.r(25, 26, 27, 28, 29);
        U2.r(30, 31, 32, 33, 34);
        M.L(35);
        M.L(36);
    }

    public C3136t(C3135s c3135s) {
        boolean z7;
        String str;
        this.f27027a = c3135s.f26983a;
        String strS = M.S(c3135s.f26986d);
        this.f27030d = strS;
        if (c3135s.f26985c.isEmpty() && c3135s.f26984b != null) {
            this.f27029c = H.x(new C3139w(strS, c3135s.f26984b));
            this.f27028b = c3135s.f26984b;
        } else if (c3135s.f26985c.isEmpty() || c3135s.f26984b != null) {
            if (!c3135s.f26985c.isEmpty() || c3135s.f26984b != null) {
                int i8 = 0;
                while (true) {
                    if (i8 >= c3135s.f26985c.size()) {
                        z7 = false;
                        break;
                    } else {
                        if (((C3139w) c3135s.f26985c.get(i8)).f27061b.equals(c3135s.f26984b)) {
                            z7 = true;
                            break;
                        }
                        i8++;
                    }
                }
            } else {
                z7 = true;
                break;
            }
            H1.i(z7);
            this.f27029c = c3135s.f26985c;
            this.f27028b = c3135s.f26984b;
        } else {
            List list = c3135s.f26985c;
            this.f27029c = list;
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = ((C3139w) list.get(0)).f27061b;
                    break;
                }
                C3139w c3139w = (C3139w) it.next();
                if (TextUtils.equals(c3139w.f27060a, strS)) {
                    str = c3139w.f27061b;
                    break;
                }
            }
            this.f27028b = str;
        }
        this.f27031e = c3135s.f26987e;
        H1.h("Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set", c3135s.f26989g == 0 || (c3135s.f26988f & 32768) != 0);
        this.f27032f = c3135s.f26988f;
        this.f27033g = c3135s.f26989g;
        int i9 = c3135s.f26990h;
        this.f27034h = i9;
        int i10 = c3135s.f26991i;
        this.f27035i = i10;
        this.f27036j = i10 != -1 ? i10 : i9;
        this.f27037k = c3135s.f26992j;
        this.f27038l = c3135s.f26993k;
        this.f27039m = c3135s.f26994l;
        this.f27040n = c3135s.f26995m;
        this.f27041o = c3135s.f26996n;
        this.f27042p = c3135s.f26997o;
        this.f27043q = c3135s.f26998p;
        List list2 = c3135s.f26999q;
        this.f27044r = list2 == null ? Collections.emptyList() : list2;
        C3131n c3131n = c3135s.f27000r;
        this.f27045s = c3131n;
        this.f27046t = c3135s.f27001s;
        this.f27047u = c3135s.f27002t;
        this.f27048v = c3135s.f27003u;
        this.f27049w = c3135s.f27004v;
        this.f27050x = c3135s.f27005w;
        this.f27051y = c3135s.f27006x;
        this.f27052z = c3135s.f27007y;
        int i11 = c3135s.f27008z;
        this.f27010A = i11 == -1 ? 0 : i11;
        float f8 = c3135s.f26968A;
        this.f27011B = f8 == -1.0f ? 1.0f : f8;
        this.f27012C = c3135s.f26969B;
        this.f27013D = c3135s.f26970C;
        this.f27014E = c3135s.f26971D;
        this.f27015F = c3135s.f26972E;
        this.f27016G = c3135s.f26973F;
        this.f27017H = c3135s.f26974G;
        this.f27018I = c3135s.f26975H;
        int i12 = c3135s.f26976I;
        this.f27019J = i12 == -1 ? 0 : i12;
        int i13 = c3135s.f26977J;
        this.f27020K = i13 != -1 ? i13 : 0;
        this.f27021L = c3135s.f26978K;
        this.f27022M = c3135s.f26979L;
        this.f27023N = c3135s.f26980M;
        this.f27024O = c3135s.f26981N;
        int i14 = c3135s.f26982O;
        if (i14 != 0 || c3131n == null) {
            this.f27025P = i14;
        } else {
            this.f27025P = 1;
        }
    }

    public static String d(C3136t c3136t) {
        String str;
        String str2;
        int i8;
        int i9;
        int i10 = 0;
        if (c3136t == null) {
            return "null";
        }
        e eVar = new e(String.valueOf(','));
        StringBuilder sbO = U2.o("id=");
        sbO.append(c3136t.f27027a);
        sbO.append(", mimeType=");
        sbO.append(c3136t.f27041o);
        String str3 = c3136t.f27040n;
        if (str3 != null) {
            sbO.append(", container=");
            sbO.append(str3);
        }
        int i11 = c3136t.f27036j;
        if (i11 != -1) {
            sbO.append(", bitrate=");
            sbO.append(i11);
        }
        String str4 = c3136t.f27037k;
        if (str4 != null) {
            sbO.append(", codecs=");
            sbO.append(str4);
        }
        C3131n c3131n = c3136t.f27045s;
        if (c3131n != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int i12 = 0; i12 < c3131n.f26963J; i12++) {
                UUID uuid = c3131n.f26960G[i12].f26954H;
                if (uuid.equals(AbstractC3124g.f26853b)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(AbstractC3124g.f26854c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(AbstractC3124g.f26856e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(AbstractC3124g.f26855d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(AbstractC3124g.f26852a)) {
                    linkedHashSet.add("universal");
                } else {
                    linkedHashSet.add("unknown (" + uuid + ")");
                }
            }
            sbO.append(", drm=[");
            eVar.a(sbO, linkedHashSet.iterator());
            sbO.append(']');
        }
        int i13 = c3136t.f27048v;
        if (i13 != -1 && (i9 = c3136t.f27049w) != -1) {
            sbO.append(", res=");
            sbO.append(i13);
            sbO.append("x");
            sbO.append(i9);
        }
        int i14 = c3136t.f27050x;
        if (i14 != -1 && (i8 = c3136t.f27051y) != -1) {
            sbO.append(", decRes=");
            sbO.append(i14);
            sbO.append("x");
            sbO.append(i8);
        }
        float f8 = c3136t.f27011B;
        double d6 = f8;
        int i15 = c.f1215a;
        if (Math.copySign(d6 - 1.0d, 1.0d) > 0.001d && d6 != 1.0d && (!Double.isNaN(d6) || !Double.isNaN(1.0d))) {
            sbO.append(", par=");
            Object[] objArr = {Float.valueOf(f8)};
            String str5 = M.f28050a;
            sbO.append(String.format(Locale.US, "%.3f", objArr));
        }
        C3126i c3126i = c3136t.f27014E;
        if (c3126i != null) {
            int i16 = c3126i.f26877f;
            int i17 = c3126i.f26876e;
            if ((i17 != -1 && i16 != -1) || c3126i.e()) {
                sbO.append(", color=");
                if (c3126i.e()) {
                    String strC = C3126i.c(c3126i.f26872a);
                    String strB = C3126i.b(c3126i.f26873b);
                    String strD = C3126i.d(c3126i.f26874c);
                    Locale locale = Locale.US;
                    str2 = strC + MqttTopic.TOPIC_LEVEL_SEPARATOR + strB + MqttTopic.TOPIC_LEVEL_SEPARATOR + strD;
                } else {
                    str2 = "NA/NA/NA";
                }
                sbO.append(str2 + MqttTopic.TOPIC_LEVEL_SEPARATOR + ((i17 == -1 || i16 == -1) ? "NA/NA" : i17 + MqttTopic.TOPIC_LEVEL_SEPARATOR + i16));
            }
        }
        float f9 = c3136t.f27052z;
        if (f9 != -1.0f) {
            sbO.append(", fps=");
            sbO.append(f9);
        }
        int i18 = c3136t.f27015F;
        if (i18 != -1) {
            sbO.append(", maxSubLayers=");
            sbO.append(i18);
        }
        int i19 = c3136t.f27016G;
        if (i19 != -1) {
            sbO.append(", channels=");
            sbO.append(i19);
        }
        int i20 = c3136t.f27017H;
        if (i20 != -1) {
            sbO.append(", sample_rate=");
            sbO.append(i20);
        }
        String str6 = c3136t.f27030d;
        if (str6 != null) {
            sbO.append(", language=");
            sbO.append(str6);
        }
        List list = c3136t.f27029c;
        if (!list.isEmpty()) {
            sbO.append(", labels=[");
            eVar.a(sbO, r.i(new C0083h(i10), list).iterator());
            sbO.append("]");
        }
        int i21 = c3136t.f27031e;
        if (i21 != 0) {
            sbO.append(", selectionFlags=[");
            String str7 = M.f28050a;
            ArrayList arrayList = new ArrayList();
            if ((i21 & 4) != 0) {
                arrayList.add("auto");
            }
            if ((i21 & 1) != 0) {
                arrayList.add("default");
            }
            if ((i21 & 2) != 0) {
                arrayList.add("forced");
            }
            eVar.a(sbO, arrayList.iterator());
            sbO.append("]");
        }
        int i22 = c3136t.f27032f;
        if (i22 != 0) {
            sbO.append(", roleFlags=[");
            String str8 = M.f28050a;
            ArrayList arrayList2 = new ArrayList();
            if ((i22 & 1) != 0) {
                arrayList2.add("main");
            }
            if ((i22 & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((i22 & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((i22 & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((i22 & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((i22 & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((i22 & 64) != 0) {
                arrayList2.add("caption");
            }
            if ((i22 & 128) != 0) {
                arrayList2.add("subtitle");
            }
            if ((i22 & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((i22 & IMediaList.Event.ItemAdded) != 0) {
                arrayList2.add("describes-video");
            }
            if ((i22 & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((i22 & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((i22 & 4096) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((i22 & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((i22 & Http2.INITIAL_MAX_FRAME_SIZE) != 0) {
                arrayList2.add("trick-play");
            }
            if ((i22 & 32768) != 0) {
                arrayList2.add("auxiliary");
            }
            eVar.a(sbO, arrayList2.iterator());
            sbO.append("]");
        }
        Object obj = c3136t.f27039m;
        if (obj != null) {
            sbO.append(", customData=");
            sbO.append(obj);
        }
        if ((32768 & i22) != 0) {
            sbO.append(", auxiliaryTrackType=");
            String str9 = M.f28050a;
            int i23 = c3136t.f27033g;
            if (i23 == 0) {
                str = "undefined";
            } else if (i23 == 1) {
                str = "original";
            } else if (i23 == 2) {
                str = "depth-linear";
            } else if (i23 == 3) {
                str = "depth-inverse";
            } else {
                if (i23 != 4) {
                    throw new IllegalStateException("Unsupported auxiliary track type");
                }
                str = "depth metadata";
            }
            sbO.append(str);
        }
        return sbO.toString();
    }

    public final C3135s a() {
        C3135s c3135s = new C3135s();
        c3135s.f26983a = this.f27027a;
        c3135s.f26984b = this.f27028b;
        c3135s.f26985c = this.f27029c;
        c3135s.f26986d = this.f27030d;
        c3135s.f26987e = this.f27031e;
        c3135s.f26988f = this.f27032f;
        c3135s.f26990h = this.f27034h;
        c3135s.f26991i = this.f27035i;
        c3135s.f26992j = this.f27037k;
        c3135s.f26993k = this.f27038l;
        c3135s.f26994l = this.f27039m;
        c3135s.f26995m = this.f27040n;
        c3135s.f26996n = this.f27041o;
        c3135s.f26997o = this.f27042p;
        c3135s.f26998p = this.f27043q;
        c3135s.f26999q = this.f27044r;
        c3135s.f27000r = this.f27045s;
        c3135s.f27001s = this.f27046t;
        c3135s.f27002t = this.f27047u;
        c3135s.f27003u = this.f27048v;
        c3135s.f27004v = this.f27049w;
        c3135s.f27005w = this.f27050x;
        c3135s.f27006x = this.f27051y;
        c3135s.f27007y = this.f27052z;
        c3135s.f27008z = this.f27010A;
        c3135s.f26968A = this.f27011B;
        c3135s.f26969B = this.f27012C;
        c3135s.f26970C = this.f27013D;
        c3135s.f26971D = this.f27014E;
        c3135s.f26972E = this.f27015F;
        c3135s.f26973F = this.f27016G;
        c3135s.f26974G = this.f27017H;
        c3135s.f26975H = this.f27018I;
        c3135s.f26976I = this.f27019J;
        c3135s.f26977J = this.f27020K;
        c3135s.f26978K = this.f27021L;
        c3135s.f26979L = this.f27022M;
        c3135s.f26980M = this.f27023N;
        c3135s.f26981N = this.f27024O;
        c3135s.f26982O = this.f27025P;
        return c3135s;
    }

    public final int b() {
        int i8;
        int i9 = this.f27048v;
        if (i9 == -1 || (i8 = this.f27049w) == -1) {
            return -1;
        }
        return i9 * i8;
    }

    public final boolean c(C3136t c3136t) {
        List list = this.f27044r;
        if (list.size() != c3136t.f27044r.size()) {
            return false;
        }
        for (int i8 = 0; i8 < list.size(); i8++) {
            if (!Arrays.equals((byte[]) list.get(i8), (byte[]) c3136t.f27044r.get(i8))) {
                return false;
            }
        }
        return true;
    }

    public final C3136t e(C3136t c3136t) {
        String str;
        String str2;
        int i8;
        int i9;
        if (this == c3136t) {
            return this;
        }
        int i10 = O.i(this.f27041o);
        String str3 = c3136t.f27027a;
        String str4 = c3136t.f27028b;
        if (str4 == null) {
            str4 = this.f27028b;
        }
        List list = c3136t.f27029c;
        if (list.isEmpty()) {
            list = this.f27029c;
        }
        if ((i10 != 3 && i10 != 1) || (str = c3136t.f27030d) == null) {
            str = this.f27030d;
        }
        int i11 = this.f27034h;
        if (i11 == -1) {
            i11 = c3136t.f27034h;
        }
        int i12 = this.f27035i;
        if (i12 == -1) {
            i12 = c3136t.f27035i;
        }
        String str5 = this.f27037k;
        if (str5 == null) {
            String strU = M.u(i10, c3136t.f27037k);
            if (M.d0(strU).length == 1) {
                str5 = strU;
            }
        }
        N nB = c3136t.f27038l;
        N n7 = this.f27038l;
        if (n7 != null) {
            nB = n7.b(nB);
        }
        float f8 = this.f27052z;
        if (f8 == -1.0f && i10 == 2) {
            f8 = c3136t.f27052z;
        }
        int i13 = this.f27031e | c3136t.f27031e;
        int i14 = this.f27032f | c3136t.f27032f;
        ArrayList arrayList = new ArrayList();
        C3131n c3131n = c3136t.f27045s;
        if (c3131n != null) {
            C3130m[] c3130mArr = c3131n.f26960G;
            int length = c3130mArr.length;
            int i15 = 0;
            while (i15 < length) {
                int i16 = length;
                C3130m c3130m = c3130mArr[i15];
                C3130m[] c3130mArr2 = c3130mArr;
                if (c3130m.f26957K != null) {
                    arrayList.add(c3130m);
                }
                i15++;
                length = i16;
                c3130mArr = c3130mArr2;
            }
            str2 = c3131n.f26962I;
        } else {
            str2 = null;
        }
        C3131n c3131n2 = this.f27045s;
        if (c3131n2 != null) {
            if (str2 == null) {
                str2 = c3131n2.f26962I;
            }
            int size = arrayList.size();
            C3130m[] c3130mArr3 = c3131n2.f26960G;
            int length2 = c3130mArr3.length;
            int i17 = 0;
            while (true) {
                String str6 = str2;
                if (i17 >= length2) {
                    break;
                }
                C3130m c3130m2 = c3130mArr3[i17];
                C3130m[] c3130mArr4 = c3130mArr3;
                if (c3130m2.f26957K != null) {
                    int i18 = 0;
                    while (true) {
                        if (i18 >= size) {
                            i8 = size;
                            i9 = length2;
                            arrayList.add(c3130m2);
                            break;
                        }
                        i8 = size;
                        i9 = length2;
                        if (((C3130m) arrayList.get(i18)).f26954H.equals(c3130m2.f26954H)) {
                            break;
                        }
                        i18++;
                        length2 = i9;
                        size = i8;
                    }
                } else {
                    i8 = size;
                    i9 = length2;
                }
                i17++;
                str2 = str6;
                c3130mArr3 = c3130mArr4;
                length2 = i9;
                size = i8;
            }
        }
        C3131n c3131n3 = arrayList.isEmpty() ? null : new C3131n(str2, arrayList);
        C3135s c3135sA = a();
        c3135sA.f26983a = str3;
        c3135sA.f26984b = str4;
        c3135sA.f26985c = H.s(list);
        c3135sA.f26986d = str;
        c3135sA.f26987e = i13;
        c3135sA.f26988f = i14;
        c3135sA.f26990h = i11;
        c3135sA.f26991i = i12;
        c3135sA.f26992j = str5;
        c3135sA.f26993k = nB;
        c3135sA.f27000r = c3131n3;
        c3135sA.f27007y = f8;
        c3135sA.f26980M = c3136t.f27023N;
        c3135sA.f26981N = c3136t.f27024O;
        return new C3136t(c3135sA);
    }

    public final boolean equals(Object obj) {
        int i8;
        if (this == obj) {
            return true;
        }
        if (obj == null || C3136t.class != obj.getClass()) {
            return false;
        }
        C3136t c3136t = (C3136t) obj;
        int i9 = this.f27026Q;
        return (i9 == 0 || (i8 = c3136t.f27026Q) == 0 || i9 == i8) && this.f27031e == c3136t.f27031e && this.f27032f == c3136t.f27032f && this.f27033g == c3136t.f27033g && this.f27034h == c3136t.f27034h && this.f27035i == c3136t.f27035i && this.f27042p == c3136t.f27042p && this.f27046t == c3136t.f27046t && this.f27048v == c3136t.f27048v && this.f27049w == c3136t.f27049w && this.f27050x == c3136t.f27050x && this.f27051y == c3136t.f27051y && this.f27010A == c3136t.f27010A && this.f27013D == c3136t.f27013D && this.f27015F == c3136t.f27015F && this.f27016G == c3136t.f27016G && this.f27017H == c3136t.f27017H && this.f27018I == c3136t.f27018I && this.f27019J == c3136t.f27019J && this.f27020K == c3136t.f27020K && this.f27021L == c3136t.f27021L && this.f27023N == c3136t.f27023N && this.f27024O == c3136t.f27024O && this.f27025P == c3136t.f27025P && Float.compare(this.f27052z, c3136t.f27052z) == 0 && Float.compare(this.f27011B, c3136t.f27011B) == 0 && Objects.equals(this.f27027a, c3136t.f27027a) && Objects.equals(this.f27028b, c3136t.f27028b) && this.f27029c.equals(c3136t.f27029c) && Objects.equals(this.f27037k, c3136t.f27037k) && Objects.equals(this.f27040n, c3136t.f27040n) && Objects.equals(this.f27041o, c3136t.f27041o) && Objects.equals(this.f27030d, c3136t.f27030d) && Arrays.equals(this.f27012C, c3136t.f27012C) && Objects.equals(this.f27038l, c3136t.f27038l) && Objects.equals(this.f27014E, c3136t.f27014E) && Objects.equals(this.f27045s, c3136t.f27045s) && c(c3136t) && Objects.equals(this.f27039m, c3136t.f27039m);
    }

    public final int hashCode() {
        if (this.f27026Q == 0) {
            String str = this.f27027a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f27028b;
            int iHashCode2 = (this.f27029c.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            String str3 = this.f27030d;
            int iHashCode3 = (((((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f27031e) * 31) + this.f27032f) * 31) + this.f27033g) * 31) + this.f27034h) * 31) + this.f27035i) * 31;
            String str4 = this.f27037k;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            N n7 = this.f27038l;
            int iHashCode5 = (iHashCode4 + (n7 == null ? 0 : n7.hashCode())) * 31;
            Object obj = this.f27039m;
            int iHashCode6 = (iHashCode5 + (obj == null ? 0 : obj.hashCode())) * 31;
            String str5 = this.f27040n;
            int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f27041o;
            this.f27026Q = ((((((((((((((((((((((Float.floatToIntBits(this.f27011B) + ((((Float.floatToIntBits(this.f27052z) + ((((((((((((((iHashCode7 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f27042p) * 31) + ((int) this.f27046t)) * 31) + this.f27048v) * 31) + this.f27049w) * 31) + this.f27050x) * 31) + this.f27051y) * 31)) * 31) + this.f27010A) * 31)) * 31) + this.f27013D) * 31) + this.f27015F) * 31) + this.f27016G) * 31) + this.f27017H) * 31) + this.f27018I) * 31) + this.f27019J) * 31) + this.f27020K) * 31) + this.f27021L) * 31) + this.f27023N) * 31) + this.f27024O) * 31) + this.f27025P;
        }
        return this.f27026Q;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.f27027a);
        sb.append(", ");
        sb.append(this.f27028b);
        sb.append(", ");
        sb.append(this.f27040n);
        sb.append(", ");
        sb.append(this.f27041o);
        sb.append(", ");
        sb.append(this.f27037k);
        sb.append(", ");
        sb.append(this.f27036j);
        sb.append(", ");
        sb.append(this.f27030d);
        sb.append(", [");
        sb.append(this.f27048v);
        sb.append(", ");
        sb.append(this.f27049w);
        sb.append(", ");
        sb.append(this.f27052z);
        sb.append(", ");
        sb.append(this.f27014E);
        sb.append("], [");
        sb.append(this.f27016G);
        sb.append(", ");
        return p000a.r.h(sb, this.f27017H, "])");
    }
}
