package com.google.android.gms.internal.ads;

import C2.C0091g;
import Z3.C0432n;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.google.android.gms.internal.atv_ads_framework.C2374a;
import com.google.android.gms.internal.atv_ads_framework.C2376b;
import com.google.android.gms.internal.atv_ads_framework.C2378c;
import com.google.android.gms.internal.atv_ads_framework.C2380d;
import com.google.android.gms.internal.atv_ads_framework.C2388h;
import com.google.android.gms.internal.atv_ads_framework.C2392j;
import com.google.android.gms.internal.atv_ads_framework.C2420y;
import com.google.android.gms.internal.measurement.AbstractC2567h;
import com.google.android.gms.internal.measurement.AbstractC2576i2;
import com.google.android.gms.internal.measurement.C2543d;
import com.google.android.gms.internal.measurement.C2549e;
import com.google.android.gms.internal.measurement.C2555f;
import com.google.android.gms.internal.measurement.C2561g;
import com.google.android.gms.internal.measurement.C2585k;
import com.google.android.gms.internal.measurement.C2591l;
import com.google.android.gms.internal.measurement.C2597m;
import com.google.android.gms.internal.measurement.C2609o;
import com.google.android.gms.internal.measurement.C2614p;
import com.google.android.gms.internal.measurement.C2619q;
import com.google.android.gms.internal.measurement.EnumC2648w;
import com.google.android.gms.internal.measurement.InterfaceC2579j;
import com.google.android.gms.internal.measurement.InterfaceC2603n;
import com.google.android.gms.internal.measurement.InterfaceC2661y2;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p039f.AbstractC2987b;
import p039f.ExecutorC3006v;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class Cw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0799Jo f12717a = new C0799Jo(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0799Jo f12718b = new C0799Jo(21);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0799Jo f12719c = new C0799Jo(23);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final G.c f12720d = new G.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f12721e = new byte[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f12722f = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static UiModeManager f12723g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f12724h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static S3.g f12725i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f12726j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Boolean f12727k;

    public static p004a3.b A(Xu xu) throws GeneralSecurityException, IOException {
        try {
            InputStream inputStream = (InputStream) xu.f17529H;
            C1509jH c1509jH = C1509jH.f19448b;
            UH uh = UH.f16822c;
            C1508jG c1508jGE = C1508jG.E(inputStream, C1509jH.f19449c);
            ((InputStream) xu.f17529H).close();
            if (c1508jGE.A() <= 0) {
                throw new GeneralSecurityException("empty keyset");
            }
            ArrayList arrayList = new ArrayList(c1508jGE.A());
            for (C1458iG c1458iG : c1508jGE.F()) {
                c1458iG.A();
                try {
                    FE feA = FE.a(c1458iG.B().E(), c1458iG.B().D(), c1458iG.B().B(), c1458iG.D(), c1458iG.D() == EnumC2235xG.RAW ? null : Integer.valueOf(c1458iG.A()));
                    C1973sE c1973sE = C1973sE.f20878b;
                    LE le = (LE) c1973sE.f20879a.get();
                    le.getClass();
                    Cw c1248eE = !le.f14491b.containsKey(new JE(FE.class, feA.f13336b)) ? new C1248eE(feA) : c1973sE.a(feA);
                    int I7 = c1458iG.I() - 2;
                    if (I7 != 1 && I7 != 2 && I7 != 3) {
                        throw new GeneralSecurityException("Unknown key status");
                    }
                    arrayList.add(new DC(c1248eE));
                } catch (GeneralSecurityException unused) {
                    arrayList.add(null);
                }
            }
            return new p004a3.b(c1508jGE, Collections.unmodifiableList(arrayList));
        } catch (Throwable th) {
            ((InputStream) xu.f17529H).close();
            throw th;
        }
    }

    public static C2376b A0(Context context) {
        String strZ1;
        String strZ2;
        com.google.android.gms.internal.atv_ads_framework.T0 t0L = com.google.android.gms.internal.atv_ads_framework.U0.l();
        String packageName = context.getApplicationContext().getPackageName();
        t0L.d();
        com.google.android.gms.internal.atv_ads_framework.U0.m((com.google.android.gms.internal.atv_ads_framework.U0) t0L.f22292H, packageName);
        String strZ3 = z1(context, context.getApplicationContext().getPackageName());
        if (!strZ3.isEmpty()) {
            t0L.d();
            com.google.android.gms.internal.atv_ads_framework.U0.n((com.google.android.gms.internal.atv_ads_framework.U0) t0L.f22292H, strZ3);
        }
        com.google.android.gms.internal.atv_ads_framework.L0 l0L = com.google.android.gms.internal.atv_ads_framework.M0.l();
        String strO1 = o1();
        l0L.d();
        com.google.android.gms.internal.atv_ads_framework.M0.m((com.google.android.gms.internal.atv_ads_framework.M0) l0L.f22292H, strO1);
        boolean zHasSystemFeature = context.getPackageManager().hasSystemFeature("com.google.android.tv.operator_tier");
        l0L.d();
        com.google.android.gms.internal.atv_ads_framework.M0.n((com.google.android.gms.internal.atv_ads_framework.M0) l0L.f22292H, zHasSystemFeature);
        com.google.android.gms.internal.atv_ads_framework.M0 m7 = (com.google.android.gms.internal.atv_ads_framework.M0) l0L.b();
        com.google.android.gms.internal.atv_ads_framework.R0 r0L = com.google.android.gms.internal.atv_ads_framework.S0.l();
        r0L.d();
        com.google.android.gms.internal.atv_ads_framework.S0.m((com.google.android.gms.internal.atv_ads_framework.S0) r0L.f22292H);
        com.google.android.gms.internal.atv_ads_framework.S0 s7 = (com.google.android.gms.internal.atv_ads_framework.S0) r0L.b();
        int iU = u(context);
        com.google.android.gms.internal.atv_ads_framework.P0 p0L = com.google.android.gms.internal.atv_ads_framework.Q0.l();
        int iB = p156u.h.b(iU);
        if (iB != 0) {
            strZ1 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (iB == 1) {
                p0L.e(3);
                strZ1 = z1(context, "com.google.android.apps.tv.launcherx");
                strZ2 = HttpUrl.FRAGMENT_ENCODE_SET;
            } else if (iB != 2) {
                if (iB == 3) {
                    p0L.e(5);
                } else if (iB == 4) {
                    p0L.e(6);
                } else if (iB == 5) {
                    p0L.e(1);
                }
                strZ2 = HttpUrl.FRAGMENT_ENCODE_SET;
            } else {
                p0L.e(4);
                strZ2 = z1(context, "com.google.android.tvrecommendations");
            }
        } else {
            p0L.e(2);
            strZ1 = z1(context, "com.google.android.tvlauncher");
            strZ2 = z1(context, "com.google.android.tvrecommendations");
        }
        if (!strZ1.isEmpty()) {
            p0L.d();
            com.google.android.gms.internal.atv_ads_framework.Q0.m((com.google.android.gms.internal.atv_ads_framework.Q0) p0L.f22292H, strZ1);
        }
        if (!strZ2.isEmpty()) {
            p0L.d();
            com.google.android.gms.internal.atv_ads_framework.Q0.n((com.google.android.gms.internal.atv_ads_framework.Q0) p0L.f22292H, strZ2);
        }
        C2376b c2376bL = C2378c.l();
        c2376bL.d();
        C2378c.p((C2378c) c2376bL.f22292H, (com.google.android.gms.internal.atv_ads_framework.U0) t0L.b());
        c2376bL.d();
        C2378c.q((C2378c) c2376bL.f22292H, m7);
        c2376bL.d();
        C2378c.r((C2378c) c2376bL.f22292H, s7);
        c2376bL.d();
        C2378c.m((C2378c) c2376bL.f22292H, (com.google.android.gms.internal.atv_ads_framework.Q0) p0L.b());
        return c2376bL;
    }

    public static void A1(int i8, Object obj, int i9) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i8] = (byte) i9;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i8] = (short) i9;
        } else {
            ((int[]) obj)[i8] = i9;
        }
    }

    public static C0656Ag B(QJ qj) {
        return new C0656Ag(qj, 2);
    }

    public static C2543d B0(C2543d c2543d, p096m2.i iVar, C2597m c2597m, Boolean bool, Boolean bool2) {
        C2543d c2543d2 = new C2543d();
        Iterator itQ = c2543d.q();
        while (itQ.hasNext()) {
            int iIntValue = ((Integer) itQ.next()).intValue();
            if (c2543d.u(iIntValue)) {
                InterfaceC2603n interfaceC2603nA = c2597m.a(iVar, Arrays.asList(c2543d.o(iIntValue), new C2561g(Double.valueOf(iIntValue)), c2543d));
                if (interfaceC2603nA.zzg().equals(bool)) {
                    break;
                }
                if (bool2 == null || interfaceC2603nA.zzg().equals(bool2)) {
                    c2543d2.t(iIntValue, interfaceC2603nA);
                }
            }
        }
        return c2543d2;
    }

    public static boolean B1(byte b8) {
        return b8 > -65;
    }

    public static GC C(byte[] bArr) throws GeneralSecurityException {
        try {
            C1509jH c1509jH = C1509jH.f19448b;
            UH uh = UH.f16822c;
            C1250eG c1250eGC = C1250eG.C(bArr, C1509jH.f19449c);
            C1973sE c1973sE = C1973sE.f20878b;
            NG ngA = NE.a(c1250eGC.F());
            GE ge = new GE(c1250eGC, ngA);
            LE le = (LE) c1973sE.f20879a.get();
            le.getClass();
            return !le.f14493d.containsKey(new JE(GE.class, ngA)) ? new C1300fE(ge) : c1973sE.b(ge);
        } catch (IOException e8) {
            throw new GeneralSecurityException("Failed to parse proto", e8);
        }
    }

    public static InterfaceC2603n C0(Object obj) {
        if (obj == null) {
            return InterfaceC2603n.f23214t;
        }
        if (obj instanceof String) {
            return new C2619q((String) obj);
        }
        if (obj instanceof Double) {
            return new C2561g((Double) obj);
        }
        if (obj instanceof Long) {
            return new C2561g(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new C2561g(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new C2549e((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            C2543d c2543d = new C2543d();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                c2543d.t(c2543d.n(), C0(it.next()));
            }
            return c2543d;
        }
        C2585k c2585k = new C2585k();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            InterfaceC2603n interfaceC2603nC0 = C0(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                c2585k.i((String) string, interfaceC2603nC0);
            }
        }
        return c2585k;
    }

    public static int C1(byte[] bArr, int i8, InterfaceC2236xH interfaceC2236xH, SG sg) throws AH {
        C1924rH c1924rH = (C1924rH) interfaceC2236xH;
        int iM1 = M1(bArr, i8, sg);
        int i9 = sg.f16417a + iM1;
        while (iM1 < i9) {
            iM1 = M1(bArr, iM1, sg);
            c1924rH.i(sg.f16417a);
        }
        if (iM1 == i9) {
            return iM1;
        }
        throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static InterfaceC2603n D(InterfaceC2579j interfaceC2579j, C2619q c2619q, p096m2.i iVar, ArrayList arrayList) {
        String str = c2619q.f23243G;
        if (interfaceC2579j.c(str)) {
            InterfaceC2603n interfaceC2603nB = interfaceC2579j.b(str);
            if (interfaceC2603nB instanceof AbstractC2567h) {
                return ((AbstractC2567h) interfaceC2603nB).a(iVar, arrayList);
            }
            throw new IllegalArgumentException(com.google.protobuf.U2.A(str, " is not a function"));
        }
        if (!"hasOwnProperty".equals(str)) {
            throw new IllegalArgumentException(p148t.a.c("Object has no function ", str));
        }
        O1("hasOwnProperty", 1, arrayList);
        return interfaceC2579j.c(iVar.t((InterfaceC2603n) arrayList.get(0)).zzi()) ? InterfaceC2603n.f23218x : InterfaceC2603n.f23219y;
    }

    public static String D0(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strC;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            length = objArr.length;
            if (i9 >= length) {
                break;
            }
            Object obj = objArr[i9];
            if (obj == null) {
                strC = "null";
            } else {
                try {
                    strC = obj.toString();
                } catch (Exception e8) {
                    String strL = com.google.protobuf.U2.l(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strL), (Throwable) e8);
                    strC = A0.O.C("<", strL, " threw ", e8.getClass().getName(), ">");
                }
            }
            objArr[i9] = strC;
            i9++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i10 = 0;
        while (true) {
            length2 = objArr.length;
            if (i8 >= length2 || (iIndexOf = str.indexOf("%s", i10)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) str, i10, str.length());
        if (i8 < length2) {
            sb.append(" [");
            sb.append(objArr[i8]);
            for (int i11 = i8 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static C1918rB D1(D4.b bVar, Class cls, RB rb, Executor executor) {
        C1918rB c1918rB = new C1918rB(bVar, cls, rb);
        bVar.a(c1918rB, c1(executor, c1918rB));
        return c1918rB;
    }

    public static InterfaceC2603n E(com.google.android.gms.internal.measurement.D1 d6) {
        if (d6 == null) {
            return InterfaceC2603n.f23213s;
        }
        int iZ = d6.z() - 1;
        if (iZ == 1) {
            return d6.y() ? new C2619q(d6.t()) : InterfaceC2603n.f23220z;
        }
        if (iZ == 2) {
            return d6.x() ? new C2561g(Double.valueOf(d6.q())) : new C2561g(null);
        }
        if (iZ == 3) {
            return d6.w() ? new C2549e(Boolean.valueOf(d6.v())) : new C2549e(null);
        }
        if (iZ != 4) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        InterfaceC2661y2 interfaceC2661y2U = d6.u();
        ArrayList arrayList = new ArrayList();
        Iterator it = interfaceC2661y2U.iterator();
        while (it.hasNext()) {
            arrayList.add(E((com.google.android.gms.internal.measurement.D1) it.next()));
        }
        return new C2609o(d6.s(), arrayList);
    }

    public static String E0(String str, String[] strArr, String[] strArr2) {
        int iMin = Math.min(strArr.length, strArr2.length);
        for (int i8 = 0; i8 < iMin; i8++) {
            String str2 = strArr[i8];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i8];
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a  */
    public static Integer E1(String str) {
        byte b8;
        Long lValueOf;
        byte b9;
        str.getClass();
        if (!str.isEmpty()) {
            char cCharAt = str.charAt(0);
            int i8 = cCharAt == '-' ? 1 : 0;
            if (i8 != str.length()) {
                int i9 = i8 + 1;
                char cCharAt2 = str.charAt(i8);
                if (cCharAt2 < 128) {
                    b8 = AbstractC1867qB.f20558a[cCharAt2];
                } else {
                    byte[] bArr = AbstractC1867qB.f20558a;
                    b8 = -1;
                }
                if (b8 >= 0 && b8 < 10) {
                    long j8 = -b8;
                    while (true) {
                        if (i9 >= str.length()) {
                            if (cCharAt != '-') {
                                if (j8 != Long.MIN_VALUE) {
                                    lValueOf = Long.valueOf(-j8);
                                    break;
                                }
                                break;
                            }
                            lValueOf = Long.valueOf(j8);
                            break;
                        }
                        int i10 = i9 + 1;
                        char cCharAt3 = str.charAt(i9);
                        if (cCharAt3 < 128) {
                            b9 = AbstractC1867qB.f20558a[cCharAt3];
                        } else {
                            byte[] bArr2 = AbstractC1867qB.f20558a;
                            b9 = -1;
                        }
                        if (b9 >= 0 && b9 < 10 && j8 >= -922337203685477580L) {
                            long j9 = j8 * 10;
                            long j10 = b9;
                            if (j9 >= Long.MIN_VALUE + j10) {
                                j8 = j9 - j10;
                                i9 = i10;
                            }
                        }
                        lValueOf = null;
                        break;
                    }
                }
                lValueOf = null;
                break;
            }
            lValueOf = null;
            break;
        }
        lValueOf = null;
        break;
        if (lValueOf == null || lValueOf.longValue() != lValueOf.intValue()) {
            return null;
        }
        return Integer.valueOf(lValueOf.intValue());
    }

    public static Object F(Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (cls.isAssignableFrom(obj2.getClass())) {
            return obj2;
        }
        String canonicalName = cls.getCanonicalName();
        throw new IllegalStateException(p000a.r.j(com.google.protobuf.U2.q("Invalid conditional user property field type. '", str, "' expected [", canonicalName, "] but was ["), obj2.getClass().getCanonicalName(), "]"));
    }

    public static AbstractList F0(List list, C2064u1 c2064u1) {
        return list instanceof RandomAccess ? new EA(list, c2064u1) : new FA(list, c2064u1);
    }

    public static Object F1(InterfaceC2603n interfaceC2603n) {
        if (InterfaceC2603n.f23214t.equals(interfaceC2603n)) {
            return null;
        }
        if (InterfaceC2603n.f23213s.equals(interfaceC2603n)) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (interfaceC2603n instanceof C2585k) {
            return I1((C2585k) interfaceC2603n);
        }
        if (!(interfaceC2603n instanceof C2543d)) {
            return !interfaceC2603n.zzh().isNaN() ? interfaceC2603n.zzh() : interfaceC2603n.zzi();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((C2543d) interfaceC2603n).iterator();
        while (true) {
            C2614p c2614p = (C2614p) it;
            if (!c2614p.hasNext()) {
                return arrayList;
            }
            Object objF1 = F1((InterfaceC2603n) c2614p.next());
            if (objF1 != null) {
                arrayList.add(objF1);
            }
        }
    }

    public static Object G(YA ya, String str) {
        AA aa = new AA(ya);
        return aa.hasNext() ? aa.next() : str;
    }

    public static LinkedHashMap G0(int i8) {
        int i9;
        if (i8 < 3) {
            i9 = i8 + 1;
        } else {
            i9 = i8 < 1073741824 ? (int) ((i8 / 0.75f) + 1.0f) : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        return new LinkedHashMap(i9);
    }

    public static int G1(int i8, byte[] bArr, int i9, int i10, C1408hI c1408hI, SG sg) throws AH {
        if ((i8 >>> 3) == 0) {
            throw new AH("Protocol message contained an invalid tag (zero).");
        }
        int i11 = i8 & 7;
        if (i11 == 0) {
            int iV1 = V1(bArr, i9, sg);
            c1408hI.c(i8, Long.valueOf(sg.f16418b));
            return iV1;
        }
        if (i11 == 1) {
            c1408hI.c(i8, Long.valueOf(c2(bArr, i9)));
            return i9 + 8;
        }
        if (i11 == 2) {
            int iM1 = M1(bArr, i9, sg);
            int i12 = sg.f16417a;
            if (i12 < 0) {
                throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i12 > bArr.length - iM1) {
                throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i12 == 0) {
                c1408hI.c(i8, XG.f17401H);
            } else {
                c1408hI.c(i8, XG.y(iM1, bArr, i12));
            }
            return iM1 + i12;
        }
        if (i11 != 3) {
            if (i11 != 5) {
                throw new AH("Protocol message contained an invalid tag (zero).");
            }
            c1408hI.c(i8, Integer.valueOf(y0(bArr, i9)));
            return i9 + 4;
        }
        int i13 = (i8 & (-8)) | 4;
        C1408hI c1408hIB = C1408hI.b();
        int i14 = sg.f16420d + 1;
        sg.f16420d = i14;
        if (i14 >= 100) {
            throw new AH("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i15 = 0;
        while (i9 < i10) {
            int iM2 = M1(bArr, i9, sg);
            i15 = sg.f16417a;
            if (i15 == i13) {
                i9 = iM2;
                break;
            }
            i9 = G1(i15, bArr, iM2, i10, c1408hIB, sg);
        }
        sg.f16420d--;
        if (i9 > i10 || i15 != i13) {
            throw new AH("Failed to parse the message.");
        }
        c1408hI.c(i8, c1408hIB);
        return i9;
    }

    public static Object H(p052g4.h hVar) throws ExecutionException {
        if (hVar.h()) {
            return hVar.f();
        }
        if (((p052g4.r) hVar).f25372d) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(hVar.e());
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0014 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0016  */
    /* JADX WARN: Code duplicated, block: B:12:0x0018 A[PHI: r2
      0x0018: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0012, B:11:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    public static void H0(byte b8, byte b9, byte b10, char[] cArr, int i8) throws AH {
        if (!K1(b9)) {
            if (b8 != -32) {
                if (b8 != -19) {
                    if (!K1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                } else if (b9 < -96) {
                    b8 = -19;
                    if (!K1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                }
            } else if (b9 >= -96) {
                b8 = -32;
                if (b8 != -19) {
                    if (!K1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                } else if (b9 < -96) {
                    b8 = -19;
                    if (!K1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                }
            }
        }
        throw new AH("Protocol message had invalid UTF-8.");
    }

    public static C1246eC H1(Throwable th) {
        th.getClass();
        C1246eC c1246eC = new C1246eC();
        c1246eC.g(th);
        return c1246eC;
    }

    public static Object I(Callable callable) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void I0(int i8, int i9) {
        if (i8 < 0 || i8 > i9) {
            throw new IndexOutOfBoundsException(y1(i8, i9, "index"));
        }
    }

    public static HashMap I1(C2585k c2585k) {
        HashMap map = new HashMap();
        for (String str : new ArrayList(c2585k.f23173G.keySet())) {
            Object objF1 = F1(c2585k.b(str));
            if (objF1 != null) {
                map.put(str, objF1);
            }
        }
        return map;
    }

    public static Object J(Future future) {
        Object obj;
        boolean z7 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z7 = true;
            } catch (Throwable th) {
                if (z7) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static void J0(p004a3.b bVar, Xu xu) throws IOException {
        C1508jG c1508jG = (C1508jG) bVar.f8650H;
        try {
            OutputStream outputStream = (OutputStream) xu.f17529H;
            c1508jG.getClass();
            int iA = c1508jG.a(null);
            Logger logger = AbstractC1407hH.f19075d;
            if (iA > 4096) {
                iA = 4096;
            }
            C1355gH c1355gH = new C1355gH(outputStream, iA);
            c1508jG.w(c1355gH);
            if (c1355gH.f18923h > 0) {
                c1355gH.g0();
            }
        } finally {
            ((OutputStream) xu.f17529H).close();
        }
    }

    public static List J1(int... iArr) {
        int length = iArr.length;
        return length == 0 ? Collections.emptyList() : new C1815pB(0, length, iArr);
    }

    public static String K(Context context) {
        try {
            return context.getResources().getResourcePackageName(R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }

    public static void K0(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    public static boolean K1(byte b8) {
        return b8 > -65;
    }

    public static String L(XG xg) {
        StringBuilder sb = new StringBuilder(xg.n());
        for (int i8 = 0; i8 < xg.n(); i8++) {
            byte bC = xg.c(i8);
            if (bC == 34) {
                sb.append("\\\"");
            } else if (bC == 39) {
                sb.append("\\'");
            } else if (bC != 92) {
                switch (bC) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bC < 32 || bC > 126) {
                            sb.append('\\');
                            sb.append((char) (((bC >>> 6) & 3) + 48));
                            sb.append((char) (((bC >>> 3) & 7) + 48));
                            sb.append((char) ((bC & 7) + 48));
                        } else {
                            sb.append((char) bC);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static void L0(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            for (Object obj : objArr) {
                if (obj == null) {
                    sb.append("null");
                } else if (obj instanceof String) {
                    String string = obj.toString();
                    if (string.startsWith("{")) {
                        sb.append(string);
                    } else {
                        sb.append('\"');
                        sb.append(string);
                        sb.append('\"');
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.setLength(sb.length() - 1);
            sb.append(")}");
            String string2 = sb.toString();
            Handler handler = webView.getHandler();
            if (handler == null || Looper.myLooper() == handler.getLooper()) {
                T1(webView, string2);
            } else {
                handler.post(new RunnableC1170co(webView, string2));
            }
        }
    }

    public static boolean L1(Context context, String str) {
        try {
            return (context.getPackageManager().getApplicationInfo(str, 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static String M(com.google.android.gms.internal.atv_ads_framework.J j8) {
        StringBuilder sb = new StringBuilder(j8.n());
        for (int i8 = 0; i8 < j8.n(); i8++) {
            byte bI = j8.i(i8);
            if (bI == 34) {
                sb.append("\\\"");
            } else if (bI == 39) {
                sb.append("\\'");
            } else if (bI != 92) {
                switch (bI) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bI < 32 || bI > 126) {
                            sb.append('\\');
                            sb.append((char) (((bI >>> 6) & 3) + 48));
                            sb.append((char) (((bI >>> 3) & 7) + 48));
                            sb.append((char) ((bI & 7) + 48));
                        } else {
                            sb.append((char) bI);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static void M0(p021c4.T t7, SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        int i8 = com.google.android.gms.internal.measurement.D.f22893d;
        File file = new File(path);
        boolean readable = file.setReadable(false, false);
        p021c4.Q q7 = t7.f11042O;
        if (!readable) {
            q7.a("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            q7.a("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            q7.a("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        q7.a("Failed to turn on database write permission for owner");
    }

    public static int M1(byte[] bArr, int i8, SG sg) {
        int i9 = i8 + 1;
        byte b8 = bArr[i8];
        if (b8 < 0) {
            return Q1(b8, bArr, i9, sg);
        }
        sg.f16417a = b8;
        return i9;
    }

    public static String N(com.google.android.gms.internal.cast.Z1 z7) {
        StringBuilder sb = new StringBuilder(z7.n());
        for (int i8 = 0; i8 < z7.n(); i8++) {
            byte bI = z7.i(i8);
            if (bI == 34) {
                sb.append("\\\"");
            } else if (bI == 39) {
                sb.append("\\'");
            } else if (bI != 92) {
                switch (bI) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bI < 32 || bI > 126) {
                            sb.append('\\');
                            sb.append((char) (((bI >>> 6) & 3) + 48));
                            sb.append((char) (((bI >>> 3) & 7) + 48));
                            sb.append((char) ((bI & 7) + 48));
                        } else {
                            sb.append((char) bI);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static void N0(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
        }
    }

    public static C1298fC N1(Object obj) {
        return obj == null ? C1298fC.f18730H : new C1298fC(obj);
    }

    public static String O(AbstractC2576i2 abstractC2576i2) {
        StringBuilder sb = new StringBuilder(abstractC2576i2.n());
        for (int i8 = 0; i8 < abstractC2576i2.n(); i8++) {
            byte bI = abstractC2576i2.i(i8);
            if (bI == 34) {
                sb.append("\\\"");
            } else if (bI == 39) {
                sb.append("\\'");
            } else if (bI != 92) {
                switch (bI) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bI < 32 || bI > 126) {
                            sb.append('\\');
                            sb.append((char) (((bI >>> 6) & 3) + 48));
                            sb.append((char) (((bI >>> 3) & 7) + 48));
                            sb.append((char) ((bI & 7) + 48));
                        } else {
                            sb.append((char) bI);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static void O0(Object[] objArr, int i8) {
        for (int i9 = 0; i9 < i8; i9++) {
            if (objArr[i9] == null) {
                throw new NullPointerException(p000a.r.f("at index ", i9));
            }
        }
    }

    public static void O1(String str, int i8, List list) {
        if (list.size() == i8) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires " + i8 + " parameters found " + list.size());
    }

    public static String P(String str) {
        int length = str.length();
        int i8 = 0;
        while (i8 < length) {
            char cCharAt = str.charAt(i8);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i8 < length) {
                    char c8 = charArray[i8];
                    if (c8 >= 'A' && c8 <= 'Z') {
                        charArray[i8] = (char) (c8 ^ ' ');
                    }
                    i8++;
                }
                return String.valueOf(charArray);
            }
            i8++;
        }
        return str;
    }

    public static boolean P0(double d6) {
        return Math.getExponent(d6) <= 1023;
    }

    public static int[] P1(AbstractC2333zA abstractC2333zA) {
        Object[] array = abstractC2333zA.toArray(AbstractC1814pA.f20430G);
        int length = array.length;
        int[] iArr = new int[length];
        for (int i8 = 0; i8 < length; i8++) {
            Object obj = array[i8];
            obj.getClass();
            iArr[i8] = ((Number) obj).intValue();
        }
        return iArr;
    }

    public static String Q(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strC;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            length = objArr.length;
            if (i9 >= length) {
                break;
            }
            Object obj = objArr[i9];
            if (obj == null) {
                strC = "null";
            } else {
                try {
                    strC = obj.toString();
                } catch (Exception e8) {
                    String strL = com.google.protobuf.U2.l(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strL), (Throwable) e8);
                    strC = A0.O.C("<", strL, " threw ", e8.getClass().getName(), ">");
                }
            }
            objArr[i9] = strC;
            i9++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i10 = 0;
        while (true) {
            length2 = objArr.length;
            if (i8 >= length2 || (iIndexOf = str.indexOf("%s", i10)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) str, i10, str.length());
        if (i8 < length2) {
            sb.append(" [");
            sb.append(objArr[i8]);
            for (int i11 = i8 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static byte[] Q0(OC oc) {
        return ((GE) C1973sE.f20878b.d(oc)).f13494b.d();
    }

    public static int Q1(int i8, byte[] bArr, int i9, SG sg) {
        byte b8 = bArr[i9];
        int i10 = i9 + 1;
        int i11 = i8 & 127;
        if (b8 >= 0) {
            sg.f16417a = i11 | (b8 << 7);
            return i10;
        }
        int i12 = i11 | ((b8 & 127) << 7);
        int i13 = i9 + 2;
        byte b9 = bArr[i10];
        if (b9 >= 0) {
            sg.f16417a = i12 | (b9 << MqttWireMessage.MESSAGE_TYPE_DISCONNECT);
            return i13;
        }
        int i14 = i12 | ((b9 & 127) << 14);
        int i15 = i9 + 3;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            sg.f16417a = i14 | (b10 << 21);
            return i15;
        }
        int i16 = i14 | ((b10 & 127) << 21);
        int i17 = i9 + 4;
        byte b11 = bArr[i15];
        if (b11 >= 0) {
            sg.f16417a = i16 | (b11 << 28);
            return i17;
        }
        int i18 = i16 | ((b11 & 127) << 28);
        while (true) {
            int i19 = i17 + 1;
            if (bArr[i17] >= 0) {
                sg.f16417a = i18;
                return i19;
            }
            i17 = i19;
        }
    }

    public static String R(Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strC;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            length = objArr.length;
            if (i9 >= length) {
                break;
            }
            Object obj = objArr[i9];
            if (obj == null) {
                strC = "null";
            } else {
                try {
                    strC = obj.toString();
                } catch (Exception e8) {
                    String strL = com.google.protobuf.U2.l(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strL), (Throwable) e8);
                    strC = A0.O.C("<", strL, " threw ", e8.getClass().getName(), ">");
                }
            }
            objArr[i9] = strC;
            i9++;
        }
        StringBuilder sb = new StringBuilder((length * 16) + 29);
        int i10 = 0;
        while (true) {
            length2 = objArr.length;
            if (i8 >= length2 || (iIndexOf = "expected a non-null reference".indexOf("%s", i10)) == -1) {
                break;
            }
            sb.append((CharSequence) "expected a non-null reference", i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) "expected a non-null reference", i10, 29);
        if (i8 < length2) {
            sb.append(" [");
            sb.append(objArr[i8]);
            for (int i11 = i8 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static byte[] R0(byte[]... bArr) throws GeneralSecurityException {
        int i8 = 0;
        int i9 = 0;
        while (true) {
            if (i8 >= bArr.length) {
                byte[] bArr2 = new byte[i9];
                int i10 = 0;
                for (byte[] bArr3 : bArr) {
                    int length = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i10, length);
                    i10 += length;
                }
                return bArr2;
            }
            int length2 = bArr[i8].length;
            if (i9 > com.google.android.gms.common.api.d.API_PRIORITY_OTHER - length2) {
                throw new GeneralSecurityException("exceeded size limit");
            }
            i9 += length2;
            i8++;
        }
    }

    public static void R1(String str, int i8, List list) {
        if (list.size() >= i8) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires at least " + i8 + " parameters found " + list.size());
    }

    public static Date S(long j8) {
        return new Date((j8 - 2082844800) * 1000);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0014 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0016  */
    /* JADX WARN: Code duplicated, block: B:12:0x0018 A[PHI: r2
      0x0018: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0012, B:11:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    public static void S0(byte b8, byte b9, byte b10, char[] cArr, int i8) throws com.google.android.gms.internal.measurement.B2 {
        if (!B1(b9)) {
            if (b8 != -32) {
                if (b8 != -19) {
                    if (!B1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                } else if (b9 < -96) {
                    b8 = -19;
                    if (!B1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                }
            } else if (b9 >= -96) {
                b8 = -32;
                if (b8 != -19) {
                    if (!B1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                } else if (b9 < -96) {
                    b8 = -19;
                    if (!B1(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                }
            }
        }
        throw new com.google.android.gms.internal.measurement.B2("Protocol message had invalid UTF-8.");
    }

    public static int S1(int i8, byte[] bArr, int i9, int i10, InterfaceC2236xH interfaceC2236xH, SG sg) {
        C1924rH c1924rH = (C1924rH) interfaceC2236xH;
        int iM1 = M1(bArr, i9, sg);
        c1924rH.i(sg.f16417a);
        while (iM1 < i10) {
            int iM2 = M1(bArr, iM1, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iM1 = M1(bArr, iM2, sg);
            c1924rH.i(sg.f16417a);
        }
        return iM1;
    }

    public static Map T(String str, Bundle bundle) {
        Map map = (Map) bundle.getSerializable(str);
        if (map == null) {
            return com.google.android.gms.internal.cast.Q.f22521N;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (entry != null && entry.getKey() != null && entry.getValue() != null) {
                map2.put((Integer) entry.getKey(), (Integer) entry.getValue());
            }
        }
        return Collections.unmodifiableMap(map2);
    }

    public static void T0(int i8, int i9) {
        if (i8 < 0 || i8 > i9) {
            throw new IndexOutOfBoundsException(p1(i8, i9, "index"));
        }
    }

    public static final void T1(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            webView.evaluateJavascript(str, null);
        } catch (IllegalStateException unused) {
            webView.loadUrl("javascript: ".concat(String.valueOf(str)));
        }
    }

    public static void U(byte b8, byte b9, byte b10, byte b11, char[] cArr, int i8) throws AH {
        if (!K1(b9)) {
            if ((((b9 + 112) + (b8 << 28)) >> 30) == 0 && !K1(b10) && !K1(b11)) {
                int i9 = ((b8 & 7) << 18) | ((b9 & 63) << 12) | ((b10 & 63) << 6) | (b11 & 63);
                cArr[i8] = (char) ((i9 >>> 10) + 55232);
                cArr[i8 + 1] = (char) ((i9 & 1023) + 56320);
                return;
            }
        }
        throw new AH("Protocol message had invalid UTF-8.");
    }

    public static int U0(InterfaceC1098bI interfaceC1098bI, byte[] bArr, int i8, int i9, int i10, SG sg) throws AH {
        AbstractC1873qH abstractC1873qHZze = interfaceC1098bI.zze();
        int iY1 = Y1(abstractC1873qHZze, interfaceC1098bI, bArr, i8, i9, i10, sg);
        interfaceC1098bI.zzf(abstractC1873qHZze);
        sg.f16419c = abstractC1873qHZze;
        return iY1;
    }

    public static void U1(String str, int i8, ArrayList arrayList) {
        if (arrayList.size() <= i8) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires at most " + i8 + " parameters found " + arrayList.size());
    }

    public static void V(int i8) throws InvalidAlgorithmParameterException {
        if (i8 != 16 && i8 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i8 * 8)));
        }
    }

    public static int V0(Object obj, int i8) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i8] & 255;
        }
        return obj instanceof short[] ? (char) ((short[]) obj)[i8] : ((int[]) obj)[i8];
    }

    public static int V1(byte[] bArr, int i8, SG sg) {
        long j8 = bArr[i8];
        int i9 = i8 + 1;
        if (j8 >= 0) {
            sg.f16418b = j8;
            return i9;
        }
        int i10 = i8 + 2;
        byte b8 = bArr[i9];
        long j9 = (j8 & 127) | (((long) (b8 & 127)) << 7);
        int i11 = 7;
        while (b8 < 0) {
            int i12 = i10 + 1;
            byte b9 = bArr[i10];
            i11 += 7;
            j9 |= ((long) (b9 & 127)) << i11;
            b8 = b9;
            i10 = i12;
        }
        sg.f16418b = j9;
        return i10;
    }

    public static void W(int i8, int i9) {
        String strD0;
        if (i8 < 0 || i8 >= i9) {
            if (i8 < 0) {
                strD0 = D0("%s (%s) must not be negative", "index", Integer.valueOf(i8));
            } else {
                if (i9 < 0) {
                    throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
                }
                strD0 = D0("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i8), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strD0);
        }
    }

    public static long W0(int i8, byte[] bArr) {
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        return ((long) (((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16))) & 4294967295L;
    }

    public static RunnableFutureC2023tC W1(QB qb, Executor executor) {
        RunnableFutureC2023tC runnableFutureC2023tC = new RunnableFutureC2023tC();
        runnableFutureC2023tC.f21049N = new C1971sC(runnableFutureC2023tC, qb);
        executor.execute(runnableFutureC2023tC);
        return runnableFutureC2023tC;
    }

    public static void X(long j8, String str) {
        if (j8 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j8 + ") must be >= 0");
    }

    public static long X0(long j8, long j9) {
        X(j8, "a");
        X(j9, "b");
        if (j8 == 0) {
            return j9;
        }
        if (j9 == 0) {
            return j8;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j8);
        long jNumberOfTrailingZeros = j8 >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j9);
        long j10 = j9 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j10) {
            long j11 = jNumberOfTrailingZeros - j10;
            long j12 = (j11 >> 63) & j11;
            long j13 = (j11 - j12) - j12;
            jNumberOfTrailingZeros = j13 >> Long.numberOfTrailingZeros(j13);
            j10 += j12;
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    public static boolean X1(InterfaceC2603n interfaceC2603n) {
        if (interfaceC2603n == null) {
            return false;
        }
        Double dZzh = interfaceC2603n.zzh();
        return !dZzh.isNaN() && dZzh.doubleValue() >= 0.0d && dZzh.equals(Double.valueOf(Math.floor(dZzh.doubleValue())));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00e1  */
    public static void Y(p021c4.T t7, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws Throwable {
        Cursor cursorQuery;
        p021c4.Q q7 = t7.f11042O;
        Cursor cursor = null;
        try {
            cursorQuery = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            try {
                try {
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    cursorQuery.close();
                    if (!zMoveToFirst) {
                        sQLiteDatabase.execSQL(str2);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e8) {
                e = e8;
                q7.c(str, e, "Error querying for table");
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } catch (SQLiteException e9) {
            e = e9;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        try {
            HashSet hashSet = new HashSet();
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
            try {
                Collections.addAll(hashSet, cursorRawQuery.getColumnNames());
                cursorRawQuery.close();
                for (String str4 : str3.split(",")) {
                    if (!hashSet.remove(str4)) {
                        throw new SQLiteException("Table " + str + " is missing required column: " + str4);
                    }
                }
                if (strArr != null) {
                    for (int i8 = 0; i8 < strArr.length; i8 += 2) {
                        if (!hashSet.remove(strArr[i8])) {
                            sQLiteDatabase.execSQL(strArr[i8 + 1]);
                        }
                    }
                }
                if (hashSet.isEmpty()) {
                    return;
                }
                q7.c(str, TextUtils.join(", ", hashSet), "Table has extra columns. table, columns");
            } catch (Throwable th3) {
                cursorRawQuery.close();
                throw th3;
            }
        } catch (SQLiteException e10) {
            t7.f11039L.b(str, "Failed to verify columns on table that was just created");
            throw e10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x00ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00af  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bf A[Catch: j -> 0x0154, TryCatch #2 {j -> 0x0154, blocks: (B:26:0x009a, B:40:0x00c5, B:42:0x00d6, B:51:0x010b, B:53:0x0111, B:54:0x0117, B:55:0x0125, B:57:0x012b, B:43:0x00db, B:50:0x0104, B:63:0x0153, B:37:0x00ba, B:38:0x00bf, B:39:0x00c2, B:44:0x00ea, B:46:0x00f0), top: B:72:0x009a, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c2 A[Catch: j -> 0x0154, TryCatch #2 {j -> 0x0154, blocks: (B:26:0x009a, B:40:0x00c5, B:42:0x00d6, B:51:0x010b, B:53:0x0111, B:54:0x0117, B:55:0x0125, B:57:0x012b, B:43:0x00db, B:50:0x0104, B:63:0x0153, B:37:0x00ba, B:38:0x00bf, B:39:0x00c2, B:44:0x00ea, B:46:0x00f0), top: B:72:0x009a, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d6 A[Catch: j -> 0x0154, TryCatch #2 {j -> 0x0154, blocks: (B:26:0x009a, B:40:0x00c5, B:42:0x00d6, B:51:0x010b, B:53:0x0111, B:54:0x0117, B:55:0x0125, B:57:0x012b, B:43:0x00db, B:50:0x0104, B:63:0x0153, B:37:0x00ba, B:38:0x00bf, B:39:0x00c2, B:44:0x00ea, B:46:0x00f0), top: B:72:0x009a, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00db A[Catch: j -> 0x0154, TRY_LEAVE, TryCatch #2 {j -> 0x0154, blocks: (B:26:0x009a, B:40:0x00c5, B:42:0x00d6, B:51:0x010b, B:53:0x0111, B:54:0x0117, B:55:0x0125, B:57:0x012b, B:43:0x00db, B:50:0x0104, B:63:0x0153, B:37:0x00ba, B:38:0x00bf, B:39:0x00c2, B:44:0x00ea, B:46:0x00f0), top: B:72:0x009a, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00f0 A[Catch: all -> 0x0102, TRY_LEAVE, TryCatch #1 {all -> 0x0102, blocks: (B:44:0x00ea, B:46:0x00f0), top: B:70:0x00ea, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0111 A[Catch: j -> 0x0154, TryCatch #2 {j -> 0x0154, blocks: (B:26:0x009a, B:40:0x00c5, B:42:0x00d6, B:51:0x010b, B:53:0x0111, B:54:0x0117, B:55:0x0125, B:57:0x012b, B:43:0x00db, B:50:0x0104, B:63:0x0153, B:37:0x00ba, B:38:0x00bf, B:39:0x00c2, B:44:0x00ea, B:46:0x00f0), top: B:72:0x009a, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x012b A[Catch: j -> 0x0154, LOOP:0: B:55:0x0125->B:57:0x012b, LOOP_END, TRY_LEAVE, TryCatch #2 {j -> 0x0154, blocks: (B:26:0x009a, B:40:0x00c5, B:42:0x00d6, B:51:0x010b, B:53:0x0111, B:54:0x0117, B:55:0x0125, B:57:0x012b, B:43:0x00db, B:50:0x0104, B:63:0x0153, B:37:0x00ba, B:38:0x00bf, B:39:0x00c2, B:44:0x00ea, B:46:0x00f0), top: B:72:0x009a, inners: #1 }] */
    public static C2420y Y0(Context context) {
        F.d dVar;
        Uri uri;
        int iB;
        C2420y c2420yL;
        AbstractCollection<Map.Entry> abstractCollectionC;
        Uri uri2;
        PackageManager packageManager;
        String authority;
        Cursor cursorQuery;
        HashSet hashSet = new HashSet();
        F.d dVar2 = new F.d(8);
        String strO1 = o1();
        if (strO1.isEmpty()) {
            hashSet.add(com.google.android.gms.internal.atv_ads_framework.V0.SIGNAL_COLLECTION_ERROR_BUILD_FINGERPRINT_PREFIX);
        } else {
            dVar2.k("atv_bfp", strO1);
        }
        int iU = u(context);
        dVar2.k("atv_lt", AbstractC2090uc.i(iU));
        if (context.getPackageManager().hasSystemFeature("com.google.android.tv.operator_tier")) {
            dVar2.k("atv_ot", "1");
        }
        dVar2.k("atv_asv", "1.0.0");
        int iB2 = p156u.h.b(iU);
        com.google.android.gms.internal.atv_ads_framework.V0 v5 = com.google.android.gms.internal.atv_ads_framework.V0.SIGNAL_COLLECTION_ERROR_NAME_NOT_FOUND;
        try {
            if (iB2 != 0) {
                if (iB2 == 1) {
                    String strZ1 = z1(context, "com.google.android.apps.tv.launcherx");
                    if (strZ1.isEmpty()) {
                        hashSet.add(v5);
                    } else {
                        dVar2.k("atv_lxvc", strZ1);
                    }
                } else if (iB2 == 2) {
                }
                dVar = new F.d(8);
                uri = Uri.EMPTY;
                iB = p156u.h.b(u(context));
                if (iB == 0) {
                    uri = com.google.android.gms.internal.atv_ads_framework.O.f22282b;
                    uri2 = uri;
                    packageManager = context.getPackageManager();
                    authority = uri2.getAuthority();
                    r0(authority);
                    if (packageManager.resolveContentProvider(authority, 0) == null) {
                        c2420yL = dVar.l();
                    } else {
                        cursorQuery = context.getContentResolver().query(uri2, null, null, null, null);
                        r0(cursorQuery);
                        while (cursorQuery.moveToNext()) {
                            try {
                                String string = cursorQuery.getString(0);
                                r0(string);
                                String string2 = cursorQuery.getString(1);
                                r0(string2);
                                dVar.k(string, string2);
                            } catch (Throwable th) {
                                try {
                                    cursorQuery.close();
                                } catch (Throwable th2) {
                                    try {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                    } catch (Exception unused) {
                                    }
                                }
                                throw th;
                            }
                        }
                        cursorQuery.close();
                        c2420yL = dVar.l();
                    }
                } else {
                    if (iB != 1) {
                        uri = com.google.android.gms.internal.atv_ads_framework.O.f22281a;
                    } else if (iB == 2) {
                        uri = com.google.android.gms.internal.atv_ads_framework.O.f22282b;
                    } else if (iB != 3 || iB == 4 || iB == 5) {
                        c2420yL = dVar.l();
                    }
                    uri2 = uri;
                    packageManager = context.getPackageManager();
                    authority = uri2.getAuthority();
                    r0(authority);
                    if (packageManager.resolveContentProvider(authority, 0) == null) {
                        c2420yL = dVar.l();
                    } else {
                        cursorQuery = context.getContentResolver().query(uri2, null, null, null, null);
                        r0(cursorQuery);
                        while (cursorQuery.moveToNext()) {
                            String string3 = cursorQuery.getString(0);
                            r0(string3);
                            String string4 = cursorQuery.getString(1);
                            r0(string4);
                            dVar.k(string3, string4);
                        }
                        cursorQuery.close();
                        c2420yL = dVar.l();
                    }
                }
                abstractCollectionC = (com.google.android.gms.internal.atv_ads_framework.r) c2420yL.f22359H;
                if (abstractCollectionC == null) {
                    abstractCollectionC = c2420yL.c();
                    c2420yL.f22359H = abstractCollectionC;
                }
                dVar2.m(abstractCollectionC.size() + dVar2.f2961H);
                for (Map.Entry entry : abstractCollectionC) {
                    dVar2.k(entry.getKey(), entry.getValue());
                }
                C2420y c2420yL2 = dVar2.l();
                com.google.android.gms.internal.atv_ads_framework.x0 x0VarC = com.google.android.gms.internal.atv_ads_framework.x0.C(context);
                com.google.android.gms.internal.atv_ads_framework.W0 w0L = C2374a.l();
                w0L.d();
                C2374a.n((C2374a) w0L.f22292H, hashSet);
                C2374a c2374a = (C2374a) w0L.b();
                C2376b c2376bA0 = A0((Context) x0VarC.f22391I);
                c2376bA0.d();
                C2378c.n((C2378c) c2376bA0.f22292H, c2374a);
                x0VarC.H((C2378c) c2376bA0.b());
                return c2420yL2;
            }
            String strZ2 = z1(context, "com.google.android.tvlauncher");
            if (strZ2.isEmpty()) {
                hashSet.add(v5);
            } else {
                dVar2.k("atv_tlvc", strZ2);
            }
            dVar = new F.d(8);
            uri = Uri.EMPTY;
            iB = p156u.h.b(u(context));
            if (iB == 0) {
                uri = com.google.android.gms.internal.atv_ads_framework.O.f22282b;
                uri2 = uri;
                packageManager = context.getPackageManager();
                authority = uri2.getAuthority();
                r0(authority);
                if (packageManager.resolveContentProvider(authority, 0) == null) {
                    c2420yL = dVar.l();
                } else {
                    cursorQuery = context.getContentResolver().query(uri2, null, null, null, null);
                    r0(cursorQuery);
                    while (cursorQuery.moveToNext()) {
                        String string5 = cursorQuery.getString(0);
                        r0(string5);
                        String string6 = cursorQuery.getString(1);
                        r0(string6);
                        dVar.k(string5, string6);
                    }
                    cursorQuery.close();
                    c2420yL = dVar.l();
                }
            } else {
                if (iB != 1) {
                    uri = com.google.android.gms.internal.atv_ads_framework.O.f22281a;
                } else if (iB == 2) {
                    if (iB != 3) {
                    }
                    c2420yL = dVar.l();
                } else {
                    uri = com.google.android.gms.internal.atv_ads_framework.O.f22282b;
                }
                uri2 = uri;
                packageManager = context.getPackageManager();
                authority = uri2.getAuthority();
                r0(authority);
                if (packageManager.resolveContentProvider(authority, 0) == null) {
                    c2420yL = dVar.l();
                } else {
                    cursorQuery = context.getContentResolver().query(uri2, null, null, null, null);
                    r0(cursorQuery);
                    while (cursorQuery.moveToNext()) {
                        String string7 = cursorQuery.getString(0);
                        r0(string7);
                        String string8 = cursorQuery.getString(1);
                        r0(string8);
                        dVar.k(string7, string8);
                    }
                    cursorQuery.close();
                    c2420yL = dVar.l();
                }
            }
            abstractCollectionC = (com.google.android.gms.internal.atv_ads_framework.r) c2420yL.f22359H;
            if (abstractCollectionC == null) {
                abstractCollectionC = c2420yL.c();
                c2420yL.f22359H = abstractCollectionC;
            }
            dVar2.m(abstractCollectionC.size() + dVar2.f2961H);
            while (r0.hasNext()) {
                dVar2.k(entry.getKey(), entry.getValue());
            }
        } catch (C2392j unused2) {
            hashSet.add(com.google.android.gms.internal.atv_ads_framework.V0.SIGNAL_COLLECTION_ERROR_NULL_CONTENT_PROVIDER_DATA);
        }
        String strZ3 = z1(context, "com.google.android.tvrecommendations");
        if (strZ3.isEmpty()) {
            hashSet.add(v5);
        } else {
            dVar2.k("atv_csvc", strZ3);
        }
        C2420y c2420yL3 = dVar2.l();
        com.google.android.gms.internal.atv_ads_framework.x0 x0VarC2 = com.google.android.gms.internal.atv_ads_framework.x0.C(context);
        com.google.android.gms.internal.atv_ads_framework.W0 w0L2 = C2374a.l();
        w0L2.d();
        C2374a.n((C2374a) w0L2.f22292H, hashSet);
        C2374a c2374a2 = (C2374a) w0L2.b();
        C2376b c2376bA1 = A0((Context) x0VarC2.f22391I);
        c2376bA1.d();
        C2378c.n((C2378c) c2376bA1.f22292H, c2374a2);
        x0VarC2.H((C2378c) c2376bA1.b());
        return c2420yL3;
    }

    public static int Y1(Object obj, InterfaceC1098bI interfaceC1098bI, byte[] bArr, int i8, int i9, int i10, SG sg) throws AH {
        PH ph = (PH) interfaceC1098bI;
        int i11 = sg.f16420d + 1;
        sg.f16420d = i11;
        if (i11 >= 100) {
            throw new AH("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iT = ph.t(obj, bArr, i8, i9, i10, sg);
        sg.f16420d--;
        sg.f16419c = obj;
        return iT;
    }

    public static void Z(C2246xc c2246xc) {
        AC ac;
        ArrayList arrayList = new ArrayList();
        C1352gE c1352gE = C1352gE.f18916b;
        Iterator it = ((Map) c2246xc.f21882H).values().iterator();
        while (it.hasNext()) {
            for (DE de : (List) it.next()) {
                int i8 = de.f12792e - 2;
                if (i8 == 1) {
                    ac = AC.f11989b;
                } else if (i8 == 2) {
                    ac = AC.f11990c;
                } else {
                    if (i8 != 3) {
                        throw new IllegalStateException("Unknown key status");
                    }
                    ac = AC.f11991d;
                }
                String strSubstring = de.f12791d;
                if (strSubstring.startsWith("type.googleapis.com/google.crypto.")) {
                    strSubstring = strSubstring.substring(34);
                }
                arrayList.add(new C1404hE(ac, de.f12790c, strSubstring, de.f12789b.name()));
            }
        }
        DE de2 = (DE) c2246xc.f21883I;
        Integer numValueOf = de2 != null ? Integer.valueOf(de2.f12790c) : null;
        if (numValueOf != null) {
            try {
                int iIntValue = numValueOf.intValue();
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    int i10 = ((C1404hE) arrayList.get(i9)).f19068b;
                    i9++;
                    if (i10 == iIntValue) {
                    }
                }
                throw new GeneralSecurityException("primary key ID is not present in entries");
            } catch (GeneralSecurityException e8) {
                throw new IllegalStateException(e8);
            }
        }
        Collections.unmodifiableList(arrayList);
    }

    public static InterfaceC2603n Z0(C2543d c2543d, p096m2.i iVar, ArrayList arrayList, boolean z7) {
        InterfaceC2603n interfaceC2603nA;
        R1("reduce", 1, arrayList);
        U1("reduce", 2, arrayList);
        InterfaceC2603n interfaceC2603nT = iVar.t((InterfaceC2603n) arrayList.get(0));
        if (!(interfaceC2603nT instanceof AbstractC2567h)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (arrayList.size() == 2) {
            interfaceC2603nA = iVar.t((InterfaceC2603n) arrayList.get(1));
            if (interfaceC2603nA instanceof C2555f) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (c2543d.n() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            interfaceC2603nA = null;
        }
        AbstractC2567h abstractC2567h = (AbstractC2567h) interfaceC2603nT;
        int iN = c2543d.n();
        int i8 = z7 ? 0 : iN - 1;
        int i9 = z7 ? iN - 1 : 0;
        int i10 = true == z7 ? 1 : -1;
        if (interfaceC2603nA == null) {
            interfaceC2603nA = c2543d.o(i8);
            i8 += i10;
        }
        while ((i9 - i8) * i10 >= 0) {
            if (c2543d.u(i8)) {
                interfaceC2603nA = abstractC2567h.a(iVar, Arrays.asList(interfaceC2603nA, c2543d.o(i8), new C2561g(Double.valueOf(i8)), c2543d));
                if (interfaceC2603nA instanceof C2555f) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                i8 += i10;
            } else {
                i8 += i10;
            }
        }
        return interfaceC2603nA;
    }

    public static boolean Z1(InterfaceC2603n interfaceC2603n, InterfaceC2603n interfaceC2603n2) {
        if (!interfaceC2603n.getClass().equals(interfaceC2603n2.getClass())) {
            return false;
        }
        if ((interfaceC2603n instanceof com.google.android.gms.internal.measurement.r) || (interfaceC2603n instanceof C2591l)) {
            return true;
        }
        if (interfaceC2603n instanceof C2561g) {
            if (Double.isNaN(interfaceC2603n.zzh().doubleValue()) || Double.isNaN(interfaceC2603n2.zzh().doubleValue())) {
                return false;
            }
            return interfaceC2603n.zzh().equals(interfaceC2603n2.zzh());
        }
        if (interfaceC2603n instanceof C2619q) {
            return interfaceC2603n.zzi().equals(interfaceC2603n2.zzi());
        }
        if (interfaceC2603n instanceof C2549e) {
            return interfaceC2603n.zzg().equals(interfaceC2603n2.zzg());
        }
        return interfaceC2603n == interfaceC2603n2;
    }

    public static Object a(p052g4.h hVar) throws InterruptedException {
        com.bumptech.glide.c.g("Must not be called on the main application thread");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null && Objects.equals(looperMyLooper.getThread().getName(), "GoogleApiHandler")) {
            throw new IllegalStateException("Must not be called on GoogleApiHandler thread.");
        }
        com.bumptech.glide.c.i(hVar, "Task must not be null");
        if (hVar.g()) {
            return H(hVar);
        }
        p052g4.k kVar = new p052g4.k(0);
        ExecutorC3006v executorC3006v = p052g4.j.f25347b;
        hVar.c(executorC3006v, kVar);
        hVar.b(executorC3006v, kVar);
        p052g4.r rVar = (p052g4.r) hVar;
        rVar.f25370b.i(new p052g4.o(executorC3006v, (p052g4.c) kVar));
        rVar.o();
        Object obj = kVar.f25349H;
        switch (2) {
            case 2:
                ((CountDownLatch) obj).await();
                break;
            default:
                ((p052g4.r) obj).m(null);
                break;
        }
        return H(hVar);
    }

    public static void a0(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
        }
    }

    public static Object a1(Class cls, String str, p096m2.l... lVarArr) {
        int length = lVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        for (int i8 = 0; i8 < lVarArr.length; i8++) {
            p096m2.l lVar = lVarArr[i8];
            lVar.getClass();
            clsArr[i8] = (Class) lVar.f27231H;
            objArr[i8] = lVarArr[i8].f27232I;
        }
        return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
    }

    public static int a2(Object obj, InterfaceC1098bI interfaceC1098bI, byte[] bArr, int i8, int i9, SG sg) throws AH {
        int iQ1 = i8 + 1;
        int i10 = bArr[i8];
        if (i10 < 0) {
            iQ1 = Q1(i10, bArr, iQ1, sg);
            i10 = sg.f16417a;
        }
        int i11 = iQ1;
        if (i10 < 0 || i10 > i9 - i11) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i12 = sg.f16420d + 1;
        sg.f16420d = i12;
        if (i12 >= 100) {
            throw new AH("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i13 = i10 + i11;
        interfaceC1098bI.c(obj, bArr, i11, i13, sg);
        sg.f16420d--;
        sg.f16419c = obj;
        return i13;
    }

    public static Object b(p052g4.h hVar, long j8, TimeUnit timeUnit) throws TimeoutException {
        com.bumptech.glide.c.g("Must not be called on the main application thread");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null && Objects.equals(looperMyLooper.getThread().getName(), "GoogleApiHandler")) {
            throw new IllegalStateException("Must not be called on GoogleApiHandler thread.");
        }
        com.bumptech.glide.c.i(hVar, "Task must not be null");
        com.bumptech.glide.c.i(timeUnit, "TimeUnit must not be null");
        if (hVar.g()) {
            return H(hVar);
        }
        p052g4.k kVar = new p052g4.k(0);
        ExecutorC3006v executorC3006v = p052g4.j.f25347b;
        hVar.c(executorC3006v, kVar);
        hVar.b(executorC3006v, kVar);
        p052g4.r rVar = (p052g4.r) hVar;
        rVar.f25370b.i(new p052g4.o(executorC3006v, (p052g4.c) kVar));
        rVar.o();
        if (((CountDownLatch) kVar.f25349H).await(j8, timeUnit)) {
            return H(hVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static void b0(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static String b1(Context context, String str) {
        com.bumptech.glide.c.h(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str)) {
            str = K(context);
        }
        int identifier = resources.getIdentifier("google_app_id", "string", str);
        if (identifier == 0) {
            return null;
        }
        try {
            return resources.getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static KB b2(D4.b bVar, InterfaceC2165vz interfaceC2165vz, Executor executor) {
        KB kb = new KB(bVar, interfaceC2165vz);
        bVar.a(kb, c1(executor, kb));
        return kb;
    }

    public static p052g4.r c(Callable callable, Executor executor) {
        com.bumptech.glide.c.i(executor, "Executor must not be null");
        com.bumptech.glide.c.i(callable, "Callback must not be null");
        p052g4.r rVar = new p052g4.r();
        executor.execute(new K3.V(rVar, callable, 25));
        return rVar;
    }

    public static final void c0(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i8) {
        if (i8 < 0 || byteBuffer2.remaining() < i8 || byteBuffer3.remaining() < i8 || byteBuffer.remaining() < i8) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
        }
    }

    public static Executor c1(Executor executor, ZB zb) {
        executor.getClass();
        return executor == XB.f17385G ? executor : new ExecutorC1608lC(executor, zb);
    }

    public static long c2(byte[] bArr, int i8) {
        return (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48) | ((((long) bArr[i8 + 7]) & 255) << 56);
    }

    public static void d(int i8, Object[] objArr) {
        for (int i9 = 0; i9 < i8; i9++) {
            if (objArr[i9] == null) {
                throw new NullPointerException(p000a.r.f("at index ", i9));
            }
        }
    }

    public static /* synthetic */ void d0(AtomicReference atomicReference, RuntimeException runtimeException) {
        while (!atomicReference.compareAndSet(null, runtimeException)) {
            if (atomicReference.get() != null && atomicReference.get() != null) {
                return;
            }
        }
    }

    public static void d1(byte b8, byte b9, char[] cArr, int i8) throws AH {
        if (b8 < -62 || K1(b9)) {
            throw new AH("Protocol message had invalid UTF-8.");
        }
        cArr[i8] = (char) (((b8 & 31) << 6) | (b9 & 63));
    }

    public static JB d2(D4.b bVar, RB rb, Executor executor) {
        int i8 = LB.f14480P;
        executor.getClass();
        JB jb = new JB(bVar, rb);
        bVar.a(jb, c1(executor, jb));
        return jb;
    }

    public static void e(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }

    public static boolean e0() {
        if (Build.VERSION.SDK_INT < 31) {
            return Build.DEVICE.startsWith("generic");
        }
        String str = Build.FINGERPRINT;
        return str.contains("generic") || str.contains("emulator") || Build.HARDWARE.contains("ranchu");
    }

    public static void e1(int i8, int i9, int i10) {
        String strP1;
        if (i8 < 0 || i9 < i8 || i9 > i10) {
            if (i8 < 0 || i8 > i10) {
                strP1 = p1(i8, i10, "start index");
            } else {
                strP1 = (i9 < 0 || i9 > i10) ? p1(i9, i10, "end index") : Q("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i8));
            }
            throw new IndexOutOfBoundsException(strP1);
        }
    }

    public static D4.b e2(D4.b bVar, long j8, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (bVar.isDone()) {
            return bVar;
        }
        C1919rC c1919rC = new C1919rC();
        c1919rC.f20690N = bVar;
        RunnableC1026Zn runnableC1026Zn = new RunnableC1026Zn(c1919rC, 19);
        c1919rC.f20691O = scheduledExecutorService.schedule(runnableC1026Zn, j8, timeUnit);
        bVar.a(runnableC1026Zn, XB.f17385G);
        return c1919rC;
    }

    public static void f(long j8, String str) {
        if (j8 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j8 + ") must be >= 0");
    }

    public static boolean f0(int i8) {
        Boolean bool;
        if (i8 - 1 == 0) {
            return !UD.a();
        }
        if (UD.a()) {
            try {
                bool = (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
                UD.f16817a.logp(Level.INFO, "com.google.crypto.tink.config.internal.TinkFipsUtil", "checkConscryptIsAvailableAndUsesFipsBoringSsl", "Conscrypt is not available or does not support checking for FIPS build.");
                bool = Boolean.FALSE;
            }
            if (!bool.booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static void f1(Class cls, Object obj) {
        if (obj == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }

    public static Object f2(Future future) {
        if (future.isDone()) {
            return J(future);
        }
        throw new IllegalStateException(Q3.b.I("Future was expected to be done: %s", future));
    }

    public static void g(int i8, String str) {
        if (i8 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i8);
    }

    public static boolean g0(int i8, boolean z7) {
        int i9 = i8 & 7;
        if (i9 != 4) {
            return z7 && i9 == 3;
        }
        return true;
    }

    public static void g1(List list, InterfaceC2321yz interfaceC2321yz, int i8, int i9) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i9) {
                break;
            } else if (interfaceC2321yz.zza(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i9--;
            if (i9 < i8) {
                return;
            } else {
                list.remove(i9);
            }
        }
    }

    public static Object g2(D4.b bVar) {
        try {
            return J(bVar);
        } catch (ExecutionException e8) {
            Throwable cause = e8.getCause();
            if (cause instanceof Error) {
                throw new YB((Error) cause);
            }
            throw new Y.r(4, cause);
        }
    }

    public static void h(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static /* synthetic */ boolean h0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, Object obj2, Object obj3) {
        while (!atomicReferenceFieldUpdater.compareAndSet(obj, obj2, obj3)) {
            if (atomicReferenceFieldUpdater.get(obj) != obj2 && atomicReferenceFieldUpdater.get(obj) != obj2) {
                return false;
            }
        }
        return true;
    }

    public static void h1(p096m2.i iVar) {
        int iV0 = v0(iVar.x("runtime.counter").zzh().doubleValue() + 1.0d);
        if (iV0 > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        iVar.A("runtime.counter", new C2561g(Double.valueOf(iV0)));
    }

    public static void h2(D4.b bVar, InterfaceC1195dC interfaceC1195dC, Executor executor) {
        interfaceC1195dC.getClass();
        bVar.a(new RunnableC1170co(18, bVar, interfaceC1195dC), executor);
    }

    public static void i(boolean z7) {
        if (!z7) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    public static byte[] i0(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Expected a string of even length");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i8 = 0; i8 < length; i8++) {
            int i9 = i8 + i8;
            int iDigit = Character.digit(str.charAt(i9), 16);
            int iDigit2 = Character.digit(str.charAt(i9 + 1), 16);
            if (iDigit == -1 || iDigit2 == -1) {
                throw new IllegalArgumentException("input is not hexadecimal");
            }
            bArr[i8] = (byte) ((iDigit * 16) + iDigit2);
        }
        return bArr;
    }

    public static final byte[] i1(int i8, byte[] bArr, byte[] bArr2) {
        if (bArr.length - 16 < i8) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        byte[] bArr3 = new byte[16];
        for (int i9 = 0; i9 < 16; i9++) {
            bArr3[i9] = (byte) (bArr[i9 + i8] ^ bArr2[i9]);
        }
        return bArr3;
    }

    public static p052g4.r j(Exception exc) {
        p052g4.r rVar = new p052g4.r();
        rVar.j(exc);
        return rVar;
    }

    public static byte[] j0(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("value must be a block.");
        }
        byte[] bArr2 = new byte[16];
        int i8 = 0;
        while (i8 < 16) {
            int i9 = i8 + 1;
            byte b8 = bArr[i8];
            byte b9 = (byte) ((b8 + b8) & 254);
            bArr2[i8] = b9;
            if (i8 < 15) {
                bArr2[i8] = (byte) (((bArr[i9] >> 7) & 1) | b9);
            }
            i8 = i9;
        }
        bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
        return bArr2;
    }

    public static void j1(byte b8, byte b9, char[] cArr, int i8) throws com.google.android.gms.internal.measurement.B2 {
        if (b8 < -62 || B1(b9)) {
            throw new com.google.android.gms.internal.measurement.B2("Protocol message had invalid UTF-8.");
        }
        cArr[i8] = (char) (((b8 & 31) << 6) | (b9 & 63));
    }

    public static p052g4.r k(Object obj) {
        p052g4.r rVar = new p052g4.r();
        rVar.k(obj);
        return rVar;
    }

    public static byte[] k0(byte[] bArr, byte[] bArr2) {
        long jW0 = W0(0, bArr) & 67108863;
        long jW1 = (W0(3, bArr) >> 2) & 67108611;
        long jW2 = (W0(6, bArr) >> 4) & 67092735;
        long jW3 = (W0(9, bArr) >> 6) & 66076671;
        long jW4 = (W0(12, bArr) >> 8) & 1048575;
        int i8 = 17;
        byte[] bArr3 = new byte[17];
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        int i9 = 0;
        while (true) {
            int length = bArr2.length;
            if (i9 >= length) {
                long j13 = j8 + (j9 >> 26);
                long j14 = j13 & 67108863;
                long j15 = j10 + (j13 >> 26);
                long j16 = j15 & 67108863;
                long j17 = j11 + (j15 >> 26);
                long j18 = j17 & 67108863;
                long j19 = ((j17 >> 26) * 5) + j12;
                long j20 = j19 >> 26;
                long j21 = j19 & 67108863;
                long j22 = j21 + 5;
                long j23 = (j9 & 67108863) + j20;
                long j24 = j23 + (j22 >> 26);
                long j25 = j14 + (j24 >> 26);
                long j26 = j16 + (j25 >> 26);
                long j27 = (j18 + (j26 >> 26)) - 67108864;
                long j28 = j27 >> 63;
                long j29 = ~j28;
                long j30 = (j23 & j28) | (j24 & 67108863 & j29);
                long j31 = (j14 & j28) | (j25 & 67108863 & j29);
                long j32 = (j16 & j28) | (j26 & 67108863 & j29);
                long j33 = (j18 & j28) | (j27 & j29);
                long jW5 = W0(16, bArr) + (((j21 & j28) | (j22 & 67108863 & j29) | (j30 << 26)) & 4294967295L);
                long jW6 = W0(20, bArr) + (((j30 >> 6) | (j31 << 20)) & 4294967295L);
                long jW7 = W0(24, bArr) + (((j31 >> 12) | (j32 << 14)) & 4294967295L);
                long jW8 = W0(28, bArr) + (((j32 >> 18) | (j33 << 8)) & 4294967295L);
                byte[] bArr4 = new byte[16];
                r1(0, jW5 & 4294967295L, bArr4);
                long j34 = jW6 + (jW5 >> 32);
                r1(4, j34 & 4294967295L, bArr4);
                long j35 = jW7 + (j34 >> 32);
                r1(8, j35 & 4294967295L, bArr4);
                r1(12, (jW8 + (j35 >> 32)) & 4294967295L, bArr4);
                return bArr4;
            }
            int iMin = Math.min(16, length - i9);
            System.arraycopy(bArr2, i9, bArr3, 0, iMin);
            bArr3[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr3, iMin + 1, i8, (byte) 0);
            }
            long j36 = jW4 * 5;
            long j37 = jW3 * 5;
            long j38 = jW2 * 5;
            long jW9 = j12 + (W0(0, bArr3) & 67108863);
            long jW10 = j9 + ((W0(3, bArr3) >> 2) & 67108863);
            long jW11 = j8 + ((W0(6, bArr3) >> 4) & 67108863);
            long jW12 = j10 + ((W0(9, bArr3) >> 6) & 67108863);
            long jW13 = j11 + (((W0(12, bArr3) >> 8) & 67108863) | ((long) (bArr3[16] << 24)));
            long j39 = jW11 * jW0;
            long j40 = jW11 * jW1;
            long j41 = jW12 * jW0;
            long j42 = jW11 * jW2;
            long j43 = jW12 * jW1;
            long j44 = jW13 * jW0;
            long j45 = (jW1 * 5 * jW13) + (jW12 * j38) + (jW11 * j37) + (jW10 * j36) + (jW9 * jW0);
            long j46 = jW11 * j36;
            long j47 = j38 * jW13;
            long j48 = j47 + (jW12 * j37) + j46 + (jW9 * jW1) + (jW10 * jW0) + (j45 >> 26);
            long j49 = jW12 * j36;
            long j50 = j37 * jW13;
            long j51 = j50 + j49 + (jW9 * jW2) + (jW10 * jW1) + j39 + (j48 >> 26);
            long j52 = jW13 * j36;
            long j53 = j52 + (jW9 * jW3) + (jW10 * jW2) + j40 + j41 + (j51 >> 26);
            long j54 = j53 >> 26;
            long j55 = j53 & 67108863;
            long j56 = (jW9 * jW4) + (jW10 * jW3) + j42 + j43 + j44 + j54;
            long j57 = ((j56 >> 26) * 5) + (j45 & 67108863);
            j9 = (j48 & 67108863) + (j57 >> 26);
            i9 += 16;
            i8 = 17;
            j11 = j56 & 67108863;
            j12 = j57 & 67108863;
            j8 = j51 & 67108863;
            j10 = j55;
        }
    }

    public static void k1(int i8, int i9, int i10) {
        String strT1;
        if (i8 < 0 || i9 < i8 || i9 > i10) {
            if (i8 < 0 || i8 > i10) {
                strT1 = t1(i8, i10, "start index");
            } else {
                strT1 = (i9 < 0 || i9 > i10) ? t1(i9, i10, "end index") : o0("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i8));
            }
            throw new IndexOutOfBoundsException(strT1);
        }
    }

    public static ColorStateList l(Context context, TypedArray typedArray, int i8) {
        int resourceId;
        ColorStateList colorStateListG;
        return (!typedArray.hasValue(i8) || (resourceId = typedArray.getResourceId(i8, 0)) == 0 || (colorStateListG = J6.r.g(context, resourceId)) == null) ? typedArray.getColorStateList(i8) : colorStateListG;
    }

    public static int l0(int i8) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i8) * (-862048943)), 15)) * 461845907);
    }

    public static int l1(byte[] bArr) {
        int length = bArr.length;
        if (length >= 4) {
            return (bArr[3] & 255) | ((bArr[2] & 255) << 8) | (bArr[0] << 24) | ((bArr[1] & 255) << 16);
        }
        throw new IllegalArgumentException(Q3.b.I("array too small: %s < %s", Integer.valueOf(length), 4));
    }

    public static PorterDuff.Mode m(int i8, PorterDuff.Mode mode) {
        if (i8 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i8 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i8 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i8) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00db  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e3  */
    public static String m0(Context context) {
        String str = f12726j;
        if (str != null) {
            return str;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        String str2 = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            f12726j = null;
        } else if (arrayList.size() == 1) {
            f12726j = (String) arrayList.get(0);
        } else if (!TextUtils.isEmpty(str2)) {
            try {
                List<ResolveInfo> listQueryIntentActivities2 = context.getPackageManager().queryIntentActivities(intent, 64);
                if (listQueryIntentActivities2 != null && listQueryIntentActivities2.size() != 0) {
                    Iterator<ResolveInfo> it = listQueryIntentActivities2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            ResolveInfo next = it.next();
                            IntentFilter intentFilter = next.filter;
                            if (intentFilter == null || intentFilter.countDataAuthorities() == 0 || intentFilter.countDataPaths() == 0 || next.activityInfo == null) {
                            }
                        } else if (arrayList.contains(str2)) {
                            f12726j = str2;
                        }
                        if (arrayList.contains("com.android.chrome")) {
                            f12726j = "com.android.chrome";
                        } else if (arrayList.contains("com.chrome.beta")) {
                            f12726j = "com.chrome.beta";
                        } else if (arrayList.contains("com.chrome.dev")) {
                            f12726j = "com.chrome.dev";
                        }
                    }
                } else if (arrayList.contains(str2)) {
                    f12726j = str2;
                } else if (arrayList.contains("com.android.chrome")) {
                    f12726j = "com.android.chrome";
                } else if (arrayList.contains("com.chrome.beta")) {
                    f12726j = "com.chrome.beta";
                } else if (arrayList.contains("com.chrome.dev")) {
                    f12726j = "com.chrome.dev";
                }
            } catch (RuntimeException unused) {
                Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
            }
        } else if (arrayList.contains("com.android.chrome")) {
            f12726j = "com.android.chrome";
        } else if (arrayList.contains("com.chrome.beta")) {
            f12726j = "com.chrome.beta";
        } else if (arrayList.contains("com.chrome.dev")) {
            f12726j = "com.chrome.dev";
        }
        return f12726j;
    }

    public static long m1(long j8, long j9) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(~j9) + Long.numberOfLeadingZeros(j9) + Long.numberOfLeadingZeros(~j8) + Long.numberOfLeadingZeros(j8);
        if (iNumberOfLeadingZeros > 65) {
            return j8 * j9;
        }
        long j10 = ((j8 ^ j9) >>> 63) + Long.MAX_VALUE;
        if ((iNumberOfLeadingZeros < 64) || ((j9 == Long.MIN_VALUE) & (j8 < 0))) {
            return j10;
        }
        long j11 = j8 * j9;
        return (j8 == 0 || j11 / j8 == j9) ? j11 : j10;
    }

    public static p113o3.G n(Object obj) {
        return new p113o3.G(obj.getClass().getSimpleName(), 0);
    }

    public static String n0(String str) {
        int length = str.length();
        int i8 = 0;
        while (i8 < length) {
            char cCharAt = str.charAt(i8);
            if (cCharAt >= 'a' && cCharAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i8 < length) {
                    char c8 = charArray[i8];
                    if (c8 >= 'a' && c8 <= 'z') {
                        charArray[i8] = (char) (c8 ^ ' ');
                    }
                    i8++;
                }
                return String.valueOf(charArray);
            }
            i8++;
        }
        return str;
    }

    public static Object n1(int i8) {
        if (i8 < 2 || i8 > 1073741824 || Integer.highestOneBit(i8) != i8) {
            throw new IllegalArgumentException(p000a.r.f("must be power of 2 between 2^1 and 2^30: ", i8));
        }
        if (i8 <= 256) {
            return new byte[i8];
        }
        return i8 <= 65536 ? new short[i8] : new int[i8];
    }

    public static p052g4.r o(List list) {
        p052g4.r rVar;
        p052g4.q qVar = p052g4.j.f25346a;
        if (list == null || list.isEmpty()) {
            return k(Collections.emptyList());
        }
        if (list.isEmpty()) {
            rVar = k(null);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((p052g4.h) it.next()) == null) {
                    throw new NullPointerException("null tasks are not accepted");
                }
            }
            rVar = new p052g4.r();
            p052g4.l lVar = new p052g4.l(list.size(), rVar);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                p052g4.h hVar = (p052g4.h) it2.next();
                ExecutorC3006v executorC3006v = p052g4.j.f25347b;
                hVar.c(executorC3006v, lVar);
                hVar.b(executorC3006v, lVar);
                p052g4.r rVar2 = (p052g4.r) hVar;
                rVar2.f25370b.i(new p052g4.o(executorC3006v, (p052g4.c) lVar));
                rVar2.o();
            }
        }
        return rVar.i(qVar, new p052g4.k(list, 1));
    }

    public static String o0(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strC;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            length = objArr.length;
            if (i9 >= length) {
                break;
            }
            Object obj = objArr[i9];
            if (obj == null) {
                strC = "null";
            } else {
                try {
                    strC = obj.toString();
                } catch (Exception e8) {
                    String strL = com.google.protobuf.U2.l(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strL), (Throwable) e8);
                    strC = A0.O.C("<", strL, " threw ", e8.getClass().getName(), ">");
                }
            }
            objArr[i9] = strC;
            i9++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i10 = 0;
        while (true) {
            length2 = objArr.length;
            if (i8 >= length2 || (iIndexOf = str.indexOf("%s", i10)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) str, i10, str.length());
        if (i8 < length2) {
            sb.append(" [");
            sb.append(objArr[i8]);
            for (int i11 = i8 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0049  */
    public static String o1() {
        String str;
        String str2 = Build.FINGERPRINT;
        if (TextUtils.isEmpty(str2)) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            com.google.android.gms.internal.atv_ads_framework.x0 x0Var = new com.google.android.gms.internal.atv_ads_framework.x0(new C0091g(new C2380d(), 25));
            str2.getClass();
            C2388h c2388h = new C2388h(x0Var, str2);
            ArrayList arrayList = new ArrayList();
            while (c2388h.hasNext()) {
                arrayList.add((String) c2388h.next());
            }
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            if (listUnmodifiableList.size() == 3) {
                str = (String) listUnmodifiableList.get(0);
            } else {
                str = HttpUrl.FRAGMENT_ENCODE_SET;
            }
        }
        return P(str);
    }

    public static p052g4.r p(p052g4.h... hVarArr) {
        return hVarArr.length == 0 ? k(Collections.emptyList()) : o(Arrays.asList(hVarArr));
    }

    public static void p0(byte b8, byte b9, byte b10, byte b11, char[] cArr, int i8) throws com.google.android.gms.internal.measurement.B2 {
        if (!B1(b9)) {
            if ((((b9 + 112) + (b8 << 28)) >> 30) == 0 && !B1(b10) && !B1(b11)) {
                int i9 = ((b8 & 7) << 18) | ((b9 & 63) << 12) | ((b10 & 63) << 6) | (b11 & 63);
                cArr[i8] = (char) ((i9 >>> 10) + 55232);
                cArr[i8 + 1] = (char) ((i9 & 1023) + 56320);
                return;
            }
        }
        throw new com.google.android.gms.internal.measurement.B2("Protocol message had invalid UTF-8.");
    }

    public static String p1(int i8, int i9, String str) {
        if (i8 < 0) {
            return Q("%s (%s) must not be negative", str, Integer.valueOf(i8));
        }
        if (i9 >= 0) {
            return Q("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
    }

    public static p052g4.r q(p052g4.h hVar, long j8, TimeUnit timeUnit) {
        com.bumptech.glide.c.i(hVar, "Task must not be null");
        int i8 = 1;
        com.bumptech.glide.c.a("Timeout must be positive", j8 > 0);
        com.bumptech.glide.c.i(timeUnit, "TimeUnit must not be null");
        p052g4.k kVar = new p052g4.k();
        p052g4.i iVar = new p052g4.i(kVar);
        X3.d dVar = new X3.d(Looper.getMainLooper(), 3);
        dVar.postDelayed(new p052g4.n(iVar, i8), timeUnit.toMillis(j8));
        hVar.a(new C1093bD(dVar, iVar, kVar, 17));
        return iVar.f25345a;
    }

    public static void q0(int i8, int i9) {
        String strQ;
        if (i8 < 0 || i8 >= i9) {
            if (i8 < 0) {
                strQ = Q("%s (%s) must not be negative", "index", Integer.valueOf(i8));
            } else {
                if (i9 < 0) {
                    throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
                }
                strQ = Q("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i8), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strQ);
        }
    }

    public static void q1(int i8, int i9, int i10) {
        String strY1;
        if (i8 < 0 || i9 < i8 || i9 > i10) {
            if (i8 < 0 || i8 > i10) {
                strY1 = y1(i8, i10, "start index");
            } else {
                strY1 = (i9 < 0 || i9 > i10) ? y1(i9, i10, "end index") : D0("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i8));
            }
            throw new IndexOutOfBoundsException(strY1);
        }
    }

    public static double r(double d6) {
        if (Double.isNaN(d6)) {
            return 0.0d;
        }
        if (Double.isInfinite(d6) || d6 == 0.0d || d6 == 0.0d) {
            return d6;
        }
        return ((double) (d6 > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d6));
    }

    public static void r0(Object obj) {
        Object[] objArr = new Object[0];
        if (obj == null) {
            throw new C2392j(Q("expected a non-null reference", objArr));
        }
    }

    public static void r1(int i8, long j8, byte[] bArr) {
        for (int i9 = 0; i9 < 4; i9++) {
            bArr[i8 + i9] = (byte) (255 & j8);
            j8 >>= 8;
        }
    }

    public static int s(int i8) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i8) * (-862048943)), 15)) * 461845907);
    }

    public static /* synthetic */ boolean s0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, Object obj2, Object obj3) {
        while (!atomicReferenceFieldUpdater.compareAndSet(obj, obj2, obj3)) {
            if (atomicReferenceFieldUpdater.get(obj) != obj2 && atomicReferenceFieldUpdater.get(obj) != obj2) {
                return false;
            }
        }
        return true;
    }

    public static /* bridge */ /* synthetic */ boolean s1(byte b8) {
        return b8 >= 0;
    }

    public static int t(int i8, int i9) {
        long j8 = ((long) i8) + ((long) i9);
        int i10 = (int) j8;
        if (j8 == i10) {
            return i10;
        }
        throw new ArithmeticException("overflow: checkedAdd(" + i8 + ", " + i9 + ")");
    }

    public static int t0(int i8) {
        if (i8 == 0) {
            return 1;
        }
        if (i8 == 1) {
            return 2;
        }
        if (i8 == 2) {
            return 3;
        }
        if (i8 != 3) {
            return i8 != 4 ? 0 : 5;
        }
        return 4;
    }

    public static String t1(int i8, int i9, String str) {
        if (i8 < 0) {
            return o0("%s (%s) must not be negative", str, Integer.valueOf(i8));
        }
        if (i9 >= 0) {
            return o0("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
    }

    public static int u(Context context) {
        if (context.getPackageManager().hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE")) {
            return 2;
        }
        if (context.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv")) {
            return 5;
        }
        if (context.getPackageManager().hasSystemFeature("com.google.android.tv.custom_launcher") && L1(context, "com.google.android.tvrecommendations")) {
            return 3;
        }
        if (context.getPackageManager().hasSystemFeature("android.software.leanback") && L1(context, "com.google.android.tvlauncher")) {
            return 1;
        }
        return (context.getPackageManager().hasSystemFeature("android.software.leanback") && L1(context, "com.google.android.leanbacklauncher")) ? 4 : 6;
    }

    public static void u0(int i8, int i9) {
        String strO0;
        if (i8 < 0 || i8 >= i9) {
            if (i8 < 0) {
                strO0 = o0("%s (%s) must not be negative", "index", Integer.valueOf(i8));
            } else {
                if (i9 < 0) {
                    throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
                }
                strO0 = o0("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i8), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strO0);
        }
    }

    public static int u1(long j8) {
        if (j8 > 2147483647L) {
            return com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        if (j8 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j8;
    }

    public static int v(byte[] bArr, int i8, SG sg) throws AH {
        int iM1 = M1(bArr, i8, sg);
        int i9 = sg.f16417a;
        if (i9 < 0) {
            throw new AH("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i9 > bArr.length - iM1) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i9 == 0) {
            sg.f16419c = XG.f17401H;
            return iM1;
        }
        sg.f16419c = XG.y(iM1, bArr, i9);
        return iM1 + i9;
    }

    public static int v0(double d6) {
        if (Double.isNaN(d6) || Double.isInfinite(d6) || d6 == 0.0d) {
            return 0;
        }
        return (int) ((((double) (d6 > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d6))) % 4.294967296E9d);
    }

    public static int v1(InterfaceC1098bI interfaceC1098bI, int i8, byte[] bArr, int i9, int i10, InterfaceC2236xH interfaceC2236xH, SG sg) throws AH {
        AbstractC1873qH abstractC1873qHZze = interfaceC1098bI.zze();
        int iA2 = a2(abstractC1873qHZze, interfaceC1098bI, bArr, i9, i10, sg);
        interfaceC1098bI.zzf(abstractC1873qHZze);
        sg.f16419c = abstractC1873qHZze;
        interfaceC2236xH.add(abstractC1873qHZze);
        while (iA2 < i10) {
            int iM1 = M1(bArr, iA2, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            AbstractC1873qH abstractC1873qHZze2 = interfaceC1098bI.zze();
            int iA3 = a2(abstractC1873qHZze2, interfaceC1098bI, bArr, iM1, i10, sg);
            interfaceC1098bI.zzf(abstractC1873qHZze2);
            sg.f16419c = abstractC1873qHZze2;
            interfaceC2236xH.add(abstractC1873qHZze2);
            iA2 = iA3;
        }
        return iA2;
    }

    public static long w(double d6) {
        AbstractC2987b.B0("not a normal value", P0(d6));
        int exponent = Math.getExponent(d6);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d6) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits + jDoubleToRawLongBits : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static int w0(long j8) {
        int i8 = (int) j8;
        AbstractC2987b.C0(j8, "Out of range: %s", ((long) i8) == j8);
        return i8;
    }

    public static C1970sB w1(D4.b bVar, Class cls, InterfaceC2165vz interfaceC2165vz, Executor executor) {
        C1970sB c1970sB = new C1970sB(bVar, cls, interfaceC2165vz);
        bVar.a(c1970sB, c1(executor, c1970sB));
        return c1970sB;
    }

    public static long x(long j8, long j9) {
        long j10 = j8 + j9;
        if (((j8 ^ j9) < 0) || ((j8 ^ j10) >= 0)) {
            return j10;
        }
        throw new ArithmeticException(p000a.r.i(p148t.a.d("overflow: checkedAdd(", j8, ", "), j9, ")"));
    }

    public static int x0(Object obj, Object obj2, int i8, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iT = p113o3.r.t(obj);
        int i9 = iT & i8;
        int iV0 = V0(obj3, i9);
        if (iV0 != 0) {
            int i10 = ~i8;
            int i11 = iT & i10;
            int i12 = -1;
            while (true) {
                int i13 = iV0 - 1;
                int i14 = iArr[i13];
                int i15 = i14 & i8;
                if ((i14 & i10) != i11 || !com.google.android.gms.internal.measurement.H1.E(obj, objArr[i13]) || (objArr2 != null && !com.google.android.gms.internal.measurement.H1.E(obj2, objArr2[i13]))) {
                    if (i15 == 0) {
                        break;
                    }
                    i12 = i13;
                    iV0 = i15;
                } else {
                    if (i12 == -1) {
                        A1(i9, obj3, i15);
                    } else {
                        iArr[i12] = (iArr[i12] & i10) | (i15 & i8);
                    }
                    return i13;
                }
            }
        }
        return -1;
    }

    public static EnumC2648w x1(String str) {
        EnumC2648w enumC2648w = null;
        if (str != null && !str.isEmpty()) {
            enumC2648w = (EnumC2648w) EnumC2648w.f23371R0.get(Integer.valueOf(Integer.parseInt(str)));
        }
        if (enumC2648w != null) {
            return enumC2648w;
        }
        throw new IllegalArgumentException(p148t.a.c("Unsupported commandId ", str));
    }

    public static int y0(byte[] bArr, int i8) {
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        return ((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16);
    }

    public static String y1(int i8, int i9, String str) {
        if (i8 < 0) {
            return D0("%s (%s) must not be negative", str, Integer.valueOf(i8));
        }
        if (i9 >= 0) {
            return D0("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
    }

    public static C0432n z(Context context, String str) {
        String strConcat;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split(MqttTopic.TOPIC_LEVEL_SEPARATOR, -1);
        int length = strArrSplit.length;
        if (length == 1) {
            String strValueOf = String.valueOf(context.getPackageName());
            str2 = strArrSplit[0];
            strConcat = strValueOf.concat("_preferences");
        } else {
            if (length != 2) {
                return null;
            }
            strConcat = strArrSplit[0];
            str2 = strArrSplit[1];
        }
        if (TextUtils.isEmpty(strConcat) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new C0432n(strConcat, str2);
    }

    public static long z0(long j8, long j9, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j10 = j8 / j9;
        long j11 = j8 - (j9 * j10);
        if (j11 == 0) {
            return j10;
        }
        int i8 = ((int) ((j8 ^ j9) >> 63)) | 1;
        switch (AbstractC1763oB.f20249a[roundingMode.ordinal()]) {
            case 1:
                throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
            case 2:
                return j10;
            case 3:
                if (i8 >= 0) {
                    return j10;
                }
                break;
            case 4:
                break;
            case 5:
                if (i8 <= 0) {
                    return j10;
                }
                break;
            case 6:
            case 7:
            case 8:
                long jAbs = Math.abs(j11);
                long jAbs2 = jAbs - (Math.abs(j9) - jAbs);
                if (jAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j10) == 0)) {
                        return j10;
                    }
                } else if (jAbs2 <= 0) {
                    return j10;
                }
            default:
                throw new AssertionError();
        }
        return j10 + ((long) i8);
    }

    public static String z1(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo != null) {
                return Long.toString(Build.VERSION.SDK_INT >= 28 ? p093m.d.d(packageInfo) : packageInfo.versionCode);
            }
            return HttpUrl.FRAGMENT_ENCODE_SET;
        } catch (PackageManager.NameNotFoundException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public abstract D4.b y();
}
