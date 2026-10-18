package com.google.android.gms.internal.atv_ads_framework;

import A0.RunnableC0010j;
import B0.C0053i;
import B0.C0055j;
import B0.RunnableC0052h0;
import C2.C0091g;
import K3.InterfaceC0243p;
import W0.C0371d;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.measurement.AbstractC2567h;
import com.google.android.gms.internal.measurement.AbstractC2633t;
import com.google.android.gms.internal.measurement.C2531b;
import com.google.android.gms.internal.measurement.C2543d;
import com.google.android.gms.internal.measurement.C2549e;
import com.google.android.gms.internal.measurement.C2555f;
import com.google.android.gms.internal.measurement.C2561g;
import com.google.android.gms.internal.measurement.C2570h2;
import com.google.android.gms.internal.measurement.C2585k;
import com.google.android.gms.internal.measurement.C2597m;
import com.google.android.gms.internal.measurement.C2609o;
import com.google.android.gms.internal.measurement.C2619q;
import com.google.android.gms.internal.measurement.C2628s;
import com.google.android.gms.internal.measurement.EnumC2648w;
import com.google.android.gms.internal.measurement.InterfaceC2579j;
import com.google.android.gms.internal.measurement.InterfaceC2603n;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.U2;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p090l3.InterfaceC3086j0;
import p094m0.C3136t;
import p117p0.C3163a;

/* JADX INFO: loaded from: classes.dex */
public class x0 implements A1.B, p196z2.j, p144s3.d, InterfaceC0243p {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static x0 f22388J;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22389G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f22390H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f22391I;

    public /* synthetic */ x0(int i8, Object obj, Object obj2) {
        this.f22389G = i8;
        this.f22390H = obj;
        this.f22391I = obj2;
    }

    public static synchronized x0 C(Context context) {
        try {
            if (f22388J == null) {
                U2.q.b(context.getApplicationContext());
                f22388J = new x0(context.getApplicationContext(), U2.q.a().c(S2.a.f6398e));
            }
        } catch (Throwable th) {
            throw th;
        }
        return f22388J;
    }

    public static String m(int i8, int i9, Bitmap.Config config) {
        StringBuilder sbD = A0.O.D("[", i8, "x", i9, "], ");
        sbD.append(config);
        return sbD.toString();
    }

    public final void A(p094m0.w0 w0Var) {
        Object obj = this.f22390H;
        if (((Handler) obj) != null) {
            ((Handler) obj).post(new U0.r(1, this, w0Var));
        }
    }

