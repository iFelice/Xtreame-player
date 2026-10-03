package com.bumptech.glide;

import N6.u;
import O1.AbstractC0326z;
import O1.L;
import O1.Y;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import p000a.y;
import p027d2.v;
import p094m0.N;
import p117p0.M;
import p135r2.r;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Field f11504a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f11505b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f11506c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f11507d = true;

    public static void a(Throwable th, Throwable th2) {
        q0.h(th, "<this>");
        q0.h(th2, "exception");
        if (th != th2) {
            Integer num = B6.a.f1220a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = A6.a.f657a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static int b(V.b bVar, boolean z7) {
        int i8 = z7 ? bVar.f6994c : bVar.f6993b;
        int i9 = z7 ? bVar.f6993b : bVar.f6994c;
        byte[][] bArr = (byte[][]) bVar.f6995d;
        int i10 = 0;
        for (int i11 = 0; i11 < i8; i11++) {
            byte b8 = -1;
            int i12 = 0;
            for (int i13 = 0; i13 < i9; i13++) {
                byte b9 = z7 ? bArr[i11][i13] : bArr[i13][i11];
                if (b9 == b8) {
                    i12++;
                } else {
                    if (i12 >= 5) {
                        i10 += i12 - 2;
                    }
                    b8 = b9;
                    i12 = 1;
                }
            }
            if (i12 >= 5) {
                i10 = (i12 - 2) + i10;
            }
        }
        return i10;
    }

    public static int c(Y y7, AbstractC0326z abstractC0326z, View view, View view2, L l4, boolean z7) {
        if (l4.x() == 0 || y7.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z7) {
            return Math.abs(L.M(view) - L.M(view2)) + 1;
        }
        return Math.min(abstractC0326z.i(), abstractC0326z.b(view2) - abstractC0326z.d(view));
    }

    public static int d(Y y7, AbstractC0326z abstractC0326z, View view, View view2, L l4, boolean z7, boolean z8) {
        if (l4.x() == 0 || y7.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z8 ? Math.max(0, (y7.b() - Math.max(L.M(view), L.M(view2))) - 1) : Math.max(0, Math.min(L.M(view), L.M(view2)));
        if (z7) {
            return Math.round((iMax * (Math.abs(abstractC0326z.b(view2) - abstractC0326z.d(view)) / (Math.abs(L.M(view) - L.M(view2)) + 1))) + (abstractC0326z.h() - abstractC0326z.d(view)));
        }
        return iMax;
    }

    public static int e(Y y7, AbstractC0326z abstractC0326z, View view, View view2, L l4, boolean z7) {
        if (l4.x() == 0 || y7.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z7) {
            return y7.b();
        }
        return (int) (((abstractC0326z.b(view2) - abstractC0326z.d(view)) / (Math.abs(L.M(view) - L.M(view2)) + 1)) * y7.b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] f(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i8 = 0; i8 < iArr.length; i8++) {
            jArr[i8] = iArr[i8];
        }
        return jArr;
    }

    public static InvocationHandler i() {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = p019c2.e.b();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", new Class[0]);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, new Object[0]).getClass().getClassLoader();
            } catch (IllegalAccessException e8) {
                throw new RuntimeException(e8);
            } catch (NoSuchMethodException e9) {
                throw new RuntimeException(e9);
            } catch (InvocationTargetException e10) {
                throw new RuntimeException(e10);
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", new Class[0]).invoke(null, new Object[0]);
    }

    public static Drawable j(Context context, Context context2, int i8, Resources.Theme theme) {
        try {
            if (f11507d) {
                return n(context2, i8, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e8) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e8;
            }
            return context2.getDrawable(i8);
        } catch (NoClassDefFoundError unused2) {
            f11507d = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        Resources resources = context2.getResources();
        ThreadLocal threadLocal = F.n.f2990a;
        return resources.getDrawable(i8, theme);
    }

    public static p148t.l k(p148t.j jVar) {
        p148t.i iVar = new p148t.i();
        iVar.f30161c = new p148t.m();
        p148t.l lVar = new p148t.l(iVar);
        iVar.f30160b = lVar;
        iVar.f30159a = jVar.getClass();
        try {
            Object objB = jVar.b(iVar);
            if (objB != null) {
                iVar.f30159a = objB;
            }
        } catch (Exception e8) {
            lVar.f30165H.j(e8);
        }
        return lVar;
    }

    public static p135r2.i l(p135r2.k kVar, long j8, List list) {
        p135r2.b bVar = kVar.f29824R;
        if (bVar == null) {
            return new p135r2.i(304, (byte[]) null, true, j8, list);
        }
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(((p135r2.f) it.next()).f29797a);
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List list2 = bVar.f29788h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (p135r2.f fVar : bVar.f29788h) {
                    if (!treeSet.contains(fVar.f29797a)) {
                        arrayList.add(fVar);
                    }
                }
            }
        } else if (!bVar.f29787g.isEmpty()) {
            for (Map.Entry entry : bVar.f29787g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new p135r2.f((String) entry.getKey(), (String) entry.getValue()));
                }
            }
        }
        return new p135r2.i(304, bVar.f29781a, true, j8, (List) arrayList);
    }

    public static byte[] m(InputStream inputStream, int i8, p143s2.a aVar) throws Throwable {
        byte[] bArrA;
        p143s2.h hVar = new p143s2.h(aVar, i8);
        try {
            bArrA = aVar.a(1024);
            while (true) {
                try {
                    int i9 = inputStream.read(bArrA);
                    if (i9 == -1) {
                        break;
                    }
                    hVar.write(bArrA, 0, i9);
                } catch (Throwable th) {
                    th = th;
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        r.d("Error occurred when closing InputStream", new Object[0]);
                    }
                    aVar.b(bArrA);
                    hVar.close();
                    throw th;
                }
            }
            byte[] byteArray = hVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                r.d("Error occurred when closing InputStream", new Object[0]);
            }
            aVar.b(bArrA);
            hVar.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArrA = null;
        }
    }

    public static Drawable n(Context context, int i8, Resources.Theme theme) {
        if (theme != null) {
            p071j.d dVar = new p071j.d(context, theme);
            dVar.a(theme.getResources().getConfiguration());
            context = dVar;
        }
        return J6.r.h(context, i8);
    }

    public static void o(long j8, p135r2.k kVar, byte[] bArr, int i8) {
        if (r.f29844a || j8 > 3000) {
            Object[] objArr = new Object[5];
            objArr[0] = kVar;
            objArr[1] = Long.valueOf(j8);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(i8);
            objArr[4] = Integer.valueOf(kVar.f29823Q.f631b);
            r.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    public static final void p(View view, y yVar) {
        q0.h(view, "<this>");
        q0.h(yVar, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, yVar);
    }

    public static boolean q(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i8 = 0; i8 < bArr2.length; i8++) {
            if (bArr[i8] != bArr2[i8]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0055  */
    /* JADX WARN: Code duplicated, block: B:30:0x0060  */
    /* JADX WARN: Code duplicated, block: B:32:0x0064  */
    /* JADX WARN: Code duplicated, block: B:34:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0077  */
    /* JADX WARN: Code duplicated, block: B:41:0x0089 A[LOOP:0: B:26:0x0053->B:41:0x0089, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x0093  */
    /* JADX WARN: Code duplicated, block: B:45:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x0020 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0022 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0022 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0020 A[SYNTHETIC] */
    public static final long r(String str, long j8, long j9, long j10) {
        String property;
        boolean z7;
        long j11;
        long j12;
        String str2;
        Long lValueOf;
        int iDigit;
        long j13;
        long j14;
        int i8 = u.f4999a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j8;
        }
        v.f(10);
        int length = property.length();
        if (length == 0) {
            str2 = property;
            lValueOf = null;
        } else {
            int i9 = 0;
            char cCharAt = property.charAt(0);
            long j15 = -9223372036854775807L;
            if (q0.l(cCharAt, 48) < 0) {
                z7 = true;
                if (length != 1) {
                    if (cCharAt != '+') {
                        if (cCharAt == '-') {
                            j15 = Long.MIN_VALUE;
                            i9 = 1;
                            j11 = 0;
                            j12 = -256204778801521550L;
                            while (true) {
                                if (i9 >= length) {
                                    str2 = property;
                                    if (z7) {
                                        lValueOf = Long.valueOf(j11);
                                    } else {
                                        lValueOf = Long.valueOf(-j11);
                                    }
                                } else {
                                    iDigit = Character.digit((int) property.charAt(i9), 10);
                                    if (iDigit >= 0) {
                                        if (j11 >= j12) {
                                            str2 = property;
                                        } else if (j12 == -256204778801521550L) {
                                            str2 = property;
                                            j12 = j15 / ((long) 10);
                                            if (j11 < j12) {
                                            }
                                        }
                                        j13 = j11 * ((long) 10);
                                        j14 = iDigit;
                                        if (j13 >= j15 + j14) {
                                            j11 = j13 - j14;
                                            i9++;
                                            property = str2;
                                        }
                                    }
                                }
                            }
                        }
                        lValueOf = null;
                    } else {
                        i9 = 1;
                        z7 = false;
                        j11 = 0;
                        j12 = -256204778801521550L;
                        while (true) {
                            if (i9 >= length) {
                                str2 = property;
                                if (z7) {
                                    lValueOf = Long.valueOf(j11);
                                } else {
                                    lValueOf = Long.valueOf(-j11);
                                }
                            } else {
                                iDigit = Character.digit((int) property.charAt(i9), 10);
                                if (iDigit >= 0) {
                                    if (j11 >= j12) {
                                        if (j12 == -256204778801521550L) {
                                            str2 = property;
                                            j12 = j15 / ((long) 10);
                                            if (j11 < j12) {
                                            }
                                        }
                                        lValueOf = null;
                                    } else {
                                        str2 = property;
                                    }
                                    j13 = j11 * ((long) 10);
                                    j14 = iDigit;
                                    if (j13 >= j15 + j14) {
                                        lValueOf = null;
                                    } else {
                                        j11 = j13 - j14;
                                        i9++;
                                        property = str2;
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                z7 = false;
                j11 = 0;
                j12 = -256204778801521550L;
                while (true) {
                    if (i9 >= length) {
                        str2 = property;
                        if (z7) {
                            lValueOf = Long.valueOf(j11);
                        } else {
                            lValueOf = Long.valueOf(-j11);
                        }
                    } else {
                        iDigit = Character.digit((int) property.charAt(i9), 10);
                        if (iDigit >= 0) {
                            if (j11 >= j12) {
                                if (j12 == -256204778801521550L) {
                                    str2 = property;
                                    j12 = j15 / ((long) 10);
                                    if (j11 < j12) {
                                    }
                                }
                                lValueOf = null;
                            } else {
                                str2 = property;
                            }
                            j13 = j11 * ((long) 10);
                            j14 = iDigit;
                            if (j13 >= j15 + j14) {
                                lValueOf = null;
                            } else {
                                j11 = j13 - j14;
                                i9++;
                                property = str2;
                            }
                        }
                    }
                }
            }
            str2 = property;
            lValueOf = null;
        }
        if (lValueOf == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + str2 + '\'').toString());
        }
        long jLongValue = lValueOf.longValue();
        if (j9 <= jLongValue && jLongValue <= j10) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j9 + ".." + j10 + ", but is '" + jLongValue + '\'').toString());
    }

    public static int s(String str, int i8, int i9, int i10, int i11) {
        if ((i11 & 4) != 0) {
            i9 = 1;
        }
        if ((i11 & 8) != 0) {
            i10 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        return (int) r(str, i8, i9, i10);
    }

    public static String t(int i8) {
        Object[] objArr = {Integer.valueOf(Color.red(i8)), Integer.valueOf(Color.green(i8)), Integer.valueOf(Color.blue(i8)), Double.valueOf(((double) Color.alpha(i8)) / 255.0d)};
        String str = M.f28050a;
        return String.format(Locale.US, "rgba(%d,%d,%d,%.3f)", objArr);
    }

    public N g(p033e1.a aVar) {
        ByteBuffer byteBuffer = aVar.f30904I;
        byteBuffer.getClass();
        H1.d(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        return h(aVar, byteBuffer);
    }

    public abstract N h(p033e1.a aVar, ByteBuffer byteBuffer);
}
