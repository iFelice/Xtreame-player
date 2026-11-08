package p190y4;

import B0.K0;
import C4.c;
import C6.l;
import C6.p;
import H6.e;
import J6.AbstractC0214m;
import J6.C0207f;
import J6.C0215n;
import J6.I;
import J6.InterfaceC0226z;
import J6.J;
import J6.L;
import J6.M;
import J6.N;
import J6.Q;
import M4.a;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.util.Property;
import android.view.View;
import androidx.leanback.transition.f;
import c7.b;
import c7.d;
import com.google.android.gms.internal.ads.SG;
import com.google.android.gms.internal.measurement.AbstractC2576i2;
import com.google.android.gms.internal.measurement.AbstractC2631s2;
import com.google.android.gms.internal.measurement.B2;
import com.google.android.gms.internal.measurement.C2535b3;
import com.google.android.gms.internal.measurement.C2636t2;
import com.google.android.gms.internal.measurement.InterfaceC2661y2;
import com.google.android.gms.internal.measurement.R2;
import com.google.android.gms.internal.measurement.Y2;
import com.google.protobuf.U2;
import h7.j;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Future;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p000a.r;
import p027d2.v;
import p112o2.g;
import p162u6.n;
import p162u6.o;
import p185x6.h;
import p185x6.i;
import z4.F;
import z4.d0;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class k implements f {
    public static a A(String str, String str2) {
        p069i5.a aVar = new p069i5.a(str, str2);
        a aVarD = a.d(p069i5.a.class);
        aVarD.f4802f = 1;
        aVarD.f4803g = new K0(aVar);
        return aVarD.b();
    }

    public static boolean B(String str, String str2) {
        char c8;
        int length = str.length();
        if (str == str2) {
            return true;
        }
        if (length != str2.length()) {
            return false;
        }
        for (int i8 = 0; i8 < length; i8++) {
            char cCharAt = str.charAt(i8);
            char cCharAt2 = str2.charAt(i8);
            if (cCharAt != cCharAt2 && ((c8 = (char) ((cCharAt | ' ') - 97)) >= 26 || c8 != ((char) ((cCharAt2 | ' ') - 97)))) {
                return false;
            }
        }
        return true;
    }

    public static int C(byte b8, byte b9, byte b10, byte b11) {
        return (b8 << 24) | ((b9 & 255) << 16) | ((b10 & 255) << 8) | (b11 & 255);
    }

    public static h D(h hVar, i iVar) {
        q0.h(iVar, "key");
        if (q0.c(hVar.getKey(), iVar)) {
            return hVar;
        }
        return null;
    }

    public static void E(Future future) {
        x(future.isDone(), "Future was expected to be done: %s", future);
        boolean z7 = false;
        while (true) {
            try {
                future.get();
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
    }

    public static Object F(AbstractCollection abstractCollection, Object obj) {
        Iterator it = abstractCollection.iterator();
        return it.hasNext() ? it.next() : obj;
    }

    public static Object G(Iterable iterable) {
        Object next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            return list.get(list.size() - 1);
        }
        Iterator it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object H(d0 d0Var) {
        F fV = d0Var.listIterator(0);
        Object next = fV.next();
        if (!fV.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder("expected one element but was: <");
        sb.append(next);
        for (int i8 = 0; i8 < 4 && fV.hasNext(); i8++) {
            sb.append(", ");
            sb.append(fV.next());
        }
        if (fV.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    public static final int I(int i8, int i9, int i10) {
        if (i10 > 0) {
            if (i8 >= i9) {
                return i9;
            }
            int i11 = i9 % i10;
            if (i11 < 0) {
                i11 += i10;
            }
            int i12 = i8 % i10;
            if (i12 < 0) {
                i12 += i10;
            }
            int i13 = (i11 - i12) % i10;
            if (i13 < 0) {
                i13 += i10;
            }
            return i9 - i13;
        }
        if (i10 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        }
        if (i8 <= i9) {
            return i9;
        }
        int i14 = -i10;
        int i15 = i8 % i14;
        if (i15 < 0) {
            i15 += i14;
        }
        int i16 = i9 % i14;
        if (i16 < 0) {
            i16 += i14;
        }
        int i17 = (i15 - i16) % i14;
        if (i17 < 0) {
            i17 += i14;
        }
        return i9 + i17;
    }

    public static int J(int[] iArr, int i8, boolean z7) {
        int[] iArr2 = iArr;
        int i9 = 0;
        for (int i10 : iArr2) {
            i9 += i10;
        }
        int length = iArr2.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = length - 1;
            if (i11 >= i14) {
                return i12;
            }
            int i15 = 1 << i11;
            i13 |= i15;
            int i16 = 1;
            while (i16 < iArr2[i11]) {
                int i17 = i9 - i16;
                int i18 = length - i11;
                int i19 = i18 - 2;
                int iZ = z(i17 - 1, i19);
                if (z7 && i13 == 0) {
                    int i20 = i18 - 1;
                    if (i17 - i20 >= i20) {
                        iZ -= z(i17 - i18, i19);
                    }
                }
                if (i18 - 1 > 1) {
                    int iZ2 = 0;
                    for (int i21 = i17 - i19; i21 > i8; i21--) {
                        iZ2 += z((i17 - i21) - 1, i18 - 3);
                    }
                    iZ -= (i14 - i11) * iZ2;
                } else if (i17 > i8) {
                    iZ--;
                }
                i12 += iZ;
                i16++;
                i13 &= ~i15;
                iArr2 = iArr;
            }
            i9 -= i16;
            i11++;
            iArr2 = iArr;
        }
    }

    public static long K(double d6) {
        o("not a normal value", P(d6));
        int exponent = Math.getExponent(d6);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d6) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static ArrayList L(Context context, String str) {
        d dVar = new d(context);
        b bVar = new b(context, 1);
        ArrayList arrayList = new ArrayList();
        new ArrayList().clear();
        ArrayList arrayList2 = dVar.f11487H;
        arrayList2.clear();
        int i8 = 0;
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = dVar.getWritableDatabase().rawQuery("SELECT * FROM vods WHERE stream_id=?", new String[]{str});
            if (cursorRawQuery.moveToFirst()) {
                do {
                    j jVar = new j();
                    jVar.f25483a = cursorRawQuery.getString(0);
                    jVar.f25484b = cursorRawQuery.getString(1);
                    jVar.f25485c = cursorRawQuery.getString(2);
                    jVar.f25486d = cursorRawQuery.getString(3);
                    jVar.f25487e = cursorRawQuery.getString(4);
                    jVar.f25488f = cursorRawQuery.getString(5);
                    jVar.f25489g = cursorRawQuery.getString(6);
                    jVar.f25490h = cursorRawQuery.getString(7);
                    jVar.f25491i = cursorRawQuery.getString(8);
                    jVar.f25492j = cursorRawQuery.getString(9);
                    jVar.f25493k = cursorRawQuery.getString(10);
                    jVar.f25494l = cursorRawQuery.getString(11);
                    arrayList2.add(jVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
            }
        }
        while (i8 < arrayList2.size()) {
            ArrayList arrayList3 = arrayList;
            if (!U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                HashMap map = new HashMap();
                map.put("num", ((j) arrayList2.get(i8)).f25483a);
                map.put("name", ((j) arrayList2.get(i8)).f25484b);
                map.put("stream_type", ((j) arrayList2.get(i8)).f25485c);
                map.put("stream_id", ((j) arrayList2.get(i8)).f25486d);
                map.put("stream_icon", ((j) arrayList2.get(i8)).f25487e);
                map.put("rating", ((j) arrayList2.get(i8)).f25488f);
                map.put("rating_5based", ((j) arrayList2.get(i8)).f25489g);
                map.put("added", ((j) arrayList2.get(i8)).f25490h);
                map.put("category_id", ((j) arrayList2.get(i8)).f25491i);
                map.put("container_extension", ((j) arrayList2.get(i8)).f25492j);
                map.put("custom_sid", ((j) arrayList2.get(i8)).f25493k);
                map.put("direct_source", ((j) arrayList2.get(i8)).f25494l);
                arrayList = arrayList3;
                arrayList.add(map);
            } else if (bVar.N(((j) arrayList2.get(i8)).f25491i, "VOD", q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes")) {
                arrayList = arrayList3;
            } else {
                HashMap map2 = new HashMap();
                map2.put("num", ((j) arrayList2.get(i8)).f25483a);
                map2.put("name", ((j) arrayList2.get(i8)).f25484b);
                map2.put("stream_type", ((j) arrayList2.get(i8)).f25485c);
                map2.put("stream_id", ((j) arrayList2.get(i8)).f25486d);
                map2.put("stream_icon", ((j) arrayList2.get(i8)).f25487e);
                map2.put("rating", ((j) arrayList2.get(i8)).f25488f);
                map2.put("rating_5based", ((j) arrayList2.get(i8)).f25489g);
                map2.put("added", ((j) arrayList2.get(i8)).f25490h);
                map2.put("category_id", ((j) arrayList2.get(i8)).f25491i);
                map2.put("container_extension", ((j) arrayList2.get(i8)).f25492j);
                map2.put("custom_sid", ((j) arrayList2.get(i8)).f25493k);
                map2.put("direct_source", ((j) arrayList2.get(i8)).f25494l);
                arrayList = arrayList3;
                arrayList.add(map2);
            }
            i8++;
            bVar = bVar;
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00bf A[PHI: r3
      0x00bf: PHI (r3v3 android.database.Cursor) = (r3v2 android.database.Cursor), (r3v4 android.database.Cursor) binds: [B:19:0x00c9, B:15:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
    public static ArrayList M(Context context, boolean z7, String str, String str2, String str3, String str4) {
        ArrayList arrayListT0;
        d dVar = new d(context);
        b bVar = new b(context, 1);
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        new ArrayList().clear();
        String str5 = HttpUrl.FRAGMENT_ENCODE_SET;
        String str6 = "ORT_PROFILE_ID";
        int i8 = 0;
        if (z7) {
            arrayListT0 = dVar.u0(str, "0", str2);
        } else if (str3.equals("00000")) {
            arrayListT0 = dVar.f11487H;
            arrayListT0.clear();
            SQLiteDatabase writableDatabase = dVar.getWritableDatabase();
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM vods ORDER BY CAST(stream_id AS NUMBER)  DESC LIMIT 25 ", null);
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        j jVar = new j();
                        jVar.f25483a = cursorRawQuery.getString(0);
                        jVar.f25484b = cursorRawQuery.getString(1);
                        jVar.f25485c = cursorRawQuery.getString(2);
                        jVar.f25486d = cursorRawQuery.getString(3);
                        jVar.f25487e = cursorRawQuery.getString(4);
                        jVar.f25488f = cursorRawQuery.getString(5);
                        jVar.f25489g = cursorRawQuery.getString(6);
                        jVar.f25490h = cursorRawQuery.getString(7);
                        jVar.f25491i = cursorRawQuery.getString(8);
                        jVar.f25492j = cursorRawQuery.getString(9);
                        jVar.f25493k = cursorRawQuery.getString(10);
                        jVar.f25494l = cursorRawQuery.getString(11);
                        arrayListT0.add(jVar);
                    } while (cursorRawQuery.moveToNext());
                }
                if (!cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            } catch (Throwable unused) {
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            }
        } else {
            arrayListT0 = str3.equals("99999") ? dVar.t0(str2, q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET)) : dVar.u0("all", str4, str2);
        }
        while (i8 < arrayListT0.size()) {
            ArrayList arrayList2 = arrayList;
            if (!U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                HashMap map = new HashMap();
                map.put("num", ((j) arrayListT0.get(i8)).f25483a);
                map.put("name", ((j) arrayListT0.get(i8)).f25484b);
                map.put("stream_type", ((j) arrayListT0.get(i8)).f25485c);
                map.put("stream_id", ((j) arrayListT0.get(i8)).f25486d);
                map.put("stream_icon", ((j) arrayListT0.get(i8)).f25487e);
                map.put("rating", ((j) arrayListT0.get(i8)).f25488f);
                map.put("rating_5based", ((j) arrayListT0.get(i8)).f25489g);
                map.put("added", ((j) arrayListT0.get(i8)).f25490h);
                map.put("category_id", ((j) arrayListT0.get(i8)).f25491i);
                map.put("container_extension", ((j) arrayListT0.get(i8)).f25492j);
                map.put("custom_sid", ((j) arrayListT0.get(i8)).f25493k);
                map.put("direct_source", ((j) arrayListT0.get(i8)).f25494l);
                arrayList = arrayList2;
                arrayList.add(map);
            } else if (bVar.N(((j) arrayListT0.get(i8)).f25491i, "VOD", q0.q().c(str6, str5)).equals("yes")) {
                arrayList = arrayList2;
            } else {
                HashMap map2 = new HashMap();
                map2.put("num", ((j) arrayListT0.get(i8)).f25483a);
                map2.put("name", ((j) arrayListT0.get(i8)).f25484b);
                map2.put("stream_type", ((j) arrayListT0.get(i8)).f25485c);
                map2.put("stream_id", ((j) arrayListT0.get(i8)).f25486d);
                map2.put("stream_icon", ((j) arrayListT0.get(i8)).f25487e);
                map2.put("rating", ((j) arrayListT0.get(i8)).f25488f);
                map2.put("rating_5based", ((j) arrayListT0.get(i8)).f25489g);
                map2.put("added", ((j) arrayListT0.get(i8)).f25490h);
                map2.put("category_id", ((j) arrayListT0.get(i8)).f25491i);
                map2.put("container_extension", ((j) arrayListT0.get(i8)).f25492j);
                map2.put("custom_sid", ((j) arrayListT0.get(i8)).f25493k);
                map2.put("direct_source", ((j) arrayListT0.get(i8)).f25494l);
                arrayList = arrayList2;
                arrayList.add(map2);
            }
            i8++;
            str6 = str6;
            str5 = str5;
            bVar = bVar;
        }
        return arrayList;
    }

    public static int N(int i8, int i9, int i10, int[] iArr) {
        while (i9 < i10) {
            if (iArr[i9] == i8) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    public static final InterfaceC0226z O(J j8, boolean z7, N n7) {
        if (j8 instanceof Q) {
            return ((Q) j8).r(z7, n7);
        }
        boolean zJ = n7.j();
        M m7 = new M(n7);
        Q q7 = (Q) j8;
        q7.getClass();
        return q7.r(z7, zJ ? new I(m7) : new C0207f(m7, 1));
    }

    public static boolean P(double d6) {
        return Math.getExponent(d6) <= 1023;
    }

    public static boolean Q(int i8, Object obj) {
        int arity;
        if (!(obj instanceof p155t6.a)) {
            return false;
        }
        if (obj instanceof D6.f) {
            arity = ((D6.f) obj).getArity();
        } else if (obj instanceof C6.a) {
            arity = 0;
        } else if (obj instanceof l) {
            arity = 1;
        } else if (obj instanceof p) {
            arity = 2;
        } else {
            arity = obj instanceof U1.b ? 4 : -1;
        }
        return arity == i8;
    }

    public static boolean R(char c8) {
        return c8 >= 'a' && c8 <= 'z';
    }

    public static void S(String str) {
        if (Log.isLoggable("FIAM.Display", 3)) {
            Log.d("FIAM.Display", str);
        }
    }

    public static void T(String str, float f8) {
        S(str + ": " + f8);
    }

    public static void U(String str, float f8, float f9) {
        S(str + ": (" + f8 + ", " + f9 + ")");
    }

    public static void V(String str) {
        Log.e("FIAM.Display", str);
    }

    public static void W(String str) {
        if (Log.isLoggable("FIAM.Display", 4)) {
            Log.i("FIAM.Display", str);
        }
    }

    public static int X(int i8) {
        if (i8 < 0) {
            return i8;
        }
        if (i8 < 3) {
            return i8 + 1;
        }
        return i8 < 1073741824 ? (int) ((i8 / 0.75f) + 1.0f) : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public static t Y(t tVar) {
        if ((tVar instanceof v) || (tVar instanceof u)) {
            return tVar;
        }
        return tVar instanceof Serializable ? new u(tVar) : new v(tVar);
    }

    public static p185x6.j Z(h hVar, i iVar) {
        q0.h(iVar, "key");
        return q0.c(hVar.getKey(), iVar) ? p185x6.k.f31227G : hVar;
    }

    public static final N6.a a(AbstractC0214m abstractC0214m) {
        h hVarK = abstractC0214m.k(C0215n.f4245H);
        p185x6.j jVarA0 = abstractC0214m;
        if (hVarK == null) {
            jVarA0 = a0(abstractC0214m, new L(null));
        }
        return new N6.a(jVarA0);
    }

    public static p185x6.j a0(h hVar, p185x6.j jVar) {
        q0.h(jVar, "context");
        return q0.D(hVar, jVar);
    }

    public static int d0(long j8) {
        if (j8 > 2147483647L) {
            return com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        if (j8 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j8;
    }

    public static void e(StringBuilder sb, Object obj, l lVar) {
        if (lVar != null) {
            sb.append((CharSequence) lVar.invoke(obj));
            return;
        }
        if (obj == null || (obj instanceof CharSequence)) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    public static void e0(List list, l lVar, int i8, int i9) {
        for (int size = list.size() - 1; size > i9; size--) {
            if (lVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i10 = i9 - 1; i10 >= i8; i10--) {
            list.remove(i10);
        }
    }

    public static List f(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new C4.b(0, iArr.length, iArr);
    }

    public static void f0(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException(U2.l(obj == null ? "null" : obj.getClass().getName(), " cannot be cast to ", str));
        q0.F(k.class.getName(), classCastException);
        throw classCastException;
    }

    public static List g(Object obj) {
        if ((obj instanceof E6.a) && !(obj instanceof E6.b)) {
            f0(obj, "kotlin.collections.MutableList");
            throw null;
        }
        try {
            return (List) obj;
        } catch (ClassCastException e8) {
            q0.F(k.class.getName(), e8);
            throw e8;
        }
    }

    public static int[] g0(Collection collection) {
        if (collection instanceof C4.b) {
            C4.b bVar = (C4.b) collection;
            return Arrays.copyOfRange(bVar.f1630G, bVar.f1631H, bVar.f1632I);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i8 = 0; i8 < length; i8++) {
            Object obj = array[i8];
            obj.getClass();
            iArr[i8] = ((Number) obj).intValue();
        }
        return iArr;
    }

    public static String h(int i8, int i9, String str) {
        if (i8 < 0) {
            return v.n("%s (%s) must not be negative", str, Integer.valueOf(i8));
        }
        if (i9 >= 0) {
            return v.n("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IllegalArgumentException(r.f("negative size: ", i9));
    }

    public static String h0(String str) {
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

    public static void i(p pVar) {
        if (pVar == null || Q(2, pVar)) {
            return;
        }
        f0(pVar, "kotlin.jvm.functions.Function2");
        throw null;
    }

    public static final Map i0(LinkedHashMap linkedHashMap) {
        Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        q0.g(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }

    public static p169v6.i j(p169v6.i iVar) {
        p169v6.f fVar = iVar.f30761G;
        fVar.b();
        return fVar.f30752O > 0 ? iVar : p169v6.i.f30760H;
    }

    public static String j0(String str) {
        int length = str.length();
        int i8 = 0;
        while (i8 < length) {
            if (R(str.charAt(i8))) {
                char[] charArray = str.toCharArray();
                while (i8 < length) {
                    char c8 = charArray[i8];
                    if (R(c8)) {
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

    public static String k0(String str) {
        q0.h(str, "<this>");
        if (!(!I6.k.L0("|"))) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        List listN = e.N(new n(str, 3));
        int length = str.length();
        listN.size();
        int iM = v.m(listN);
        ArrayList arrayList = new ArrayList();
        int i8 = 0;
        for (Object obj : listN) {
            int i9 = i8 + 1;
            String strSubstring = null;
            if (i8 < 0) {
                v.u();
                throw null;
            }
            String str2 = (String) obj;
            if ((i8 != 0 && i8 != iM) || !I6.k.L0(str2)) {
                int length2 = str2.length();
                int i10 = 0;
                while (true) {
                    if (i10 >= length2) {
                        i10 = -1;
                        break;
                    }
                    char cCharAt = str2.charAt(i10);
                    if (!(Character.isWhitespace(cCharAt) || Character.isSpaceChar(cCharAt))) {
                        break;
                    }
                    i10++;
                }
                if (i10 != -1 && I6.k.T0(str2, i10, "|", false)) {
                    strSubstring = str2.substring("|".length() + i10);
                    q0.g(strSubstring, "substring(...)");
                }
                if (strSubstring == null) {
                    strSubstring = str2;
                }
            }
            if (strSubstring != null) {
                arrayList.add(strSubstring);
            }
            i8 = i9;
        }
        StringBuilder sb = new StringBuilder(length);
        o.y(arrayList, sb, "\n", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, -1, "...", null);
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000b  */
    public static Integer l0(String str) {
        byte b8;
        Long lValueOf;
        byte b9;
        str.getClass();
        if (!str.isEmpty()) {
            int i8 = str.charAt(0) == '-' ? 1 : 0;
            if (i8 != str.length()) {
                int i9 = i8 + 1;
                char cCharAt = str.charAt(i8);
                if (cCharAt < 128) {
                    b8 = c.f1633a[cCharAt];
                } else {
                    byte[] bArr = c.f1633a;
                    b8 = -1;
                }
                if (b8 >= 0 && b8 < 10) {
                    long j8 = -b8;
                    long j9 = 10;
                    long j10 = Long.MIN_VALUE / j9;
                    while (true) {
                        if (i9 >= str.length()) {
                            if (i8 == 0) {
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
                        char cCharAt2 = str.charAt(i9);
                        if (cCharAt2 < 128) {
                            b9 = c.f1633a[cCharAt2];
                        } else {
                            byte[] bArr2 = c.f1633a;
                            b9 = -1;
                        }
                        if (b9 >= 0 && b9 < 10 && j8 >= j10) {
                            long j11 = j8 * j9;
                            long j12 = b9;
                            if (j11 >= j12 - Long.MIN_VALUE) {
                                j8 = j11 - j12;
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

    public static int m0(byte[] bArr, int i8, SG sg) throws B2 {
        int iS0 = s0(bArr, i8, sg);
        int i9 = sg.f16417a;
        if (i9 < 0) {
            throw new B2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i9 > bArr.length - iS0) {
            throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i9 == 0) {
            sg.f16419c = AbstractC2576i2.f23165H;
            return iS0;
        }
        sg.f16419c = AbstractC2576i2.p(iS0, bArr, i9);
        return iS0 + i9;
    }

    public static void n(long j8, String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(v.n(str, Long.valueOf(j8)));
        }
    }

    public static int n0(byte[] bArr, int i8) {
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        return ((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16);
    }

    public static void o(String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(str);
        }
    }

    public static int o0(Y2 y7, byte[] bArr, int i8, int i9, int i10, SG sg) throws B2 {
        AbstractC2631s2 abstractC2631s2Zze = y7.zze();
        int iW0 = w0(abstractC2631s2Zze, y7, bArr, i8, i9, i10, sg);
        y7.zzf(abstractC2631s2Zze);
        sg.f16419c = abstractC2631s2Zze;
        return iW0;
    }

    public static void p(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static int p0(Y2 y7, int i8, byte[] bArr, int i9, int i10, InterfaceC2661y2 interfaceC2661y2, SG sg) throws B2 {
        AbstractC2631s2 abstractC2631s2Zze = y7.zze();
        int iX0 = x0(abstractC2631s2Zze, y7, bArr, i9, i10, sg);
        y7.zzf(abstractC2631s2Zze);
        sg.f16419c = abstractC2631s2Zze;
        interfaceC2661y2.add(abstractC2631s2Zze);
        while (iX0 < i10) {
            int iS0 = s0(bArr, iX0, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            AbstractC2631s2 abstractC2631s2Zze2 = y7.zze();
            int iX1 = x0(abstractC2631s2Zze2, y7, bArr, iS0, i10, sg);
            y7.zzf(abstractC2631s2Zze2);
            sg.f16419c = abstractC2631s2Zze2;
            interfaceC2661y2.add(abstractC2631s2Zze2);
            iX0 = iX1;
        }
        return iX0;
    }

    public static void q(boolean z7, String str, Object obj) {
        if (!z7) {
            throw new IllegalArgumentException(v.n(str, obj));
        }
    }

    public static int q0(byte[] bArr, int i8, InterfaceC2661y2 interfaceC2661y2, SG sg) throws B2 {
        C2636t2 c2636t2 = (C2636t2) interfaceC2661y2;
        int iS0 = s0(bArr, i8, sg);
        int i9 = sg.f16417a + iS0;
        while (iS0 < i9) {
            iS0 = s0(bArr, iS0, sg);
            c2636t2.l(sg.f16417a);
        }
        if (iS0 == i9) {
            return iS0;
        }
        throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static void r(int i8, int i9) {
        String strN;
        if (i8 < 0 || i8 >= i9) {
            if (i8 < 0) {
                strN = v.n("%s (%s) must not be negative", "index", Integer.valueOf(i8));
            } else {
                if (i9 < 0) {
                    throw new IllegalArgumentException(r.f("negative size: ", i9));
                }
                strN = v.n("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i8), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strN);
        }
    }

    public static int r0(int i8, byte[] bArr, int i9, int i10, C2535b3 c2535b3, SG sg) throws B2 {
        if ((i8 >>> 3) == 0) {
            throw new B2("Protocol message contained an invalid tag (zero).");
        }
        int i11 = i8 & 7;
        if (i11 == 0) {
            int iV0 = v0(bArr, i9, sg);
            c2535b3.c(i8, Long.valueOf(sg.f16418b));
            return iV0;
        }
        if (i11 == 1) {
            c2535b3.c(i8, Long.valueOf(y0(bArr, i9)));
            return i9 + 8;
        }
        if (i11 == 2) {
            int iS0 = s0(bArr, i9, sg);
            int i12 = sg.f16417a;
            if (i12 < 0) {
                throw new B2("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i12 > bArr.length - iS0) {
                throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i12 == 0) {
                c2535b3.c(i8, AbstractC2576i2.f23165H);
            } else {
                c2535b3.c(i8, AbstractC2576i2.p(iS0, bArr, i12));
            }
            return iS0 + i12;
        }
        if (i11 != 3) {
            if (i11 != 5) {
                throw new B2("Protocol message contained an invalid tag (zero).");
            }
            c2535b3.c(i8, Integer.valueOf(n0(bArr, i9)));
            return i9 + 4;
        }
        int i13 = (i8 & (-8)) | 4;
        C2535b3 c2535b3B = C2535b3.b();
        int i14 = sg.f16420d + 1;
        sg.f16420d = i14;
        if (i14 >= 100) {
            throw new B2("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i15 = 0;
        while (i9 < i10) {
            int iS1 = s0(bArr, i9, sg);
            i15 = sg.f16417a;
            if (i15 == i13) {
                i9 = iS1;
                break;
            }
            i9 = r0(i15, bArr, iS1, i10, c2535b3B, sg);
        }
        sg.f16420d--;
        if (i9 > i10 || i15 != i13) {
            throw new B2("Failed to parse the message.");
        }
        c2535b3.c(i8, c2535b3B);
        return i9;
    }

    public static void s(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(String.valueOf(obj2));
        }
    }

    public static int s0(byte[] bArr, int i8, SG sg) {
        int i9 = i8 + 1;
        byte b8 = bArr[i8];
        if (b8 < 0) {
            return t0(b8, bArr, i9, sg);
        }
        sg.f16417a = b8;
        return i9;
    }

    public static void t(int i8, int i9) {
        if (i8 < 0 || i8 > i9) {
            throw new IndexOutOfBoundsException(h(i8, i9, "index"));
        }
    }

    public static int t0(int i8, byte[] bArr, int i9, SG sg) {
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

    public static void u(int i8, int i9, int i10) {
        String strH;
        if (i8 < 0 || i9 < i8 || i9 > i10) {
            if (i8 < 0 || i8 > i10) {
                strH = h(i8, i10, "start index");
            } else {
                strH = (i9 < 0 || i9 > i10) ? h(i9, i10, "end index") : v.n("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i8));
            }
            throw new IndexOutOfBoundsException(strH);
        }
    }

    public static int u0(int i8, byte[] bArr, int i9, int i10, InterfaceC2661y2 interfaceC2661y2, SG sg) {
        C2636t2 c2636t2 = (C2636t2) interfaceC2661y2;
        int iS0 = s0(bArr, i9, sg);
        c2636t2.l(sg.f16417a);
        while (iS0 < i10) {
            int iS1 = s0(bArr, iS0, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iS0 = s0(bArr, iS1, sg);
            c2636t2.l(sg.f16417a);
        }
        return iS0;
    }

    public static void v(String str, boolean z7) {
        if (!z7) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    public static int v0(byte[] bArr, int i8, SG sg) {
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

    public static void w(boolean z7) {
        if (!z7) {
            throw new IllegalStateException();
        }
    }

    public static int w0(Object obj, Y2 y7, byte[] bArr, int i8, int i9, int i10, SG sg) throws B2 {
        R2 r7 = (R2) y7;
        int i11 = sg.f16420d + 1;
        sg.f16420d = i11;
        if (i11 >= 100) {
            throw new B2("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iO = r7.o(obj, bArr, i8, i9, i10, sg);
        sg.f16420d--;
        sg.f16419c = obj;
        return iO;
    }

    public static void x(boolean z7, String str, Object obj) {
        if (!z7) {
            throw new IllegalStateException(v.n(str, obj));
        }
    }

    public static int x0(Object obj, Y2 y7, byte[] bArr, int i8, int i9, SG sg) throws B2 {
        int iT0 = i8 + 1;
        int i10 = bArr[i8];
        if (i10 < 0) {
            iT0 = t0(i10, bArr, iT0, sg);
            i10 = sg.f16417a;
        }
        int i11 = iT0;
        if (i10 < 0 || i10 > i9 - i11) {
            throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i12 = sg.f16420d + 1;
        sg.f16420d = i12;
        if (i12 >= 100) {
            throw new B2("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i13 = i10 + i11;
        y7.c(obj, bArr, i11, i13, sg);
        sg.f16420d--;
        sg.f16419c = obj;
        return i13;
    }

    public static int y(long j8) {
        int i8 = (int) j8;
        n(j8, "Out of range: %s", ((long) i8) == j8);
        return i8;
    }

    public static long y0(byte[] bArr, int i8) {
        return (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48) | ((((long) bArr[i8 + 7]) & 255) << 56);
    }

    public static int z(int i8, int i9) {
        int i10 = i8 - i9;
        if (i10 > i9) {
            i10 = i9;
            i9 = i10;
        }
        int i11 = 1;
        int i12 = 1;
        while (i8 > i9) {
            i11 *= i8;
            if (i12 <= i10) {
                i11 /= i12;
                i12++;
            }
            i8--;
        }
        while (i12 <= i10) {
            i11 /= i12;
            i12++;
        }
        return i11;
    }

    public abstract void b0(g gVar, g gVar2);

    @Override // androidx.leanback.transition.f
    public float c(View view) {
        return view.getTranslationY();
    }

    public abstract void c0(g gVar, Thread thread);

    @Override // androidx.leanback.transition.f
    public Property d() {
        return View.TRANSLATION_Y;
    }

    public abstract boolean k(p112o2.h hVar, p112o2.c cVar, p112o2.c cVar2);

    public abstract boolean l(p112o2.h hVar, Object obj, Object obj2);

    public abstract boolean m(p112o2.h hVar, g gVar, g gVar2);
}
