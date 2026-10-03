package z4;

import J6.AbstractC0225y;
import J6.C0215n;
import J6.C0222v;
import J6.EnumC0218q;
import J6.InterfaceC0216o;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.C1960s1;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import okhttp3.HttpUrl;
import p141s0.C3192q;
import pe.hf.black20.R;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes.dex */
public abstract class q0 {
    public static n0 A(L l4, L l8) {
        p190y4.k.s(l4, "set1");
        p190y4.k.s(l8, "set2");
        return new n0(l4, l8, 1);
    }

    public static long B(long... jArr) {
        p190y4.k.p(jArr.length > 0);
        long j8 = jArr[0];
        for (int i8 = 1; i8 < jArr.length; i8++) {
            long j9 = jArr[i8];
            if (j9 < j8) {
                j8 = j9;
            }
        }
        return j8;
    }

    public static void C(Throwable th) {
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!(th instanceof p078j6.d) && !(th instanceof p078j6.c) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof p078j6.b)) {
            th = new C1960s1(th);
        }
        th.printStackTrace();
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    public static p185x6.j D(p185x6.j jVar, p185x6.j jVar2) {
        h(jVar2, "context");
        return jVar2 == p185x6.k.f31227G ? jVar : (p185x6.j) jVar2.E(jVar, new p185x6.c(1));
    }

    public static final void E(int i8, int i9, Object[] objArr) {
        h(objArr, "<this>");
        while (i8 < i9) {
            objArr[i8] = null;
            i8++;
        }
    }

    public static void F(String str, RuntimeException runtimeException) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i8 = -1;
        for (int i9 = 0; i9 < length; i9++) {
            if (str.equals(stackTrace[i9].getClassName())) {
                i8 = i9;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i8 + 1, length));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a  */
    /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
    public static final int G(Q6.A a8, int i8) {
        int i9;
        h(a8, "<this>");
        int i10 = i8 + 1;
        int length = a8.f6043K.length;
        int[] iArr = a8.f6044L;
        h(iArr, "<this>");
        int i11 = length - 1;
        int i12 = 0;
        while (i12 <= i11) {
            i9 = (i12 + i11) >>> 1;
            int i13 = iArr[i9];
            if (i13 < i10) {
                i12 = i9 + 1;
            } else {
                if (i13 <= i10) {
                    if (i9 >= 0) {
                        return i9;
                    }
                    return ~i9;
                }
                i11 = i9 - 1;
            }
        }
        i9 = (-i12) - 1;
        if (i9 >= 0) {
            return i9;
        }
        return ~i9;
    }

    public static final void H(Object obj) throws Throwable {
        if (obj instanceof p155t6.d) {
            throw ((p155t6.d) obj).f30313G;
        }
    }

    public static void I(String str) {
        B0.Y y7 = new B0.Y(p000a.r.g("lateinit property ", str, " has not been initialized"));
        F(q0.class.getName(), y7);
        throw y7;
    }

    public static final boolean a(Object[] objArr, int i8, int i9, List list) {
        if (i9 != list.size()) {
            return false;
        }
        for (int i10 = 0; i10 < i9; i10++) {
            if (!c(objArr[i8 + i10], list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static final String b(Object[] objArr, int i8, int i9, Collection collection) {
        StringBuilder sb = new StringBuilder((i9 * 3) + 2);
        sb.append("[");
        for (int i10 = 0; i10 < i9; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i8 + i10];
            if (obj == collection) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        String string = sb.toString();
        g(string, "toString(...)");
        return string;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static C0222v d(N6.a aVar, C6.p pVar) {
        p185x6.j jVarN;
        p185x6.k kVar = p185x6.k.f31227G;
        EnumC0218q enumC0218q = EnumC0218q.f4246G;
        Boolean bool = Boolean.FALSE;
        p185x6.c cVar = new p185x6.c(3);
        p185x6.j jVar = aVar.f4959G;
        boolean zBooleanValue = ((Boolean) jVar.E(bool, cVar)).booleanValue();
        boolean zBooleanValue2 = bool.booleanValue();
        int i8 = 2;
        boolean z7 = true;
        boolean z8 = true;
        if (zBooleanValue || zBooleanValue2) {
            D6.k kVar2 = new D6.k();
            kVar2.f2436G = kVar;
            p185x6.j jVar2 = (p185x6.j) jVar.E(kVar, new I6.j(kVar2, z7, z8 ? 1 : 0));
            if (zBooleanValue2) {
                kVar2.f2436G = ((p185x6.j) kVar2.f2436G).E(kVar, new p185x6.c(i8));
            }
            jVarN = jVar2.N((p185x6.j) kVar2.f2436G);
        } else {
            jVarN = jVar.N(kVar);
        }
        O6.e eVar = AbstractC0225y.f4262a;
        if (jVarN != eVar && jVarN.k(p185x6.f.f31226G) == null) {
            jVarN = jVarN.N(eVar);
        }
        C0222v c0222v = new C0222v(jVarN, true);
        int iOrdinal = enumC0218q.ordinal();
        p155t6.h hVar = p155t6.h.f30319a;
        if (iOrdinal == 0) {
            try {
                N6.e.b(hVar, S3.e.h(S3.e.c(c0222v, c0222v, pVar)));
            } catch (Throwable th) {
                c0222v.b(n(th));
                throw th;
            }
        } else if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                S3.e.h(S3.e.c(c0222v, c0222v, pVar)).b(hVar);
            } else {
                if (iOrdinal != 3) {
                    throw new Y.r(16, (Object) null);
                }
                try {
                    p185x6.j jVar3 = c0222v.f4224I;
                    Object objD = N6.e.d(jVar3, null);
                    try {
                        p190y4.k.i(pVar);
                        Object objC = pVar.c(c0222v, c0222v);
                        N6.e.a(jVar3, objD);
                        if (objC != p192y6.a.f31454G) {
                            c0222v.b(objC);
                        }
                    } catch (Throwable th2) {
                        N6.e.a(jVar3, objD);
                        throw th2;
                    }
                } catch (Throwable th3) {
                    c0222v.b(n(th3));
                }
            }
        }
        return c0222v;
    }

    public static void e(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        F(q0.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        F(q0.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void g(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        F(q0.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void h(Object obj, String str) {
        if (obj == null) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = q0.class.getName();
            int i8 = 0;
            while (!stackTrace[i8].getClassName().equals(name)) {
                i8++;
            }
            while (stackTrace[i8].getClassName().equals(name)) {
                i8++;
            }
            StackTraceElement stackTraceElement = stackTrace[i8];
            StringBuilder sbQ = U2.q("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
            sbQ.append(str);
            NullPointerException nullPointerException = new NullPointerException(sbQ.toString());
            F(q0.class.getName(), nullPointerException);
            throw nullPointerException;
        }
    }

    public static final void i(int i8) {
        if (i8 < 1) {
            throw new IllegalArgumentException(p000a.r.f("Expected positive parallelism level, but got ", i8).toString());
        }
    }

    public static byte j(long j8) {
        p190y4.k.n(j8, "out of range: %s", (j8 >> 8) == 0);
        return (byte) j8;
    }

    public static final void k(Closeable closeable, Throwable th) throws IOException {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                com.bumptech.glide.d.a(th, th2);
            }
        }
    }

    public static int l(int i8, int i9) {
        if (i8 < i9) {
            return -1;
        }
        return i8 == i9 ? 0 : 1;
    }

    public static long[] m(long[]... jArr) {
        long length = 0;
        for (long[] jArr2 : jArr) {
            length += (long) jArr2.length;
        }
        int i8 = (int) length;
        p190y4.k.n(length, "the total number of elements (%s) in the arrays must fit in an int", length == ((long) i8));
        long[] jArr3 = new long[i8];
        int length2 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, length2, jArr4.length);
            length2 += jArr4.length;
        }
        return jArr3;
    }

    public static final p155t6.d n(Throwable th) {
        h(th, "exception");
        return new p155t6.d(th);
    }

    public static boolean o(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static o0 p(Set set, C3192q c3192q) {
        if (!(set instanceof SortedSet)) {
            if (!(set instanceof o0)) {
                set.getClass();
                return new o0(set, c3192q);
            }
            o0 o0Var = (o0) set;
            p190y4.l lVar = o0Var.f31889H;
            lVar.getClass();
            return new o0((Set) o0Var.f31888G, new p190y4.m(Arrays.asList(lVar, c3192q)));
        }
        Set set2 = (SortedSet) set;
        if (!(set2 instanceof o0)) {
            set2.getClass();
            return new p0(set2, c3192q);
        }
        o0 o0Var2 = (o0) set2;
        p190y4.l lVar2 = o0Var2.f31889H;
        lVar2.getClass();
        return new p0((SortedSet) o0Var2.f31888G, new p190y4.m(Arrays.asList(lVar2, c3192q)));
    }

    public static Q5.a q() {
        Q5.b bVarB = Q5.b.b();
        Map map = bVarB.f6042b;
        Q5.a aVar = new Q5.a();
        aVar.f6038a = PreferenceManager.getDefaultSharedPreferences(bVarB.f6041a);
        aVar.f6039b = map;
        return aVar;
    }

    public static final Class r(G6.b bVar) {
        h(bVar, "<this>");
        Class clsA = ((D6.b) bVar).a();
        if (!clsA.isPrimitive()) {
            return clsA;
        }
        String name = clsA.getName();
        switch (name.hashCode()) {
            case -1325958191:
                return !name.equals("double") ? clsA : Double.class;
            case 104431:
                return !name.equals("int") ? clsA : Integer.class;
            case 3039496:
                return !name.equals("byte") ? clsA : Byte.class;
            case 3052374:
                return !name.equals("char") ? clsA : Character.class;
            case 3327612:
                return !name.equals("long") ? clsA : Long.class;
            case 3625364:
                return !name.equals("void") ? clsA : Void.class;
            case 64711720:
                return !name.equals("boolean") ? clsA : Boolean.class;
            case 97526364:
                return !name.equals("float") ? clsA : Float.class;
            case 109413500:
                return !name.equals("short") ? clsA : Short.class;
            default:
                return clsA;
        }
    }

    public static final S6.a s(Context context, U6.c cVar, V6.b bVar) {
        if (bVar == null || cVar.c() != bVar.f7191T.size()) {
            throw new IllegalArgumentException("Dataset and renderer should be not null and should have the same number of series");
        }
        T6.c cVar2 = new T6.c(cVar, bVar);
        T6.d dVar = new T6.d(cVar, bVar);
        dVar.f6612P = bVar.f7216r0;
        cVar2.f6611P = dVar;
        S6.a aVar = new S6.a(context);
        aVar.f6457I = new Rect();
        aVar.f6459K = new RectF();
        aVar.f6463O = 50;
        Paint paint = new Paint();
        aVar.f6467S = paint;
        aVar.f6455G = cVar2;
        aVar.f6458J = new Handler();
        V6.b bVar2 = cVar2.f6614H;
        aVar.f6456H = bVar2;
        if (bVar2.f7194W) {
            aVar.f6460L = BitmapFactory.decodeStream(S6.a.class.getResourceAsStream("image/zoom_in.png"));
            aVar.f6461M = BitmapFactory.decodeStream(S6.a.class.getResourceAsStream("image/zoom_out.png"));
            aVar.f6462N = BitmapFactory.decodeStream(S6.a.class.getResourceAsStream("image/zoom-1.png"));
        }
        if (bVar2.f7214p0 == 0) {
            bVar2.f7214p0 = paint.getColor();
        }
        if (bVar2.i() && bVar2.f7194W) {
            float f8 = bVar2.f7195X;
            aVar.f6464P = new W6.b(cVar2, true, f8);
            aVar.f6465Q = new W6.b(cVar2, false, f8);
            aVar.f6466R = new F5.g(cVar2);
        }
        try {
            if (Integer.valueOf(Build.VERSION.SDK).intValue() < 7) {
                S6.d dVar2 = new S6.d();
                dVar2.f6484d = new RectF();
                dVar2.f6486f = aVar;
                dVar2.f6484d = aVar.getZoomRectangle();
                V6.b bVar3 = cVar2.f6614H;
                dVar2.f6481a = bVar3;
                if (bVar3.h()) {
                    dVar2.f6485e = new W6.a(cVar2);
                }
                aVar.f6468T = dVar2;
            } else {
                T6.a aVar2 = aVar.f6455G;
                S6.c cVar3 = new S6.c();
                cVar3.f6477f = new RectF();
                cVar3.f6480i = aVar;
                cVar3.f6477f = aVar.getZoomRectangle();
                if (!(aVar2 instanceof T6.e)) {
                    A0.O.G(aVar2);
                    throw null;
                }
                V6.b bVar4 = ((T6.e) aVar2).f6614H;
                cVar3.f6472a = bVar4;
                if (bVar4.h()) {
                    cVar3.f6478g = new W6.a(aVar2);
                }
                if (bVar4.i()) {
                    cVar3.f6479h = new W6.b(aVar2, true, 1.0f);
                }
                aVar.f6468T = cVar3;
            }
        } catch (Exception unused) {
        }
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0129  */
    public static ArrayList t(Context context) {
        ArrayList arrayListM0;
        Context context2 = context;
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        c7.b bVar = new c7.b(context2, 1);
        c7.d dVar = new c7.d(context2);
        int i8 = 0;
        c7.b bVar2 = new c7.b(context2, 0);
        SharedPreferences sharedPreferences = context2.getSharedPreferences("pe.hf.black20", 0);
        if (U2.z("ORT_WHICH_CAT", "TV", "CATCHUP")) {
            arrayListM0 = dVar.i0();
        } else {
            arrayListM0 = U2.z("ORT_WHICH_CAT", "TV", "RADIO") ? dVar.m0() : dVar.q0();
        }
        String str = "No";
        if (Config.f29414b.equals("no") && !sharedPreferences.getString("filter_status", null).equals("No") && !sharedPreferences.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) && !sharedPreferences.getString("filter_status", null).equals("null")) {
            str = "Yes";
        }
        while (i8 < arrayListM0.size()) {
            if (i8 == 0) {
                HashMap map = new HashMap();
                map.put("category_id", "99999");
                map.put("category_name", context2.getString(R.string.xc_favorites));
                map.put("parent_id", "0");
                arrayList.add(map);
                if (!Methods.R(context)) {
                    HashMap mapM = p000a.r.m("category_id", "99998", "category_name", "RECENT SEARCH");
                    mapM.put("parent_id", "0");
                    arrayList.add(mapM);
                }
            }
            if (U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                ArrayList arrayList2 = arrayList;
                if (bVar.N(((h7.a) arrayListM0.get(i8)).f25421a, "TV", q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes")) {
                    arrayList = arrayList2;
                } else if (!str.equals("Yes")) {
                    arrayList = arrayList2;
                    HashMap map2 = new HashMap();
                    map2.put("category_id", ((h7.a) arrayListM0.get(i8)).f25421a);
                    map2.put("category_name", ((h7.a) arrayListM0.get(i8)).f25422b);
                    map2.put("parent_id", ((h7.a) arrayListM0.get(i8)).f25423c);
                    arrayList.add(map2);
                } else if (bVar2.c0(((h7.a) arrayListM0.get(i8)).f25422b, "Live").equals("yes")) {
                    HashMap map3 = new HashMap();
                    map3.put("category_id", ((h7.a) arrayListM0.get(i8)).f25421a);
                    map3.put("category_name", ((h7.a) arrayListM0.get(i8)).f25422b);
                    map3.put("parent_id", ((h7.a) arrayListM0.get(i8)).f25423c);
                    arrayList = arrayList2;
                    arrayList.add(map3);
                } else {
                    arrayList = arrayList2;
                }
            } else if (!str.equals("Yes")) {
                HashMap map4 = new HashMap();
                map4.put("category_id", ((h7.a) arrayListM0.get(i8)).f25421a);
                map4.put("category_name", ((h7.a) arrayListM0.get(i8)).f25422b);
                map4.put("parent_id", ((h7.a) arrayListM0.get(i8)).f25423c);
                arrayList.add(map4);
            } else if (bVar2.c0(((h7.a) arrayListM0.get(i8)).f25422b, "Live").equals("yes")) {
                HashMap map5 = new HashMap();
                map5.put("category_id", ((h7.a) arrayListM0.get(i8)).f25421a);
                map5.put("category_name", ((h7.a) arrayListM0.get(i8)).f25422b);
                map5.put("parent_id", ((h7.a) arrayListM0.get(i8)).f25423c);
                arrayList.add(map5);
            }
            i8++;
            context2 = context;
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x01f7 A[PHI: r16 r18
      0x01f7: PHI (r16v5 c7.b) = (r16v1 c7.b), (r16v1 c7.b), (r16v7 c7.b) binds: [B:41:0x03d8, B:27:0x0237, B:21:0x0165] A[DONT_GENERATE, DONT_INLINE]
      0x01f7: PHI (r18v4 java.util.ArrayList) = (r18v2 java.util.ArrayList), (r18v1 java.util.ArrayList), (r18v5 java.util.ArrayList) binds: [B:41:0x03d8, B:27:0x0237, B:21:0x0165] A[DONT_GENERATE, DONT_INLINE]] */
    public static ArrayList u(Context context, boolean z7, String str, String str2, String str3) {
        ArrayList arrayList;
        c7.b bVar;
        c7.d dVar = new c7.d(context);
        c7.b bVar2 = new c7.b(context, 1);
        ArrayList arrayList2 = new ArrayList();
        new ArrayList().clear();
        ArrayList arrayListL0 = z7 ? dVar.l0(str, "0", str2) : dVar.l0("all", str3, str2);
        int i8 = 0;
        while (i8 < arrayListL0.size()) {
            ArrayList arrayList3 = arrayList2;
            if (!U2.z("ORT_WHICH_CAT", "TV", "CATCHUP")) {
                arrayList = arrayList3;
                bVar = bVar2;
                if (U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
                    if (((h7.d) arrayListL0.get(i8)).f25431c.equals("radio_streams")) {
                        HashMap map = new HashMap();
                        map.put("num", ((h7.d) arrayListL0.get(i8)).f25429a);
                        map.put("name", ((h7.d) arrayListL0.get(i8)).f25430b);
                        map.put("stream_type", ((h7.d) arrayListL0.get(i8)).f25431c);
                        map.put("stream_id", ((h7.d) arrayListL0.get(i8)).f25432d);
                        map.put("stream_icon", ((h7.d) arrayListL0.get(i8)).f25433e);
                        map.put("epg_channel_id", ((h7.d) arrayListL0.get(i8)).f25434f);
                        map.put("added", ((h7.d) arrayListL0.get(i8)).f25435g);
                        map.put("category_id", ((h7.d) arrayListL0.get(i8)).f25436h);
                        map.put("custom_sid", ((h7.d) arrayListL0.get(i8)).f25437i);
                        map.put("tv_archive", ((h7.d) arrayListL0.get(i8)).f25438j);
                        map.put("direct_source", ((h7.d) arrayListL0.get(i8)).f25439k);
                        map.put("tv_archive_duration", ((h7.d) arrayListL0.get(i8)).f25440l);
                        arrayList2 = arrayList;
                        arrayList2.add(map);
                    } else {
                        arrayList = arrayList;
                        arrayList2 = arrayList;
                    }
                } else if (!U2.z("ORT_WHICH_CAT", "TV", "TV")) {
                    arrayList2 = arrayList;
                } else if (U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                    if (bVar.N(((h7.d) arrayListL0.get(i8)).f25436h, "TV", q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes") || !((h7.d) arrayListL0.get(i8)).f25431c.toLowerCase().contains("live")) {
                        bVar = bVar;
                        arrayList2 = arrayList;
                    } else {
                        HashMap map2 = new HashMap();
                        map2.put("num", ((h7.d) arrayListL0.get(i8)).f25429a);
                        map2.put("name", ((h7.d) arrayListL0.get(i8)).f25430b);
                        map2.put("stream_type", ((h7.d) arrayListL0.get(i8)).f25431c);
                        map2.put("stream_id", ((h7.d) arrayListL0.get(i8)).f25432d);
                        map2.put("stream_icon", ((h7.d) arrayListL0.get(i8)).f25433e);
                        map2.put("epg_channel_id", ((h7.d) arrayListL0.get(i8)).f25434f);
                        map2.put("added", ((h7.d) arrayListL0.get(i8)).f25435g);
                        map2.put("category_id", ((h7.d) arrayListL0.get(i8)).f25436h);
                        map2.put("custom_sid", ((h7.d) arrayListL0.get(i8)).f25437i);
                        map2.put("tv_archive", ((h7.d) arrayListL0.get(i8)).f25438j);
                        map2.put("direct_source", ((h7.d) arrayListL0.get(i8)).f25439k);
                        map2.put("tv_archive_duration", ((h7.d) arrayListL0.get(i8)).f25440l);
                        arrayList2 = arrayList;
                        arrayList2.add(map2);
                        bVar = bVar;
                    }
                } else if (((h7.d) arrayListL0.get(i8)).f25431c.toLowerCase().contains("live")) {
                    arrayList = arrayList;
                    HashMap map3 = new HashMap();
                    map3.put("num", ((h7.d) arrayListL0.get(i8)).f25429a);
                    map3.put("name", ((h7.d) arrayListL0.get(i8)).f25430b);
                    map3.put("stream_type", ((h7.d) arrayListL0.get(i8)).f25431c);
                    map3.put("stream_id", ((h7.d) arrayListL0.get(i8)).f25432d);
                    map3.put("stream_icon", ((h7.d) arrayListL0.get(i8)).f25433e);
                    map3.put("epg_channel_id", ((h7.d) arrayListL0.get(i8)).f25434f);
                    map3.put("added", ((h7.d) arrayListL0.get(i8)).f25435g);
                    map3.put("category_id", ((h7.d) arrayListL0.get(i8)).f25436h);
                    map3.put("custom_sid", ((h7.d) arrayListL0.get(i8)).f25437i);
                    map3.put("tv_archive", ((h7.d) arrayListL0.get(i8)).f25438j);
                    map3.put("direct_source", ((h7.d) arrayListL0.get(i8)).f25439k);
                    map3.put("tv_archive_duration", ((h7.d) arrayListL0.get(i8)).f25440l);
                    arrayList2 = arrayList;
                    arrayList2.add(map3);
                } else {
                    arrayList = arrayList;
                    arrayList2 = arrayList;
                }
            } else if (U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                if (bVar2.N(((h7.d) arrayListL0.get(i8)).f25436h, "TV", q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes") || !((h7.d) arrayListL0.get(i8)).f25438j.equals("1")) {
                    arrayList2 = arrayList3;
                } else {
                    HashMap map4 = new HashMap();
                    map4.put("num", ((h7.d) arrayListL0.get(i8)).f25429a);
                    map4.put("name", ((h7.d) arrayListL0.get(i8)).f25430b);
                    map4.put("stream_type", ((h7.d) arrayListL0.get(i8)).f25431c);
                    map4.put("stream_id", ((h7.d) arrayListL0.get(i8)).f25432d);
                    map4.put("stream_icon", ((h7.d) arrayListL0.get(i8)).f25433e);
                    map4.put("epg_channel_id", ((h7.d) arrayListL0.get(i8)).f25434f);
                    map4.put("added", ((h7.d) arrayListL0.get(i8)).f25435g);
                    map4.put("category_id", ((h7.d) arrayListL0.get(i8)).f25436h);
                    map4.put("custom_sid", ((h7.d) arrayListL0.get(i8)).f25437i);
                    map4.put("tv_archive", ((h7.d) arrayListL0.get(i8)).f25438j);
                    map4.put("direct_source", ((h7.d) arrayListL0.get(i8)).f25439k);
                    map4.put("tv_archive_duration", ((h7.d) arrayListL0.get(i8)).f25440l);
                    arrayList2 = arrayList3;
                    arrayList2.add(map4);
                }
                bVar = bVar2;
            } else {
                bVar = bVar2;
                arrayList = arrayList3;
                if (((h7.d) arrayListL0.get(i8)).f25438j.equals("1")) {
                    HashMap map5 = new HashMap();
                    map5.put("num", ((h7.d) arrayListL0.get(i8)).f25429a);
                    map5.put("name", ((h7.d) arrayListL0.get(i8)).f25430b);
                    map5.put("stream_type", ((h7.d) arrayListL0.get(i8)).f25431c);
                    map5.put("stream_id", ((h7.d) arrayListL0.get(i8)).f25432d);
                    map5.put("stream_icon", ((h7.d) arrayListL0.get(i8)).f25433e);
                    map5.put("epg_channel_id", ((h7.d) arrayListL0.get(i8)).f25434f);
                    map5.put("added", ((h7.d) arrayListL0.get(i8)).f25435g);
                    map5.put("category_id", ((h7.d) arrayListL0.get(i8)).f25436h);
                    map5.put("custom_sid", ((h7.d) arrayListL0.get(i8)).f25437i);
                    map5.put("tv_archive", ((h7.d) arrayListL0.get(i8)).f25438j);
                    map5.put("direct_source", ((h7.d) arrayListL0.get(i8)).f25439k);
                    map5.put("tv_archive_duration", ((h7.d) arrayListL0.get(i8)).f25440l);
                    arrayList2 = arrayList;
                    arrayList2.add(map5);
                } else {
                    arrayList = arrayList;
                    arrayList2 = arrayList;
                }
            }
            i8++;
            bVar2 = bVar;
        }
        return arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x014b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0215 A[PHI: r17 r18 r19 r20
      0x0215: PHI (r17v2 c7.b) = (r17v1 c7.b), (r17v5 c7.b), (r17v5 c7.b), (r17v5 c7.b) binds: [B:29:0x02ef, B:22:0x0221, B:24:0x0231, B:18:0x0181] A[DONT_GENERATE, DONT_INLINE]
      0x0215: PHI (r18v2 java.lang.String) = (r18v1 java.lang.String), (r18v5 java.lang.String), (r18v5 java.lang.String), (r18v5 java.lang.String) binds: [B:29:0x02ef, B:22:0x0221, B:24:0x0231, B:18:0x0181] A[DONT_GENERATE, DONT_INLINE]
      0x0215: PHI (r19v2 java.lang.String) = (r19v1 java.lang.String), (r19v5 java.lang.String), (r19v5 java.lang.String), (r19v5 java.lang.String) binds: [B:29:0x02ef, B:22:0x0221, B:24:0x0231, B:18:0x0181] A[DONT_GENERATE, DONT_INLINE]
      0x0215: PHI (r20v2 java.util.ArrayList) = (r20v1 java.util.ArrayList), (r20v3 java.util.ArrayList), (r20v3 java.util.ArrayList), (r20v3 java.util.ArrayList) binds: [B:29:0x02ef, B:22:0x0221, B:24:0x0231, B:18:0x0181] A[DONT_GENERATE, DONT_INLINE]] */
    public static ArrayList v(Context context, String str) {
        c7.b bVar;
        String str2;
        ArrayList arrayList;
        String str3;
        c7.d dVar = new c7.d(context);
        c7.b bVar2 = new c7.b(context, 1);
        ArrayList arrayList2 = new ArrayList();
        new ArrayList().clear();
        Q5.a aVarQ = q();
        String str4 = "ORT_PROFILE_ID";
        String str5 = HttpUrl.FRAGMENT_ENCODE_SET;
        ArrayList arrayListR0 = dVar.r0(str, aVarQ.c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
        int i8 = 0;
        while (i8 < arrayListR0.size()) {
            ArrayList arrayList3 = arrayList2;
            if (!U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                bVar = bVar2;
                str2 = str5;
                arrayList = arrayList3;
                str3 = str4;
                if (U2.z("ORT_WHICH_CAT", "TV", "TV")) {
                    if (((h7.d) arrayListR0.get(i8)).f25431c.equals("live")) {
                        HashMap map = new HashMap();
                        map.put("num", ((h7.d) arrayListR0.get(i8)).f25429a);
                        map.put("name", ((h7.d) arrayListR0.get(i8)).f25430b);
                        map.put("stream_type", ((h7.d) arrayListR0.get(i8)).f25431c);
                        map.put("stream_id", ((h7.d) arrayListR0.get(i8)).f25432d);
                        map.put("stream_icon", ((h7.d) arrayListR0.get(i8)).f25433e);
                        map.put("epg_channel_id", ((h7.d) arrayListR0.get(i8)).f25434f);
                        map.put("added", ((h7.d) arrayListR0.get(i8)).f25435g);
                        map.put("category_id", ((h7.d) arrayListR0.get(i8)).f25436h);
                        map.put("custom_sid", ((h7.d) arrayListR0.get(i8)).f25437i);
                        map.put("tv_archive", ((h7.d) arrayListR0.get(i8)).f25438j);
                        map.put("direct_source", ((h7.d) arrayListR0.get(i8)).f25439k);
                        map.put("tv_archive_duration", ((h7.d) arrayListR0.get(i8)).f25440l);
                        arrayList2 = arrayList;
                        arrayList2.add(map);
                    } else {
                        arrayList2 = arrayList;
                    }
                } else if (U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
                    if (((h7.d) arrayListR0.get(i8)).f25431c.equals("radio_streams")) {
                        HashMap map2 = new HashMap();
                        map2.put("num", ((h7.d) arrayListR0.get(i8)).f25429a);
                        map2.put("name", ((h7.d) arrayListR0.get(i8)).f25430b);
                        map2.put("stream_type", ((h7.d) arrayListR0.get(i8)).f25431c);
                        map2.put("stream_id", ((h7.d) arrayListR0.get(i8)).f25432d);
                        map2.put("stream_icon", ((h7.d) arrayListR0.get(i8)).f25433e);
                        map2.put("epg_channel_id", ((h7.d) arrayListR0.get(i8)).f25434f);
                        map2.put("added", ((h7.d) arrayListR0.get(i8)).f25435g);
                        map2.put("category_id", ((h7.d) arrayListR0.get(i8)).f25436h);
                        map2.put("custom_sid", ((h7.d) arrayListR0.get(i8)).f25437i);
                        map2.put("tv_archive", ((h7.d) arrayListR0.get(i8)).f25438j);
                        map2.put("direct_source", ((h7.d) arrayListR0.get(i8)).f25439k);
                        map2.put("tv_archive_duration", ((h7.d) arrayListR0.get(i8)).f25440l);
                        arrayList2 = arrayList;
                        arrayList2.add(map2);
                    } else {
                        arrayList2 = arrayList;
                    }
                } else if (U2.z("ORT_WHICH_CAT", "TV", "CATCHUP") && ((h7.d) arrayListR0.get(i8)).f25438j.equals("1")) {
                    HashMap map3 = new HashMap();
                    map3.put("num", ((h7.d) arrayListR0.get(i8)).f25429a);
                    map3.put("name", ((h7.d) arrayListR0.get(i8)).f25430b);
                    map3.put("stream_type", ((h7.d) arrayListR0.get(i8)).f25431c);
                    map3.put("stream_id", ((h7.d) arrayListR0.get(i8)).f25432d);
                    map3.put("stream_icon", ((h7.d) arrayListR0.get(i8)).f25433e);
                    map3.put("epg_channel_id", ((h7.d) arrayListR0.get(i8)).f25434f);
                    map3.put("added", ((h7.d) arrayListR0.get(i8)).f25435g);
                    map3.put("category_id", ((h7.d) arrayListR0.get(i8)).f25436h);
                    map3.put("custom_sid", ((h7.d) arrayListR0.get(i8)).f25437i);
                    map3.put("tv_archive", ((h7.d) arrayListR0.get(i8)).f25438j);
                    map3.put("direct_source", ((h7.d) arrayListR0.get(i8)).f25439k);
                    map3.put("tv_archive_duration", ((h7.d) arrayListR0.get(i8)).f25440l);
                    arrayList2 = arrayList;
                    arrayList2.add(map3);
                } else {
                    arrayList2 = arrayList;
                }
            } else if (bVar2.N(((h7.d) arrayListR0.get(i8)).f25436h, "TV", q().c(str4, str5)).equals("yes")) {
                bVar = bVar2;
                str2 = str5;
                arrayList2 = arrayList3;
                str3 = str4;
            } else if (!U2.z("ORT_WHICH_CAT", "TV", "TV")) {
                str2 = str5;
                arrayList = arrayList3;
                str3 = str4;
                bVar = bVar2;
                if (U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
                    if (((h7.d) arrayListR0.get(i8)).f25431c.equals("radio_streams")) {
                        HashMap map4 = new HashMap();
                        map4.put("num", ((h7.d) arrayListR0.get(i8)).f25429a);
                        map4.put("name", ((h7.d) arrayListR0.get(i8)).f25430b);
                        map4.put("stream_type", ((h7.d) arrayListR0.get(i8)).f25431c);
                        map4.put("stream_id", ((h7.d) arrayListR0.get(i8)).f25432d);
                        map4.put("stream_icon", ((h7.d) arrayListR0.get(i8)).f25433e);
                        map4.put("epg_channel_id", ((h7.d) arrayListR0.get(i8)).f25434f);
                        map4.put("added", ((h7.d) arrayListR0.get(i8)).f25435g);
                        map4.put("category_id", ((h7.d) arrayListR0.get(i8)).f25436h);
                        map4.put("custom_sid", ((h7.d) arrayListR0.get(i8)).f25437i);
                        map4.put("tv_archive", ((h7.d) arrayListR0.get(i8)).f25438j);
                        map4.put("direct_source", ((h7.d) arrayListR0.get(i8)).f25439k);
                        map4.put("tv_archive_duration", ((h7.d) arrayListR0.get(i8)).f25440l);
                        arrayList2 = arrayList;
                        arrayList2.add(map4);
                    } else {
                        arrayList2 = arrayList;
                    }
                } else if (U2.z("ORT_WHICH_CAT", "TV", "CATCHUP") && ((h7.d) arrayListR0.get(i8)).f25438j.equals("1")) {
                    HashMap map5 = new HashMap();
                    map5.put("num", ((h7.d) arrayListR0.get(i8)).f25429a);
                    map5.put("name", ((h7.d) arrayListR0.get(i8)).f25430b);
                    map5.put("stream_type", ((h7.d) arrayListR0.get(i8)).f25431c);
                    map5.put("stream_id", ((h7.d) arrayListR0.get(i8)).f25432d);
                    map5.put("stream_icon", ((h7.d) arrayListR0.get(i8)).f25433e);
                    map5.put("epg_channel_id", ((h7.d) arrayListR0.get(i8)).f25434f);
                    map5.put("added", ((h7.d) arrayListR0.get(i8)).f25435g);
                    map5.put("category_id", ((h7.d) arrayListR0.get(i8)).f25436h);
                    map5.put("custom_sid", ((h7.d) arrayListR0.get(i8)).f25437i);
                    map5.put("tv_archive", ((h7.d) arrayListR0.get(i8)).f25438j);
                    map5.put("direct_source", ((h7.d) arrayListR0.get(i8)).f25439k);
                    map5.put("tv_archive_duration", ((h7.d) arrayListR0.get(i8)).f25440l);
                    arrayList2 = arrayList;
                    arrayList2.add(map5);
                } else {
                    arrayList2 = arrayList;
                }
            } else if (((h7.d) arrayListR0.get(i8)).f25431c.equals("live")) {
                HashMap map6 = new HashMap();
                map6.put("num", ((h7.d) arrayListR0.get(i8)).f25429a);
                map6.put("name", ((h7.d) arrayListR0.get(i8)).f25430b);
                map6.put("stream_type", ((h7.d) arrayListR0.get(i8)).f25431c);
                map6.put("stream_id", ((h7.d) arrayListR0.get(i8)).f25432d);
                map6.put("stream_icon", ((h7.d) arrayListR0.get(i8)).f25433e);
                map6.put("epg_channel_id", ((h7.d) arrayListR0.get(i8)).f25434f);
                map6.put("added", ((h7.d) arrayListR0.get(i8)).f25435g);
                map6.put("category_id", ((h7.d) arrayListR0.get(i8)).f25436h);
                map6.put("custom_sid", ((h7.d) arrayListR0.get(i8)).f25437i);
                map6.put("tv_archive", ((h7.d) arrayListR0.get(i8)).f25438j);
                map6.put("direct_source", ((h7.d) arrayListR0.get(i8)).f25439k);
                map6.put("tv_archive_duration", ((h7.d) arrayListR0.get(i8)).f25440l);
                arrayList2 = arrayList3;
                arrayList2.add(map6);
                bVar = bVar2;
                str3 = str4;
                str2 = str5;
            } else {
                bVar = bVar2;
                str2 = str5;
                arrayList2 = arrayList3;
                str3 = str4;
            }
            i8++;
            bVar2 = bVar;
            str4 = str3;
            str5 = str2;
        }
        return arrayList2;
    }

    public static final void w(p185x6.j jVar, Throwable th) {
        try {
            InterfaceC0216o interfaceC0216o = (InterfaceC0216o) jVar.k(C0215n.f4244G);
            if (interfaceC0216o != null) {
                ((K6.b) interfaceC0216o).a0(jVar, th);
            } else {
                x(jVar, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                com.bumptech.glide.d.a(runtimeException, th);
                th = runtimeException;
            }
            x(jVar, th);
        }
    }

    public static final void x(p185x6.j jVar, Throwable th) {
        Throwable runtimeException;
        Iterator it = N6.b.f4960a.iterator();
        while (it.hasNext()) {
            try {
                ((K6.b) ((InterfaceC0216o) it.next())).a0(jVar, th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    com.bumptech.glide.d.a(runtimeException, th);
                }
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        try {
            com.bumptech.glide.d.a(th, new N6.c(jVar));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    public static int y(long j8) {
        return (int) (j8 ^ (j8 >>> 32));
    }

    public static int z(Set set) {
        Iterator it = set.iterator();
        int i8 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i8 = ~(~(i8 + (next != null ? next.hashCode() : 0)));
        }
        return i8;
    }
}