    public final void B(boolean z7, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (((Map) this.f22390H)) {
            map = new HashMap((Map) this.f22390H);
        }
        synchronized (((Map) this.f22391I)) {
            map2 = new HashMap((Map) this.f22391I);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z7 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).I0(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z7 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((p052g4.i) entry2.getKey()).c(new com.google.android.gms.common.api.h(status));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:310:0x08a6  */
    /* JADX WARN: Code duplicated, block: B:312:0x08b1  */
    /* JADX WARN: Code duplicated, block: B:315:0x08bf  */
    /* JADX WARN: Code duplicated, block: B:505:0x08bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:506:0x08ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:507:0x08c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:508:0x08c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:509:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.Object, m2.i] */
    /* JADX WARN: Type inference failed for: r14v104, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r14v145, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r14v99, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r15v101, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r15v107, types: [com.google.android.gms.internal.measurement.e] */
    /* JADX WARN: Type inference failed for: r15v111, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r15v188, types: [com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r15v209, types: [com.google.android.gms.internal.measurement.g] */
    /* JADX WARN: Type inference failed for: r15v212 */
    /* JADX WARN: Type inference failed for: r15v239 */
    /* JADX WARN: Type inference failed for: r15v261, types: [com.google.android.gms.internal.measurement.d] */
    /* JADX WARN: Type inference failed for: r15v268, types: [com.google.android.gms.internal.measurement.k] */
    /* JADX WARN: Type inference failed for: r15v291, types: [com.google.android.gms.internal.measurement.q] */
    /* JADX WARN: Type inference failed for: r15v297 */
    /* JADX WARN: Type inference failed for: r15v298 */
    /* JADX WARN: Type inference failed for: r15v64, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r15v71, types: [com.google.android.gms.internal.measurement.h, com.google.android.gms.internal.measurement.m, com.google.android.gms.internal.measurement.n] */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r2v15, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r2v25, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r2v26, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r8v11, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r8v12, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v19, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r8v24, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r8v25, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r8v6, types: [com.google.android.gms.internal.measurement.r] */
    /* JADX WARN: Type inference failed for: r8v8, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r8v9, types: [com.google.android.gms.internal.measurement.r] */
    public final InterfaceC2603n D(p096m2.i iVar, InterfaceC2603n interfaceC2603n) {
        InterfaceC2603n c2561g;
        boolean zD;
        boolean zD2;
        ?? c2555f;
        ?? r8;
        InterfaceC2603n interfaceC2603nV;
        ?? r7;
        String str;
        int i8 = 0;
        Cw.h1(iVar);
        if (!(interfaceC2603n instanceof C2609o)) {
            return interfaceC2603n;
        }
        C2609o c2609o = (C2609o) interfaceC2603n;
        ArrayList arrayList = c2609o.f23224H;
        Map map = (Map) this.f22390H;
        String str2 = c2609o.f23223G;
        C2628s c2628s = (C2628s) (map.containsKey(str2) ? (AbstractC2633t) map.get(str2) : (C2628s) this.f22391I);
        int i9 = 19;
        switch (c2628s.f23251b) {
            case 0:
                EnumC2648w enumC2648w = EnumC2648w.ADD;
                switch (Cw.x1(str2).ordinal()) {
                    case 4:
                        Cw.O1("BITWISE_AND", 2, arrayList);
                        c2561g = new C2561g(Double.valueOf(Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue()) & Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue())));
                        break;
                    case 5:
                        Cw.O1("BITWISE_LEFT_SHIFT", 2, arrayList);
                        c2561g = new C2561g(Double.valueOf(Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue()) << ((int) (((long) Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue())) & 31))));
                        break;
                    case 6:
                        Cw.O1("BITWISE_NOT", 1, arrayList);
                        c2561g = new C2561g(Double.valueOf(~Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue())));
                        break;
                    case 7:
                        Cw.O1("BITWISE_OR", 2, arrayList);
                        c2561g = new C2561g(Double.valueOf(Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue()) | Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue())));
                        break;
                    case 8:
                        Cw.O1("BITWISE_RIGHT_SHIFT", 2, arrayList);
                        c2561g = new C2561g(Double.valueOf(Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue()) >> ((int) (((long) Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue())) & 31))));
                        break;
                    case 9:
                        Cw.O1("BITWISE_UNSIGNED_RIGHT_SHIFT", 2, arrayList);
                        c2561g = new C2561g(Double.valueOf((((long) Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue())) & 4294967295L) >>> ((int) (((long) Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue())) & 31))));
                        break;
                    case 10:
                        Cw.O1("BITWISE_XOR", 2, arrayList);
                        c2561g = new C2561g(Double.valueOf(Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue()) ^ Cw.v0(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue())));
                        break;
                    default:
                        c2628s.a(str2);
                        throw null;
                }
                return c2561g;
            case 1:
                Cw.O1(Cw.x1(str2).name(), 2, arrayList);
                InterfaceC2603n interfaceC2603nT = iVar.t((InterfaceC2603n) arrayList.get(0));
                InterfaceC2603n interfaceC2603nT2 = iVar.t((InterfaceC2603n) arrayList.get(1));
                int iOrdinal = Cw.x1(str2).ordinal();
                if (iOrdinal != 23) {
                    if (iOrdinal == 48) {
                        zD2 = C2628s.d(interfaceC2603nT, interfaceC2603nT2);
                    } else if (iOrdinal == 42) {
                        zD = C2628s.e(interfaceC2603nT, interfaceC2603nT2);
                    } else if (iOrdinal != 43) {
                        switch (iOrdinal) {
                            case 37:
                                zD = C2628s.e(interfaceC2603nT2, interfaceC2603nT);
                                break;
                            case 38:
                                zD = C2628s.g(interfaceC2603nT2, interfaceC2603nT);
                                break;
                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                zD = Cw.Z1(interfaceC2603nT, interfaceC2603nT2);
                                break;
                            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                zD2 = Cw.Z1(interfaceC2603nT, interfaceC2603nT2);
                                break;
                            default:
                                c2628s.a(str2);
                                throw null;
                        }
                    } else {
                        zD = C2628s.g(interfaceC2603nT, interfaceC2603nT2);
                    }
                    zD = !zD2;
                } else {
                    zD = C2628s.d(interfaceC2603nT, interfaceC2603nT2);
                }
                return zD ? InterfaceC2603n.f23218x : InterfaceC2603n.f23219y;
            case 2:
                EnumC2648w enumC2648w2 = EnumC2648w.ADD;
                int iOrdinal2 = Cw.x1(str2).ordinal();
                if (iOrdinal2 == 2) {
                    Cw.O1("APPLY", 3, arrayList);
                    InterfaceC2603n interfaceC2603nT3 = iVar.t((InterfaceC2603n) arrayList.get(0));
                    String strZzi = iVar.t((InterfaceC2603n) arrayList.get(1)).zzi();
                    InterfaceC2603n interfaceC2603nT4 = iVar.t((InterfaceC2603n) arrayList.get(2));
                    if (!(interfaceC2603nT4 instanceof C2543d)) {
                        throw new IllegalArgumentException(p148t.a.c("Function arguments for Apply are not a list found ", interfaceC2603nT4.getClass().getCanonicalName()));
                    }
                    if (strZzi.isEmpty()) {
                        throw new IllegalArgumentException("Function name for apply is undefined");
                    }
                    return interfaceC2603nT3.l(strZzi, iVar, ((C2543d) interfaceC2603nT4).r());
                }
                if (iOrdinal2 == 15) {
                    Cw.O1("BREAK", 0, arrayList);
                    return InterfaceC2603n.f23215u;
                }
                if (iOrdinal2 == 25) {
                    return C2628s.b(iVar, arrayList);
                }
                if (iOrdinal2 != 41) {
                    if (iOrdinal2 == 54) {
                        return new C2543d(arrayList);
                    }
                    if (iOrdinal2 != 57) {
                        if (iOrdinal2 != 19) {
                            if (iOrdinal2 == 20) {
                                Cw.R1("DEFINE_FUNCTION", 2, arrayList);
                                c2555f = C2628s.b(iVar, arrayList);
                                String str3 = c2555f.f23143G;
                                if (str3 == null) {
                                    iVar.A(HttpUrl.FRAGMENT_ENCODE_SET, c2555f);
                                } else {
                                    iVar.A(str3, c2555f);
                                }
                            } else if (iOrdinal2 == 60) {
                                Cw.O1("SWITCH", 3, arrayList);
                                InterfaceC2603n interfaceC2603nT5 = iVar.t((InterfaceC2603n) arrayList.get(0));
                                InterfaceC2603n interfaceC2603nT6 = iVar.t((InterfaceC2603n) arrayList.get(1));
                                InterfaceC2603n interfaceC2603nT7 = iVar.t((InterfaceC2603n) arrayList.get(2));
                                if (!(interfaceC2603nT6 instanceof C2543d)) {
                                    throw new IllegalArgumentException("Malformed SWITCH statement, cases are not a list");
                                }
                                if (!(interfaceC2603nT7 instanceof C2543d)) {
                                    throw new IllegalArgumentException("Malformed SWITCH statement, case statements are not a list");
                                }
                                C2543d c2543d = (C2543d) interfaceC2603nT6;
                                C2543d c2543d2 = (C2543d) interfaceC2603nT7;
                                boolean z7 = false;
                                for (int i10 = 0; i10 < c2543d.n(); i10++) {
                                    if (z7 || interfaceC2603nT5.equals(iVar.t(c2543d.o(i10)))) {
                                        InterfaceC2603n interfaceC2603nT8 = iVar.t(c2543d2.o(i10));
                                        if (!(interfaceC2603nT8 instanceof C2555f)) {
                                            z7 = true;
                                        } else if (!((C2555f) interfaceC2603nT8).f23122H.equals("break")) {
                                            return interfaceC2603nT8;
                                        }
                                    } else {
                                        z7 = false;
                                    }
                                }
                                if (c2543d.n() + 1 == c2543d2.n()) {
                                    InterfaceC2603n interfaceC2603nT9 = iVar.t(c2543d2.o(c2543d.n()));
                                    if (interfaceC2603nT9 instanceof C2555f) {
                                        String str4 = ((C2555f) interfaceC2603nT9).f23122H;
                                        if (str4.equals("return") || str4.equals("continue")) {
                                            return interfaceC2603nT9;
                                        }
                                    }
                                }
                            } else {
                                if (iOrdinal2 == 61) {
                                    Cw.O1("TERNARY", 3, arrayList);
                                    return iVar.t((InterfaceC2603n) arrayList.get(0)).zzg().booleanValue() ? iVar.t((InterfaceC2603n) arrayList.get(1)) : iVar.t((InterfaceC2603n) arrayList.get(2));
                                }
                                switch (iOrdinal2) {
                                    case 11:
                                        return iVar.r().v(new C2543d(arrayList));
                                    case 12:
                                        Cw.O1("BREAK", 0, arrayList);
                                        return InterfaceC2603n.f23216v;
                                    case 13:
                                        break;
                                    default:
                                        c2628s.a(str2);
                                        throw null;
                                }
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return InterfaceC2603n.f23213s;
                        }
                        InterfaceC2603n interfaceC2603nT10 = iVar.t((InterfaceC2603n) arrayList.get(0));
                        return interfaceC2603nT10 instanceof C2543d ? iVar.v((C2543d) interfaceC2603nT10) : InterfaceC2603n.f23213s;
                    }
                    if (arrayList.isEmpty()) {
                        return InterfaceC2603n.f23217w;
                    }
                    Cw.O1("RETURN", 1, arrayList);
                    c2555f = new C2555f("return", iVar.t((InterfaceC2603n) arrayList.get(0)));
                    return c2555f;
                }
                Cw.R1("IF", 2, arrayList);
                InterfaceC2603n interfaceC2603nT11 = iVar.t((InterfaceC2603n) arrayList.get(0));
                InterfaceC2603n interfaceC2603nT12 = iVar.t((InterfaceC2603n) arrayList.get(1));
                InterfaceC2603n interfaceC2603nT13 = arrayList.size() > 2 ? iVar.t((InterfaceC2603n) arrayList.get(2)) : null;
                InterfaceC2603n interfaceC2603nV2 = interfaceC2603nT11.zzg().booleanValue() ? iVar.v((C2543d) interfaceC2603nT12) : interfaceC2603nT13 != null ? iVar.v((C2543d) interfaceC2603nT13) : InterfaceC2603n.f23213s;
                if (interfaceC2603nV2 instanceof C2555f) {
                    return interfaceC2603nV2;
                }
                return InterfaceC2603n.f23213s;
            case 3:
                EnumC2648w enumC2648w3 = EnumC2648w.ADD;
                int iOrdinal3 = Cw.x1(str2).ordinal();
                if (iOrdinal3 == 1) {
                    Cw.O1("AND", 2, arrayList);
                    c2555f = iVar.t((InterfaceC2603n) arrayList.get(0));
                    if (c2555f.zzg().booleanValue()) {
                        return iVar.t((InterfaceC2603n) arrayList.get(1));
                    }
                } else if (iOrdinal3 == 47) {
                    Cw.O1("NOT", 1, arrayList);
                    c2555f = new C2549e(Boolean.valueOf(!iVar.t((InterfaceC2603n) arrayList.get(0)).zzg().booleanValue()));
                } else {
                    if (iOrdinal3 != 50) {
                        c2628s.a(str2);
                        throw null;
                    }
                    Cw.O1("OR", 2, arrayList);
                    c2555f = iVar.t((InterfaceC2603n) arrayList.get(0));
                    if (!c2555f.zzg().booleanValue()) {
                        return iVar.t((InterfaceC2603n) arrayList.get(1));
                    }
                }
                return c2555f;
            case 4:
                EnumC2648w enumC2648w4 = EnumC2648w.ADD;
                int iOrdinal4 = Cw.x1(str2).ordinal();
                if (iOrdinal4 != 65) {
                    int i11 = 16;
                    switch (iOrdinal4) {
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            Cw.O1("FOR_IN", 3, arrayList);
                            if (!(arrayList.get(0) instanceof C2619q)) {
                                throw new IllegalArgumentException("Variable name in FOR_IN must be a string");
                            }
                            String strZzi2 = ((InterfaceC2603n) arrayList.get(0)).zzi();
                            InterfaceC2603n interfaceC2603nT14 = iVar.t((InterfaceC2603n) arrayList.get(1));
                            InterfaceC2603n interfaceC2603nT15 = iVar.t((InterfaceC2603n) arrayList.get(2));
                            Iterator itZzl = interfaceC2603nT14.zzl();
                            if (itZzl != null) {
                                while (itZzl.hasNext()) {
                                    iVar.z(strZzi2, (InterfaceC2603n) itZzl.next());
                                    InterfaceC2603n interfaceC2603nV3 = iVar.v((C2543d) interfaceC2603nT15);
                                    if (interfaceC2603nV3 instanceof C2555f) {
                                        r7 = (C2555f) interfaceC2603nV3;
                                        if ("break".equals(r7.f23122H)) {
                                            r7 = InterfaceC2603n.f23213s;
                                        } else if ("return".equals(r7.f23122H)) {
                                        }
                                    }
                                }
                                r7 = InterfaceC2603n.f23213s;
                            } else {
                                r7 = InterfaceC2603n.f23213s;
                            }
                            return r7;
                        case 27:
                            Cw.O1("FOR_IN_CONST", 3, arrayList);
                            if (arrayList.get(0) instanceof C2619q) {
                                return C2628s.c(new F.i(i11, (Object) iVar, ((InterfaceC2603n) arrayList.get(0)).zzi()), iVar.t((InterfaceC2603n) arrayList.get(1)).zzl(), iVar.t((InterfaceC2603n) arrayList.get(2)));
                            }
                            throw new IllegalArgumentException("Variable name in FOR_IN_CONST must be a string");
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            Cw.O1("FOR_IN_LET", 3, arrayList);
                            if (!(arrayList.get(0) instanceof C2619q)) {
                                throw new IllegalArgumentException("Variable name in FOR_IN_LET must be a string");
                            }
                            String strZzi3 = ((InterfaceC2603n) arrayList.get(0)).zzi();
                            InterfaceC2603n interfaceC2603nT16 = iVar.t((InterfaceC2603n) arrayList.get(1));
                            InterfaceC2603n interfaceC2603nT17 = iVar.t((InterfaceC2603n) arrayList.get(2));
                            Iterator itZzl2 = interfaceC2603nT16.zzl();
                            if (itZzl2 != null) {
                                while (itZzl2.hasNext()) {
                                    InterfaceC2603n interfaceC2603n2 = (InterfaceC2603n) itZzl2.next();
                                    p096m2.i iVarR = iVar.r();
                                    iVarR.z(strZzi3, interfaceC2603n2);
                                    InterfaceC2603n interfaceC2603nV4 = iVarR.v((C2543d) interfaceC2603nT17);
                                    if (interfaceC2603nV4 instanceof C2555f) {
                                        r7 = (C2555f) interfaceC2603nV4;
                                        if ("break".equals(r7.f23122H)) {
                                            r7 = InterfaceC2603n.f23213s;
                                        } else if ("return".equals(r7.f23122H)) {
                                        }
                                    }
                                }
                                r7 = InterfaceC2603n.f23213s;
                            } else {
                                r7 = InterfaceC2603n.f23213s;
                            }
                            return r7;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            Cw.O1("FOR_LET", 4, arrayList);
                            InterfaceC2603n interfaceC2603nT18 = iVar.t((InterfaceC2603n) arrayList.get(0));
                            if (!(interfaceC2603nT18 instanceof C2543d)) {
                                throw new IllegalArgumentException("Initializer variables in FOR_LET must be an ArrayList");
                            }
                            C2543d c2543d3 = (C2543d) interfaceC2603nT18;
                            InterfaceC2603n interfaceC2603n3 = (InterfaceC2603n) arrayList.get(1);
                            InterfaceC2603n interfaceC2603n4 = (InterfaceC2603n) arrayList.get(2);
                            InterfaceC2603n interfaceC2603nT19 = iVar.t((InterfaceC2603n) arrayList.get(3));
                            p096m2.i iVarR2 = iVar.r();
                            for (int i12 = 0; i12 < c2543d3.n(); i12++) {
                                String strZzi4 = c2543d3.o(i12).zzi();
                                iVarR2.A(strZzi4, iVar.x(strZzi4));
                            }
                            while (iVar.t(interfaceC2603n3).zzg().booleanValue()) {
                                InterfaceC2603n interfaceC2603nV5 = iVar.v((C2543d) interfaceC2603nT19);
                                if (interfaceC2603nV5 instanceof C2555f) {
                                    r8 = (C2555f) interfaceC2603nV5;
                                    if ("break".equals(r8.f23122H)) {
                                        r8 = InterfaceC2603n.f23213s;
                                    } else if ("return".equals(r8.f23122H)) {
                                    }
                                }
                                p096m2.i iVarR3 = iVar.r();
                                for (int i13 = 0; i13 < c2543d3.n(); i13++) {
                                    String strZzi5 = c2543d3.o(i13).zzi();
                                    iVarR3.A(strZzi5, iVarR2.x(strZzi5));
                                }
                                iVarR3.t(interfaceC2603n4);
                                iVarR2 = iVarR3;
                                break;
                            }
                            r8 = InterfaceC2603n.f23213s;
                            break;
                            break;
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            Cw.O1("FOR_OF", 3, arrayList);
                            if (arrayList.get(0) instanceof C2619q) {
                                return C2628s.f(new p096m2.e(i9, iVar, ((InterfaceC2603n) arrayList.get(0)).zzi()), iVar.t((InterfaceC2603n) arrayList.get(1)), iVar.t((InterfaceC2603n) arrayList.get(2)));
                            }
                            throw new IllegalArgumentException("Variable name in FOR_OF must be a string");
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            Cw.O1("FOR_OF_CONST", 3, arrayList);
                            if (arrayList.get(0) instanceof C2619q) {
                                return C2628s.f(new F.i(i11, (Object) iVar, ((InterfaceC2603n) arrayList.get(0)).zzi()), iVar.t((InterfaceC2603n) arrayList.get(1)), iVar.t((InterfaceC2603n) arrayList.get(2)));
                            }
                            throw new IllegalArgumentException("Variable name in FOR_OF_CONST must be a string");
                        case 32:
                            Cw.O1("FOR_OF_LET", 3, arrayList);
                            if (arrayList.get(0) instanceof C2619q) {
                                return C2628s.f(new p096m2.c(i9, (Object) iVar, ((InterfaceC2603n) arrayList.get(0)).zzi()), iVar.t((InterfaceC2603n) arrayList.get(1)), iVar.t((InterfaceC2603n) arrayList.get(2)));
                            }
                            throw new IllegalArgumentException("Variable name in FOR_OF_LET must be a string");
                        default:
                            c2628s.a(str2);
                            throw null;
                    }
                } else {
                    Cw.O1("WHILE", 4, arrayList);
                    InterfaceC2603n interfaceC2603n5 = (InterfaceC2603n) arrayList.get(0);
                    InterfaceC2603n interfaceC2603n6 = (InterfaceC2603n) arrayList.get(1);
                    InterfaceC2603n interfaceC2603n7 = (InterfaceC2603n) arrayList.get(2);
                    InterfaceC2603n interfaceC2603nT20 = iVar.t((InterfaceC2603n) arrayList.get(3));
                    if (iVar.t(interfaceC2603n7).zzg().booleanValue()) {
                        InterfaceC2603n interfaceC2603nV6 = iVar.v((C2543d) interfaceC2603nT20);
                        if (interfaceC2603nV6 instanceof C2555f) {
                            r8 = (C2555f) interfaceC2603nV6;
                            if ("break".equals(r8.f23122H)) {
                                r8 = InterfaceC2603n.f23213s;
                            } else if (!"return".equals(r8.f23122H)) {
                                while (iVar.t(interfaceC2603n5).zzg().booleanValue()) {
                                    interfaceC2603nV = iVar.v((C2543d) interfaceC2603nT20);
                                    if (interfaceC2603nV instanceof C2555f) {
                                        r8 = (C2555f) interfaceC2603nV;
                                        if ("break".equals(r8.f23122H)) {
                                            r8 = InterfaceC2603n.f23213s;
                                        } else if ("return".equals(r8.f23122H)) {
                                        }
                                    }
                                    iVar.t(interfaceC2603n6);
                                }
                                r8 = InterfaceC2603n.f23213s;
                            }
                        } else {
                            while (iVar.t(interfaceC2603n5).zzg().booleanValue()) {
                                interfaceC2603nV = iVar.v((C2543d) interfaceC2603nT20);
                                if (interfaceC2603nV instanceof C2555f) {
                                    r8 = (C2555f) interfaceC2603nV;
                                    if ("break".equals(r8.f23122H)) {
                                        r8 = InterfaceC2603n.f23213s;
                                    } else if ("return".equals(r8.f23122H)) {
                                    }
                                }
                                iVar.t(interfaceC2603n6);
                            }
                            r8 = InterfaceC2603n.f23213s;
                        }
                    } else {
                        while (iVar.t(interfaceC2603n5).zzg().booleanValue()) {
                            interfaceC2603nV = iVar.v((C2543d) interfaceC2603nT20);
                            if (interfaceC2603nV instanceof C2555f) {
                                r8 = (C2555f) interfaceC2603nV;
                                if ("break".equals(r8.f23122H)) {
                                    r8 = InterfaceC2603n.f23213s;
                                } else if ("return".equals(r8.f23122H)) {
                                }
                            }
                            iVar.t(interfaceC2603n6);
                        }
                        r8 = InterfaceC2603n.f23213s;
                    }
                }
                return r8;
            case 5:
                EnumC2648w enumC2648w5 = EnumC2648w.ADD;
                int iOrdinal5 = Cw.x1(str2).ordinal();
                if (iOrdinal5 != 0) {
                    if (iOrdinal5 == 21) {
                        Cw.O1("DIVIDE", 2, arrayList);
                        return new C2561g(Double.valueOf(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue() / iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue()));
                    }
                    if (iOrdinal5 == 59) {
                        Cw.O1("SUBTRACT", 2, arrayList);
                        return new C2561g(Double.valueOf(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue() + (-iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue())));
                    }
                    if (iOrdinal5 == 52 || iOrdinal5 == 53) {
                        Cw.O1(str2, 2, arrayList);
                        c2555f = iVar.t((InterfaceC2603n) arrayList.get(0));
                        iVar.t((InterfaceC2603n) arrayList.get(1));
                    } else {
                        if (iOrdinal5 == 55 || iOrdinal5 == 56) {
                            Cw.O1(str2, 1, arrayList);
                            return iVar.t((InterfaceC2603n) arrayList.get(0));
                        }
                        switch (iOrdinal5) {
                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                Cw.O1("MODULUS", 2, arrayList);
                                return new C2561g(Double.valueOf(iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue() % iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue()));
                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                Cw.O1("MULTIPLY", 2, arrayList);
                                c2561g = new C2561g(Double.valueOf(iVar.t((InterfaceC2603n) arrayList.get(1)).zzh().doubleValue() * iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue()));
                                break;
                            case 46:
                                Cw.O1("NEGATE", 1, arrayList);
                                c2555f = new C2561g(Double.valueOf(-iVar.t((InterfaceC2603n) arrayList.get(0)).zzh().doubleValue()));
                                break;
                            default:
                                c2628s.a(str2);
                                throw null;
                        }
                    }
                    return c2555f;
                }
                Cw.O1("ADD", 2, arrayList);
                InterfaceC2603n interfaceC2603nT21 = iVar.t((InterfaceC2603n) arrayList.get(0));
                InterfaceC2603n interfaceC2603nT22 = iVar.t((InterfaceC2603n) arrayList.get(1));
                c2561g = ((interfaceC2603nT21 instanceof InterfaceC2579j) || (interfaceC2603nT21 instanceof C2619q) || (interfaceC2603nT22 instanceof InterfaceC2579j) || (interfaceC2603nT22 instanceof C2619q)) ? new C2619q(String.valueOf(interfaceC2603nT21.zzi()).concat(String.valueOf(interfaceC2603nT22.zzi()))) : new C2561g(Double.valueOf(interfaceC2603nT22.zzh().doubleValue() + interfaceC2603nT21.zzh().doubleValue()));
                return c2561g;
            case 6:
                if (str2 == null || str2.isEmpty() || !iVar.B(str2)) {
                    throw new IllegalArgumentException(p148t.a.c("Command not found: ", str2));
                }
                InterfaceC2603n interfaceC2603nX = iVar.x(str2);
                if (interfaceC2603nX instanceof AbstractC2567h) {
                    return ((AbstractC2567h) interfaceC2603nX).a(iVar, arrayList);
                }
                throw new IllegalArgumentException(p000a.r.g("Function ", str2, " is not defined"));
            default:
                EnumC2648w enumC2648w6 = EnumC2648w.ADD;
                int iOrdinal6 = Cw.x1(str2).ordinal();
                if (iOrdinal6 != 3) {
                    if (iOrdinal6 == 14) {
                        Cw.R1("CONST", 2, arrayList);
                        if (arrayList.size() % 2 != 0) {
                            throw new IllegalArgumentException(p000a.r.f("CONST requires an even number of arguments, found ", arrayList.size()));
                        }
                        while (i8 < arrayList.size() - 1) {
                            InterfaceC2603n interfaceC2603nT23 = iVar.t((InterfaceC2603n) arrayList.get(i8));
                            if (!(interfaceC2603nT23 instanceof C2619q)) {
                                throw new IllegalArgumentException(p148t.a.c("Expected string for const name. got ", interfaceC2603nT23.getClass().getCanonicalName()));
                            }
                            String strZzi6 = interfaceC2603nT23.zzi();
                            iVar.z(strZzi6, iVar.t((InterfaceC2603n) arrayList.get(i8 + 1)));
                            ((Map) iVar.f27227K).put(strZzi6, Boolean.TRUE);
                            i8 += 2;
                        }
                        return InterfaceC2603n.f23213s;
                    }
                    if (iOrdinal6 == 24) {
                        Cw.R1("EXPRESSION_LIST", 1, arrayList);
                        c2555f = InterfaceC2603n.f23213s;
                        while (i8 < arrayList.size()) {
                            InterfaceC2603n interfaceC2603nT24 = iVar.t((InterfaceC2603n) arrayList.get(i8));
                            if (interfaceC2603nT24 instanceof C2555f) {
                                throw new IllegalStateException("ControlValue cannot be in an expression list");
                            }
                            i8++;
                            c2555f = interfaceC2603nT24;
                        }
                    } else {
                        if (iOrdinal6 == 33) {
                            Cw.O1("GET", 1, arrayList);
                            InterfaceC2603n interfaceC2603nT25 = iVar.t((InterfaceC2603n) arrayList.get(0));
                            if (interfaceC2603nT25 instanceof C2619q) {
                                return iVar.x(interfaceC2603nT25.zzi());
                            }
                            throw new IllegalArgumentException(p148t.a.c("Expected string for get var. got ", interfaceC2603nT25.getClass().getCanonicalName()));
                        }
                        if (iOrdinal6 == 49) {
                            Cw.O1("NULL", 0, arrayList);
                            return InterfaceC2603n.f23214t;
                        }
                        if (iOrdinal6 == 58) {
                            Cw.O1("SET_PROPERTY", 3, arrayList);
                            InterfaceC2603n interfaceC2603nT26 = iVar.t((InterfaceC2603n) arrayList.get(0));
                            InterfaceC2603n interfaceC2603nT27 = iVar.t((InterfaceC2603n) arrayList.get(1));
                            InterfaceC2603n interfaceC2603nT28 = iVar.t((InterfaceC2603n) arrayList.get(2));
                            if (interfaceC2603nT26 == InterfaceC2603n.f23213s || interfaceC2603nT26 == InterfaceC2603n.f23214t) {
                                throw new IllegalStateException(U2.m("Can't set property ", interfaceC2603nT27.zzi(), " of ", interfaceC2603nT26.zzi()));
                            }
                            if ((interfaceC2603nT26 instanceof C2543d) && (interfaceC2603nT27 instanceof C2561g)) {
                                ((C2543d) interfaceC2603nT26).t(interfaceC2603nT27.zzh().intValue(), interfaceC2603nT28);
                                return interfaceC2603nT28;
                            }
                            if (!(interfaceC2603nT26 instanceof InterfaceC2579j)) {
                                return interfaceC2603nT28;
                            }
                            ((InterfaceC2579j) interfaceC2603nT26).i(interfaceC2603nT27.zzi(), interfaceC2603nT28);
                            return interfaceC2603nT28;
                        }
                        if (iOrdinal6 == 17) {
                            if (arrayList.isEmpty()) {
                                return new C2543d();
                            }
                            c2555f = new C2543d();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                InterfaceC2603n interfaceC2603nT29 = iVar.t((InterfaceC2603n) it.next());
                                if (interfaceC2603nT29 instanceof C2555f) {
                                    throw new IllegalStateException("Failed to evaluate array element");
                                }
                                c2555f.t(i8, interfaceC2603nT29);
                                i8++;
                            }
                        } else if (iOrdinal6 != 18) {
                            if (iOrdinal6 == 35 || iOrdinal6 == 36) {
                                Cw.O1("GET_PROPERTY", 2, arrayList);
                                InterfaceC2603n interfaceC2603nT30 = iVar.t((InterfaceC2603n) arrayList.get(0));
                                InterfaceC2603n interfaceC2603nT31 = iVar.t((InterfaceC2603n) arrayList.get(1));
                                if ((interfaceC2603nT30 instanceof C2543d) && Cw.X1(interfaceC2603nT31)) {
                                    return ((C2543d) interfaceC2603nT30).o(interfaceC2603nT31.zzh().intValue());
                                }
                                if (interfaceC2603nT30 instanceof InterfaceC2579j) {
                                    return ((InterfaceC2579j) interfaceC2603nT30).b(interfaceC2603nT31.zzi());
                                }
                                if (interfaceC2603nT30 instanceof C2619q) {
                                    if ("length".equals(interfaceC2603nT31.zzi())) {
                                        return new C2561g(Double.valueOf(interfaceC2603nT30.zzi().length()));
                                    }
                                    if (Cw.X1(interfaceC2603nT31) && interfaceC2603nT31.zzh().doubleValue() < interfaceC2603nT30.zzi().length()) {
                                        c2561g = new C2619q(String.valueOf(interfaceC2603nT30.zzi().charAt(interfaceC2603nT31.zzh().intValue())));
                                    }
                                }
                                return InterfaceC2603n.f23213s;
                            }
                            switch (iOrdinal6) {
                                case 62:
                                    Cw.O1("TYPEOF", 1, arrayList);
                                    InterfaceC2603n interfaceC2603nT32 = iVar.t((InterfaceC2603n) arrayList.get(0));
                                    if (interfaceC2603nT32 instanceof com.google.android.gms.internal.measurement.r) {
                                        str = "undefined";
                                    } else if (interfaceC2603nT32 instanceof C2549e) {
                                        str = "boolean";
                                    } else if (interfaceC2603nT32 instanceof C2561g) {
                                        str = "number";
                                    } else if (interfaceC2603nT32 instanceof C2619q) {
                                        str = "string";
                                    } else if (interfaceC2603nT32 instanceof C2597m) {
                                        str = "function";
                                    } else {
                                        if ((interfaceC2603nT32 instanceof C2609o) || (interfaceC2603nT32 instanceof C2555f)) {
                                            throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", interfaceC2603nT32));
                                        }
                                        str = "object";
                                    }
                                    c2555f = new C2619q(str);
                                    break;
                                case 63:
                                    Cw.O1("UNDEFINED", 0, arrayList);
                                    return InterfaceC2603n.f23213s;
                                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                    Cw.R1("VAR", 1, arrayList);
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        InterfaceC2603n interfaceC2603nT33 = iVar.t((InterfaceC2603n) it2.next());
                                        if (!(interfaceC2603nT33 instanceof C2619q)) {
                                            throw new IllegalArgumentException(p148t.a.c("Expected string for var name. got ", interfaceC2603nT33.getClass().getCanonicalName()));
                                        }
                                        iVar.z(interfaceC2603nT33.zzi(), InterfaceC2603n.f23213s);
                                    }
                                    return InterfaceC2603n.f23213s;
                                default:
                                    c2628s.a(str2);
                                    throw null;
                            }
                        } else {
                            if (arrayList.isEmpty()) {
                                return new C2585k();
                            }
                            if (arrayList.size() % 2 != 0) {
                                throw new IllegalArgumentException(p000a.r.f("CREATE_OBJECT requires an even number of arguments, found ", arrayList.size()));
                            }
                            c2555f = new C2585k();
                            while (i8 < arrayList.size() - 1) {
                                InterfaceC2603n interfaceC2603nT34 = iVar.t((InterfaceC2603n) arrayList.get(i8));
                                InterfaceC2603n interfaceC2603nT35 = iVar.t((InterfaceC2603n) arrayList.get(i8 + 1));
                                if ((interfaceC2603nT34 instanceof C2555f) || (interfaceC2603nT35 instanceof C2555f)) {
                                    throw new IllegalStateException("Failed to evaluate map entry");
                                }
                                c2555f.i(interfaceC2603nT34.zzi(), interfaceC2603nT35);
                                i8 += 2;
                            }
                        }
                    }
                    return c2555f;
                }
                Cw.O1("ASSIGN", 2, arrayList);
                InterfaceC2603n interfaceC2603nT36 = iVar.t((InterfaceC2603n) arrayList.get(0));
                if (!(interfaceC2603nT36 instanceof C2619q)) {
                    throw new IllegalArgumentException(p148t.a.c("Expected string for assign var. got ", interfaceC2603nT36.getClass().getCanonicalName()));
                }
                if (!iVar.B(interfaceC2603nT36.zzi())) {
                    throw new IllegalArgumentException(p148t.a.c("Attempting to assign undefined value ", interfaceC2603nT36.zzi()));
                }
                c2561g = iVar.t((InterfaceC2603n) arrayList.get(1));
                iVar.A(interfaceC2603nT36.zzi(), c2561g);
                return c2561g;
        }
    }

    public final void E(O0 o4) {
        C2376b c2376bA0 = Cw.A0((Context) this.f22391I);
        c2376bA0.d();
        C2378c.o((C2378c) c2376bA0.f22292H, o4);
        H((C2378c) c2376bA0.b());
    }

    public final void F(C2628s c2628s) {
        Iterator it = c2628s.f23254a.iterator();
        while (it.hasNext()) {
            ((Map) this.f22390H).put(Integer.valueOf(((EnumC2648w) it.next()).f23407G).toString(), c2628s);
        }
    }

    public final void G(p096m2.i iVar, C1093bD c1093bD) {
        C2570h2 c2570h2 = new C2570h2(c1093bD);
        TreeMap treeMap = (TreeMap) this.f22390H;
        for (Integer num : treeMap.keySet()) {
            C2531b c2531bA = ((C2531b) c1093bD.f18026H).clone();
            InterfaceC2603n interfaceC2603nA = ((C2597m) treeMap.get(num)).a(iVar, Collections.singletonList(c2570h2));
            int iV0 = interfaceC2603nA instanceof C2561g ? Cw.v0(interfaceC2603nA.zzh().doubleValue()) : -1;
            if (iV0 == 2 || iV0 == -1) {
                c1093bD.f18026H = c2531bA;
            }
        }
        TreeMap treeMap2 = (TreeMap) this.f22391I;
        Iterator it = treeMap2.keySet().iterator();
        while (it.hasNext()) {
            InterfaceC2603n interfaceC2603nA2 = ((C2597m) treeMap2.get((Integer) it.next())).a(iVar, Collections.singletonList(c2570h2));
            if (interfaceC2603nA2 instanceof C2561g) {
                Cw.v0(interfaceC2603nA2.zzh().doubleValue());
            }
        }
    }

    public final void H(C2378c c2378c) {
        ((U2.o) ((R2.e) this.f22390H)).a("TV_ADS_LIB", new R2.b("proto"), C2383e0.f22317G).b(new R2.a(null, c2378c, R2.c.f6285G));
    }

    @Override // p196z2.j
    public final void a(Bitmap bitmap) {
        p196z2.c cVar = (p196z2.c) this.f22390H;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap.Config config = bitmap.getConfig();
        p196z2.k kVarN = (p196z2.k) ((Queue) cVar.f10616G).poll();
        if (kVarN == null) {
            kVarN = cVar.n();
        }
        p196z2.b bVar = (p196z2.b) kVarN;
        bVar.f31754b = width;
        bVar.f31755c = height;
        bVar.f31756d = config;
        ((F.i) this.f22391I).w(bVar, bitmap);
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        H3.s sVar = new H3.s((p052g4.i) obj2, 0);
        H3.i iVar = (H3.i) ((H3.u) obj).getService();
        String[] strArr = (String[]) this.f22391I;
        Parcel parcelJ0 = iVar.j0();
        AbstractC2501u.d(parcelJ0, sVar);
        parcelJ0.writeStringArray(strArr);
        iVar.i2(5, parcelJ0);
    }

    @Override // A1.B
    public final void b(p117p0.E e8) {
        if (e8.z() == 0 && (e8.z() & 128) != 0) {
            e8.M(6);
            int iA = e8.a() / 4;
            for (int i8 = 0; i8 < iA; i8++) {
                p117p0.D d6 = (p117p0.D) this.f22390H;
                e8.j(0, d6.f28028b, 4);
                d6.r(0);
                int i9 = ((p117p0.D) this.f22390H).i(16);
                ((p117p0.D) this.f22390H).u(3);
                if (i9 == 0) {
                    ((p117p0.D) this.f22390H).u(13);
                } else {
                    int i10 = ((p117p0.D) this.f22390H).i(13);
                    if (((A1.F) this.f22391I).f286h.get(i10) == null) {
                        A1.F f8 = (A1.F) this.f22391I;
                        f8.f286h.put(i10, new A1.C(new A1.E(f8, i10)));
                        ((A1.F) this.f22391I).f292n++;
                    }
                }
            }
            A1.F f9 = (A1.F) this.f22391I;
            if (f9.f279a != 2) {
                f9.f286h.remove(0);
            }
        }
    }

    @Override // p196z2.j
    public final Bitmap c(int i8, int i9, Bitmap.Config config) {
        p196z2.c cVar = (p196z2.c) this.f22390H;
        p196z2.k kVarN = (p196z2.k) ((Queue) cVar.f10616G).poll();
        if (kVarN == null) {
            kVarN = cVar.n();
        }
        p196z2.b bVar = (p196z2.b) kVarN;
        bVar.f31754b = i8;
        bVar.f31755c = i9;
        bVar.f31756d = config;
        return (Bitmap) ((F.i) this.f22391I).g(bVar);
    }

    @Override // p196z2.j
    public final String e(int i8, int i9, Bitmap.Config config) {
        return m(i8, i9, config);
    }

    @Override // p196z2.j
    public final int f(Bitmap bitmap) {
        return P2.o.c(bitmap);
    }

    @Override // p196z2.j
    public final String g(Bitmap bitmap) {
        return m(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    public final void h(Object obj, String str) {
        Map map = (Map) this.f22390H;
        obj.getClass();
        map.put(str, obj);
        ((List) this.f22391I).remove(str);
    }

    public final boolean i(p096m2.j jVar) {
        boolean zContainsKey;
        synchronized (this.f22390H) {
            zContainsKey = ((Map) this.f22391I).containsKey(jVar);
        }
        return zContainsKey;
    }

    public final void j(C0053i c0053i) {
        synchronized (c0053i) {
        }
        Object obj = this.f22390H;
        if (((Handler) obj) != null) {
            ((Handler) obj).post(new U0.M(this, c0053i, 1));
        }
    }

    public final Boolean k(KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return null;
        }
        Object obj = this.f22391I;
        if (((View.OnClickListener) obj) == null) {
            return Boolean.FALSE;
        }
        ((View.OnClickListener) obj).onClick((ViewGroup) this.f22390H);
        return Boolean.TRUE;
    }

    public final boolean l() {
        return ((File) this.f22390H).exists() || ((File) this.f22391I).exists();
    }

    public final C0371d n(int i8) {
        C0371d c0371d;
        C0371d c0371d2;
        C0371d c0371d3 = ((C0371d[]) this.f22391I)[p(i8)];
        if (c0371d3 != null) {
            return c0371d3;
        }
        for (int i9 = 1; i9 < 5; i9++) {
            int iP = p(i8) - i9;
            if (iP >= 0 && (c0371d2 = ((C0371d[]) this.f22391I)[iP]) != null) {
                return c0371d2;
            }
            int iP2 = p(i8) + i9;
            C0371d[] c0371dArr = (C0371d[]) this.f22391I;
            if (iP2 < c0371dArr.length && (c0371d = c0371dArr[iP2]) != null) {
                return c0371d;
            }
        }
        return null;
    }

    public final synchronized ArrayList o(Class cls) {
        return ((C2.H) this.f22390H).e(cls);
    }

    public final int p(int i8) {
        return i8 - ((H5.b) this.f22390H).f3773h;
    }

    public final void q(C3136t c3136t, C0055j c0055j) {
        Handler handler = (Handler) this.f22390H;
        if (handler != null) {
            handler.post(new RunnableC0052h0(this, c3136t, c0055j, 5));
        }
    }

    public final FileInputStream r() {
        if (((File) this.f22391I).exists()) {
            ((File) this.f22390H).delete();
            ((File) this.f22391I).renameTo((File) this.f22390H);
        }
        return new FileInputStream((File) this.f22390H);
    }

    @Override // p196z2.j
    public final Bitmap removeLast() {
        return (Bitmap) ((F.i) this.f22391I).x();
    }

    public final void s(Class cls, Class cls2, Class cls3, List list) {
        synchronized (((p132r.f) this.f22391I)) {
            ((p132r.f) this.f22391I).put(new P2.m(cls, cls2, cls3), list);
        }
    }

    public final p034e2.r t(p096m2.j jVar) {
        p034e2.r rVar;
        z4.q0.h(jVar, "id");
        synchronized (this.f22390H) {
            rVar = (p034e2.r) ((Map) this.f22391I).remove(jVar);
        }
        return rVar;
    }

    public String toString() {
        switch (this.f22389G) {
            case 8:
                return "AttributeStrategy:\n  " + ((F.i) this.f22391I);
            case 12:
                return (String) this.f22390H;
            case 22:
                Formatter formatter = new Formatter();
                try {
                    int i8 = 0;
                    for (C0371d c0371d : (C0371d[]) this.f22391I) {
                        if (c0371d == null) {
                            formatter.format("%3d:    |   %n", Integer.valueOf(i8));
                            i8++;
                        } else {
                            formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i8), Integer.valueOf(c0371d.f7392f), Integer.valueOf(c0371d.f7391e));
                            i8++;
                        }
                    }
                    String string = formatter.toString();
                    formatter.close();
                    return string;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            formatter.close();
                            break;
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            case 24:
                return (String) this.f22390H;
            default:
                return super.toString();
        }
    }

    public final List u(String str) {
        List listC;
        z4.q0.h(str, "workSpecId");
        synchronized (this.f22390H) {
            try {
                Map map = (Map) this.f22391I;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : map.entrySet()) {
                    if (z4.q0.c(((p096m2.j) entry.getKey()).f27228a, str)) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                Iterator it = linkedHashMap.keySet().iterator();
                while (it.hasNext()) {
                    ((Map) this.f22391I).remove((p096m2.j) it.next());
                }
                listC = p162u6.o.C(linkedHashMap.values());
            } catch (Throwable th) {
                throw th;
            }
        }
        return listC;
    }

    public final void v(Object obj) {
        if (((Handler) this.f22390H) != null) {
            ((Handler) this.f22390H).post(new RunnableC0010j(this, obj, SystemClock.elapsedRealtime(), 2));
        }
    }

    public final void w(int i8, int i9, int i10, int i11) {
        ((CardView) this.f22391I).f8947J.set(i8, i9, i10, i11);
        Object obj = this.f22391I;
        super/*android.widget.FrameLayout*/.setPadding(i8 + ((CardView) obj).f8946I.left, i9 + ((CardView) obj).f8946I.top, i10 + ((CardView) obj).f8946I.right, i11 + ((CardView) obj).f8946I.bottom);
    }

    public final C3163a x() throws IOException {
        if (((File) this.f22390H).exists()) {
            if (((File) this.f22391I).exists()) {
                ((File) this.f22390H).delete();
            } else if (!((File) this.f22390H).renameTo((File) this.f22391I)) {
                p117p0.x.f("AtomicFile", "Couldn't rename file " + ((File) this.f22390H) + " to backup file " + ((File) this.f22391I));
            }
        }
        try {
            return new C3163a((File) this.f22390H);
        } catch (FileNotFoundException e8) {
            File parentFile = ((File) this.f22390H).getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + ((File) this.f22390H), e8);
            }
            try {
                return new C3163a((File) this.f22390H);
            } catch (FileNotFoundException e9) {
                throw new IOException("Couldn't create " + ((File) this.f22390H), e9);
            }
        }
    }

    public final p034e2.r y(p096m2.j jVar) {
        p034e2.r rVar;
        synchronized (this.f22390H) {
            try {
                Map map = (Map) this.f22391I;
                Object rVar2 = map.get(jVar);
                if (rVar2 == null) {
                    rVar2 = new p034e2.r(jVar);
                    map.put(jVar, rVar2);
                }
                rVar = (p034e2.r) rVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rVar;
    }

    public final void z(Exception exc) {
        Handler handler = (Handler) this.f22390H;
        if (handler != null) {
            handler.post(new U0.r(2, this, exc));
        }
    }

    public x0(C0091g c0091g) {
        this.f22389G = 16;
        C2384f c2384f = C2384f.f22323M;
        this.f22391I = c0091g;
        this.f22390H = c2384f;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public x0(p096m2.u uVar) {
        this(new C2.H(uVar));
        this.f22389G = 9;
    }

    public x0(Context context, U2.o oVar) {
        this.f22389G = 0;
        context.getClass();
        this.f22391I = context;
        this.f22390H = oVar;
    }

    public x0(InterfaceC3086j0 interfaceC3086j0) {
        String strZze;
        this.f22389G = 12;
        this.f22391I = interfaceC3086j0;
        try {
            strZze = interfaceC3086j0.zze();
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            strZze = null;
        }
        this.f22390H = strZze;
    }

    public x0(SurfaceHolder surfaceHolder) {
        this.f22389G = 23;
        if (surfaceHolder != null) {
            this.f22390H = surfaceHolder;
            return;
        }
        throw new IllegalArgumentException("surfaceHolder may not be null");
    }

    public x0(SurfaceTexture surfaceTexture) {
        this.f22389G = 23;
        if (surfaceTexture != null) {
            this.f22391I = surfaceTexture;
            return;
        }
        throw new IllegalArgumentException("surfaceTexture may not be null");
    }

    public x0(C2.H h8) {
        this.f22389G = 9;
        this.f22391I = new p032e0.u(6);
        this.f22390H = h8;
    }

    public x0(H5.b bVar) {
        this.f22389G = 22;
        this.f22390H = new H5.b(bVar);
        this.f22391I = new C0371d[(bVar.f3774i - bVar.f3773h) + 1];
    }

    public x0(File file) {
        this.f22389G = 2;
        this.f22390H = file;
        this.f22391I = new File(file.getPath() + ".bak");
    }

    public x0(int i8) {
        this.f22389G = i8;
        if (i8 == 6) {
            this.f22390H = new Object();
            this.f22391I = new LinkedHashMap();
            return;
        }
        int i9 = 0;
        if (i8 == 8) {
            this.f22390H = new p196z2.c(i9);
            this.f22391I = new F.i(8);
            return;
        }
        if (i8 == 15) {
            this.f22390H = Collections.synchronizedMap(new WeakHashMap());
            this.f22391I = Collections.synchronizedMap(new WeakHashMap());
            return;
        }
        if (i8 == 10) {
            this.f22390H = new AtomicReference();
            this.f22391I = new p132r.f(0);
            return;
        }
        if (i8 != 11) {
            switch (i8) {
                case 17:
                    this.f22390H = new HashMap();
                    this.f22391I = new C2628s(6);
                    F(new C2628s(0));
                    F(new C2628s(1));
                    F(new C2628s(2));
                    F(new C2628s(3));
                    F(new C2628s(4));
                    F(new C2628s(5));
                    F(new C2628s(7));
                    break;
                case 18:
                    this.f22390H = new TreeMap();
                    this.f22391I = new TreeMap();
                    break;
                case 19:
                    break;
                default:
                    this.f22390H = new HashMap();
                    this.f22391I = new ArrayList();
                    break;
            }
        }
    }

    public x0(Handler handler, U0.N n7) {
        this.f22389G = 4;
        if (n7 != null) {
            handler.getClass();
        } else {
            handler = null;
        }
        this.f22390H = handler;
        this.f22391I = n7;
    }

    public x0(CardView cardView) {
        this.f22389G = 1;
        this.f22391I = cardView;
    }

    public x0(A1.F f8) {
        this.f22389G = 5;
        this.f22391I = f8;
        this.f22390H = new p117p0.D(new byte[4], 0, (Object) null);
    }

    @Override // A1.B
    public final void d(p117p0.J j8, W0.u uVar, A1.I i8) {
    }
}
