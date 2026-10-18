package com.bumptech.glide;

import W0.L;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import android.view.KeyEvent;
import com.google.android.gms.cast.framework.media.internal.ResourceProvider;
import com.google.android.gms.internal.ads.C0890Qd;
import com.google.android.gms.internal.ads.C1806p2;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Vy;
import com.google.android.gms.internal.ads.XB;
import com.google.android.gms.internal.ads.Xu;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParserException;
import p052g4.r;
import p090l3.C3099q;
import p113o3.O;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static C1806p2 A(C1806p2 c1806p2, String[] strArr, Map map) {
        int length;
        int i8 = 0;
        if (c1806p2 == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (C1806p2) map.get(strArr[0]);
            }
            if (length2 > 1) {
                C1806p2 c1806p3 = new C1806p2();
                while (i8 < length2) {
                    c1806p3.b((C1806p2) map.get(strArr[i8]));
                    i8++;
                }
                return c1806p3;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                c1806p2.b((C1806p2) map.get(strArr[0]));
                return c1806p2;
            }
            if (strArr != null && (length = strArr.length) > 1) {
                while (i8 < length) {
                    c1806p2.b((C1806p2) map.get(strArr[i8]));
                    i8++;
                }
            }
        }
        return c1806p2;
    }

    public static Vy B(p052g4.h hVar) {
        Vy vy = new Vy();
        vy.f17140N = hVar;
        XB xb = XB.f17385G;
        Xu xu = new Xu(vy, 15);
        r rVar = (r) hVar;
        rVar.getClass();
        rVar.f25370b.i(new p052g4.o((Executor) xb, (p052g4.d) xu));
        rVar.o();
        return vy;
    }

    public static boolean C(Bundle bundle, Bundle bundle2) {
        if (bundle != null && bundle2 != null) {
            if (bundle.size() != bundle2.size()) {
                return false;
            }
            for (String str : bundle.keySet()) {
                if (!bundle2.containsKey(str)) {
                    return false;
                }
                Object obj = bundle.get(str);
                Object obj2 = bundle2.get(str);
                if (obj == null || obj2 == null) {
                    bundle2 = obj2;
                    bundle = obj;
                } else if (obj instanceof Bundle) {
                    if (!(obj2 instanceof Bundle) || !C((Bundle) obj, (Bundle) obj2)) {
                        return false;
                    }
                } else if (obj.getClass().isArray()) {
                    int length = Array.getLength(obj);
                    if (!obj2.getClass().isArray() || length != Array.getLength(obj2)) {
                        return false;
                    }
                    for (int i8 = 0; i8 < length; i8++) {
                        if (!U4.a.c(Array.get(obj, i8), Array.get(obj2, i8))) {
                            return false;
                        }
                    }
                } else if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return true;
        }
        return bundle == null && bundle2 == null;
    }

    public static String D(String str, Context context, boolean z7, HashMap map) {
        C0890Qd c0890Qd;
        String strA;
        J7 j8 = Q7.f15867k0;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && !z7) {
            return str;
        }
        p083k3.l lVar = p083k3.l.f25980A;
        if (!lVar.f26003w.e(context) || TextUtils.isEmpty(str) || (strA = (c0890Qd = lVar.f26003w).a(context)) == null) {
            return str;
        }
        J7 j9 = Q7.f15805d0;
        O7 o7 = c3099q.f26627c;
        String str2 = (String) o7.a(j9);
        boolean zBooleanValue = ((Boolean) o7.a(Q7.f15796c0)).booleanValue();
        O o4 = lVar.f25983c;
        if (zBooleanValue && str.contains(str2)) {
            o4.getClass();
            if (O.u(str, o4.f27925a, (String) c3099q.f26627c.a(Q7.f15770Z))) {
                Map map2 = (Map) map.get("_ac");
                c0890Qd.getClass();
                c0890Qd.k(context, "_ac", strA, C0890Qd.f(map2));
                return F(context, str).replace(str2, strA);
            }
            o4.getClass();
            if (!O.u(str, o4.f27926b, (String) c3099q.f26627c.a(Q7.f15778a0))) {
                return str;
            }
            Map map3 = (Map) map.get("_ai");
            c0890Qd.getClass();
            c0890Qd.k(context, "_ai", strA, C0890Qd.f(map3));
            return F(context, str).replace(str2, strA);
        }
        if (str.contains("fbs_aeid") || ((Boolean) o7.a(Q7.f15787b0)).booleanValue()) {
            return str;
        }
        o4.getClass();
        if (O.u(str, o4.f27925a, (String) c3099q.f26627c.a(Q7.f15770Z))) {
            Map map4 = (Map) map.get("_ac");
            c0890Qd.getClass();
            c0890Qd.k(context, "_ac", strA, C0890Qd.f(map4));
            return y(F(context, str), "fbs_aeid", strA).toString();
        }
        o4.getClass();
        if (!O.u(str, o4.f27926b, (String) c3099q.f26627c.a(Q7.f15778a0))) {
            return str;
        }
        Map map5 = (Map) map.get("_ai");
        c0890Qd.getClass();
        c0890Qd.k(context, "_ai", strA, C0890Qd.f(map5));
        return y(F(context, str), "fbs_aeid", strA).toString();
    }

    public static void E(String str, String str2, Bundle bundle) {
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    public static String F(Context context, String str) {
        p083k3.l lVar = p083k3.l.f25980A;
        String strC = lVar.f26003w.c(context);
        String strB = lVar.f26003w.b(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(strC)) {
            str = y(str, "gmp_app_id", strC).toString();
        }
        return (str.contains("fbs_aiid") || TextUtils.isEmpty(strB)) ? str : y(str, "fbs_aiid", strB).toString();
    }

    public static Pair G(RandomAccessFile randomAccessFile, int i8) throws IOException {
        int i9;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(((int) Math.min(i8, (-22) + length)) + 22);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        long jCapacity = length - ((long) byteBufferAllocate.capacity());
        randomAccessFile.seek(jCapacity);
        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
        J(byteBufferAllocate);
        int iCapacity = byteBufferAllocate.capacity();
        if (iCapacity >= 22) {
            int i10 = iCapacity - 22;
            int iMin = Math.min(i10, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            int i11 = 0;
            while (true) {
                if (i11 >= iMin) {
                    i9 = -1;
                    break;
                }
                i9 = i10 - i11;
                if (byteBufferAllocate.getInt(i9) == 101010256 && ((char) byteBufferAllocate.getShort(i9 + 20)) == i11) {
                    break;
                }
                i11++;
            }
        } else {
            i9 = -1;
            break;
        }
        if (i9 == -1) {
            return null;
        }
        byteBufferAllocate.position(i9);
        ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
        byteBufferSlice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(byteBufferSlice, Long.valueOf(jCapacity + ((long) i9)));
    }

    public static void H(Bundle bundle, String str, String str2, boolean z7) {
        if (!z7 || str2 == null) {
            return;
        }
        bundle.putString(str, str2);
    }

    public static void I(Bundle bundle, String str, boolean z7, boolean z8) {
        if (z8) {
            bundle.putBoolean(str, z7);
        }
    }

    public static void J(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static void a(String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(String.valueOf(str));
        }
    }

    public static void b(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static void c(X3.d dVar) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != dVar.getLooper()) {
            throw new IllegalStateException(A0.O.C("Must be called on ", dVar.getLooper().getThread().getName(), " thread, but got ", looperMyLooper != null ? looperMyLooper.getThread().getName() : "null current looper", "."));
        }
    }

    public static void d(String str) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void e(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
    }

    public static void f(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void g(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void h(Object obj) {
        if (obj == null) {
            throw new NullPointerException("null reference");
        }
    }

    public static void i(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void j(String str, boolean z7) {
        if (!z7) {
            throw new IllegalStateException(str);
        }
    }

    public static void k(boolean z7) {
        if (!z7) {
            throw new IllegalStateException();
        }
    }

    public static void l(long j8, E e8, L[] lArr) {
        int i8;
        int iZ;
        while (true) {
            if (e8.a() <= 1) {
                return;
            }
            int i9 = 0;
            while (true) {
                if (e8.a() == 0) {
                    i8 = -1;
                    break;
                }
                int iZ2 = e8.z();
                i9 += iZ2;
                if (iZ2 != 255) {
                    i8 = i9;
                    break;
                }
            }
            int i10 = 0;
            do {
                if (e8.a() == 0) {
                    i10 = -1;
                    break;
                } else {
                    iZ = e8.z();
                    i10 += iZ;
                }
            } while (iZ == 255);
            int i11 = e8.f28036b + i10;
            if (i10 == -1 || i10 > e8.a()) {
                x.f("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i11 = e8.f28037c;
            } else if (i8 == 4 && i10 >= 8) {
                int iZ3 = e8.z();
                int iF = e8.F();
                int iL = iF == 49 ? e8.l() : 0;
                int iZ4 = e8.z();
                if (iF == 47) {
                    e8.M(1);
                }
                boolean z7 = iZ3 == 181 && (iF == 49 || iF == 47) && iZ4 == 3;
                if (iF == 49) {
                    z7 &= iL == 1195456820;
                }
                if (z7) {
                    m(j8, e8, lArr);
                }
            }
            e8.L(i11);
        }
    }

    public static void m(long j8, E e8, L[] lArr) {
        int iZ = e8.z();
        if ((iZ & 64) != 0) {
            e8.M(1);
            int i8 = (iZ & 31) * 3;
            int i9 = e8.f28036b;
            for (L l4 : lArr) {
                e8.L(i9);
                l4.e(i8, e8);
                H1.i(j8 != -9223372036854775807L);
                l4.d(j8, 1, i8, 0, null);
            }
        }
    }

    public static boolean n(Editable editable, KeyEvent keyEvent, boolean z7) {
        U.b[] bVarArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (bVarArr = (U.b[]) editable.getSpans(selectionStart, selectionEnd, U.b.class)) != null && bVarArr.length > 0) {
            for (U.b bVar : bVarArr) {
                int spanStart = editable.getSpanStart(null);
                int spanEnd = editable.getSpanEnd(null);
                if ((z7 && spanStart == selectionStart) || ((!z7 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean o(String str) {
        p019c2.b bVar = p019c2.n.f10634a;
        Set<p019c2.f> setUnmodifiableSet = Collections.unmodifiableSet(p019c2.c.f10625c);
        HashSet hashSet = new HashSet();
        for (p019c2.f fVar : setUnmodifiableSet) {
            if (((p019c2.c) fVar).f10626a.equals(str)) {
                hashSet.add(fVar);
            }
        }
        if (hashSet.isEmpty()) {
            throw new RuntimeException("Unknown feature ".concat(str));
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            p019c2.c cVar = (p019c2.c) ((p019c2.f) it.next());
            if (cVar.a() || cVar.b()) {
                return true;
            }
        }
        return false;
    }

    public static String p(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i8 = 0; i8 < str.length(); i8++) {
            sb.append(str.charAt(i8));
            if (str2.length() > i8) {
                sb.append(str2.charAt(i8));
            }
        }
        return sb.toString();
    }

    public static void q(p126q1.d dVar, int i8, InterfaceC3172j interfaceC3172j) {
        long jB = dVar.b(i8);
        List listC = dVar.c(jB);
        if (listC.isEmpty()) {
            return;
        }
        if (i8 == dVar.d() - 1) {
            throw new IllegalStateException();
        }
        long jB2 = dVar.b(i8 + 1) - dVar.b(i8);
        if (jB2 > 0) {
            interfaceC3172j.accept(new p126q1.a(listC, jB, jB2));
        }
    }

    public static F.e r(XmlResourceParser xmlResourceParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlResourceParser.require(2, null, "font-family");
        if (xmlResourceParser.getName().equals("font-family")) {
            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), C.a.f1222b);
            String string = typedArrayObtainAttributes.getString(0);
            String string2 = typedArrayObtainAttributes.getString(5);
            String string3 = typedArrayObtainAttributes.getString(6);
            String string4 = typedArrayObtainAttributes.getString(2);
            int resourceId = typedArrayObtainAttributes.getResourceId(1, 0);
            int integer = typedArrayObtainAttributes.getInteger(3, 1);
            int integer2 = typedArrayObtainAttributes.getInteger(4, 500);
            String string5 = typedArrayObtainAttributes.getString(7);
            typedArrayObtainAttributes.recycle();
            if (string != null && string2 != null && string3 != null) {
                while (xmlResourceParser.next() != 3) {
                    u(xmlResourceParser);
                }
                List listS = s(resources, resourceId);
                return new F.h(new K.f(string, string2, string3, listS), string4 != null ? new K.f(string, string2, string4, listS) : null, integer, integer2, string5);
            }
            ArrayList arrayList = new ArrayList();
            while (xmlResourceParser.next() != 3) {
                if (xmlResourceParser.getEventType() == 2) {
                    if (xmlResourceParser.getName().equals("font")) {
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), C.a.f1223c);
                        int i8 = typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(8) ? 8 : 1, 400);
                        boolean z7 = 1 == typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(6) ? 6 : 2, 0);
                        int i9 = typedArrayObtainAttributes2.hasValue(9) ? 9 : 3;
                        String string6 = typedArrayObtainAttributes2.getString(typedArrayObtainAttributes2.hasValue(7) ? 7 : 4);
                        int i10 = typedArrayObtainAttributes2.getInt(i9, 0);
                        int i11 = typedArrayObtainAttributes2.hasValue(5) ? 5 : 0;
                        int resourceId2 = typedArrayObtainAttributes2.getResourceId(i11, 0);
                        String string7 = typedArrayObtainAttributes2.getString(i11);
                        typedArrayObtainAttributes2.recycle();
                        while (xmlResourceParser.next() != 3) {
                            u(xmlResourceParser);
                        }
                        arrayList.add(new F.g(i8, i10, resourceId2, string7, string6, z7));
                    } else {
                        u(xmlResourceParser);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                return new F.f((F.g[]) arrayList.toArray(new F.g[0]));
            }
        } else {
            u(xmlResourceParser);
        }
        return null;
    }

    public static List s(Resources resources, int i8) {
        if (i8 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i8);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (typedArrayObtainTypedArray.getType(0) == 1) {
                for (int i9 = 0; i9 < typedArrayObtainTypedArray.length(); i9++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i9, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i8);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    public static void u(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        int i8 = 1;
        while (i8 > 0) {
            int next = xmlResourceParser.next();
            if (next == 2) {
                i8++;
            } else if (next == 3) {
                i8--;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    public static void v(p126q1.d dVar, p126q1.l lVar, InterfaceC3172j interfaceC3172j) {
        int iA;
        boolean z7;
        long j8 = lVar.f29557a;
        if (j8 == -9223372036854775807L) {
            iA = 0;
        } else {
            iA = dVar.a(j8);
            if (iA == -1) {
                iA = dVar.d();
            }
            if (iA > 0 && dVar.b(iA - 1) == j8) {
                iA--;
            }
        }
        if (j8 == -9223372036854775807L || iA >= dVar.d()) {
            z7 = false;
        } else {
            List listC = dVar.c(j8);
            long jB = dVar.b(iA);
            if (listC.isEmpty()) {
                z7 = false;
            } else {
                long j9 = lVar.f29557a;
                if (j9 < jB) {
                    interfaceC3172j.accept(new p126q1.a(listC, j9, jB - j9));
                    z7 = true;
                } else {
                    z7 = false;
                }
            }
        }
        for (int i8 = iA; i8 < dVar.d(); i8++) {
            q(dVar, i8, interfaceC3172j);
        }
        if (lVar.f29558b) {
            if (z7) {
                iA--;
            }
            for (int i9 = 0; i9 < iA; i9++) {
                q(dVar, i9, interfaceC3172j);
            }
            if (z7) {
                interfaceC3172j.accept(new p126q1.a(dVar.c(j8), dVar.b(iA), j8 - dVar.b(iA)));
            }
        }
    }

    public static int w(int i8) {
        int[] iArr = {1, 2, 3};
        for (int i9 = 0; i9 < 3; i9++) {
            int i10 = iArr[i9];
            int i11 = i10 - 1;
            if (i10 == 0) {
                throw null;
            }
            if (i11 == i8) {
                return i10;
            }
        }
        return 1;
    }

    public static int x(String str) {
        try {
            Map map = ResourceProvider.f11738a;
            Integer num = (Integer) ResourceProvider.class.getMethod("findResourceByName", String.class).invoke(null, str);
            if (num == null) {
                return 0;
            }
            return num.intValue();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return 0;
        }
    }

    public static Uri y(String str, String str2, String str3) {
        int iIndexOf = str.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("?adurl");
        }
        if (iIndexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i8 = iIndexOf + 1;
        StringBuilder sb = new StringBuilder(str.substring(0, i8));
        p148t.a.h(sb, str2, "=", str3, "&");
        sb.append(str.substring(i8));
        return Uri.parse(sb.toString());
    }

    public static Bundle z(String str, Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(str);
        return bundle2 == null ? new Bundle() : bundle2;
    }

    public abstract void t(int i8, int i9, Object[] objArr);
}
