package com.google.android.gms.internal.measurement;

import C0.C0079d;
import J6.C0222v;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import android.util.Base64;
import android.util.Log;
import android.widget.PopupWindow;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.AbstractC1040aC;
import com.google.android.gms.internal.ads.AbstractC1656m8;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C1335fy;
import com.google.android.gms.internal.ads.C1496j4;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC1234e0;
import com.google.android.gms.internal.ads.Ow;
import com.google.android.gms.internal.ads.Rw;
import com.google.android.gms.internal.ads.Tw;
import com.google.android.gms.internal.ads.Ux;
import com.google.android.gms.internal.ads.Yv;
import com.google.android.gms.internal.ads.Zo;
import com.google.protobuf.DescriptorProtos$FileOptions;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p034e2.C2985a;

/* JADX INFO: loaded from: classes.dex */
public abstract class H1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static G1 f22929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f22930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f22931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Field f22932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f22933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Method f22934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f22935g;

    public static boolean A(int i8, p117p0.E e8, boolean z7) throws p094m0.P {
        if (e8.a() < 7) {
            if (z7) {
                return false;
            }
            throw p094m0.P.a("too short header: " + e8.a(), null);
        }
        if (e8.z() != i8) {
            if (z7) {
                return false;
            }
            throw p094m0.P.a("expected header type " + Integer.toHexString(i8), null);
        }
        if (e8.z() == 118 && e8.z() == 111 && e8.z() == 114 && e8.z() == 98 && e8.z() == 105 && e8.z() == 115) {
            return true;
        }
        if (z7) {
            return false;
        }
        throw p094m0.P.a("expected characters 'vorbis'", null);
    }

    public static int B(int i8) {
        switch (i8) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            case 9:
                return 10;
            case 10:
                return 11;
            case 11:
                return 12;
            case 12:
                return 13;
            case 13:
                return 14;
            default:
                return 0;
        }
    }

    public static C1496j4 C(Context context, String str, String str2) {
        C1496j4 c1496j4;
        try {
            c1496j4 = (C1496j4) new C1335fy(context, str, str2).f18853d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            c1496j4 = null;
        }
        return c1496j4 == null ? C1335fy.a() : c1496j4;
    }

    public static void D(long j8, C1534jr c1534jr, InterfaceC1234e0[] interfaceC1234e0Arr) {
        int i8;
        int iR;
        int iW;
        while (true) {
            if (c1534jr.o() <= 1) {
                return;
            }
            int i9 = 0;
            while (true) {
                if (c1534jr.o() == 0) {
                    i8 = -1;
                    break;
                }
                int iW2 = c1534jr.w();
                i9 += iW2;
                if (iW2 != 255) {
                    i8 = i9;
                    break;
                }
            }
            int i10 = 0;
            do {
                if (c1534jr.o() == 0) {
                    i10 = -1;
                    break;
                } else {
                    iW = c1534jr.w();
                    i10 += iW;
                }
            } while (iW == 255);
            int i11 = c1534jr.f19516b + i10;
            if (i10 == -1 || i10 > c1534jr.o()) {
                Zo.f("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i11 = c1534jr.f19517c;
            } else if (i8 == 4 && i10 >= 8) {
                int iW3 = c1534jr.w();
                int iA = c1534jr.A();
                if (iA == 49) {
                    iR = c1534jr.r();
                    iA = 49;
                } else {
                    iR = 0;
                }
                int iW4 = c1534jr.w();
                if (iA == 47) {
                    c1534jr.k(1);
                    iA = 47;
                }
                boolean z7 = iW3 == 181 && (iA == 49 || iA == 47) && iW4 == 3;
                if (iA == 49) {
                    z7 &= iR == 1195456820;
                }
                if (z7) {
                    H(j8, c1534jr, interfaceC1234e0Arr);
                }
            }
            c1534jr.j(i11);
        }
    }

    public static boolean E(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static final Intent F(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }

    public static Object G(Context context, String str, p120p3.i iVar) throws p120p3.j {
        try {
            return iVar.zza(J(context).b(str));
        } catch (Exception e8) {
            throw new p120p3.j(e8);
        }
    }

    public static void H(long j8, C1534jr c1534jr, InterfaceC1234e0[] interfaceC1234e0Arr) {
        int iW = c1534jr.w();
        if ((iW & 64) != 0) {
            int i8 = iW & 31;
            c1534jr.k(1);
            int i9 = c1534jr.f19516b;
            for (InterfaceC1234e0 interfaceC1234e0 : interfaceC1234e0Arr) {
                int i10 = i8 * 3;
                c1534jr.j(i9);
                interfaceC1234e0.f(i10, c1534jr);
                p113o3.r.M(j8 != -9223372036854775807L);
                interfaceC1234e0.b(j8, 1, i10, 0, null);
            }
        }
    }

    public static synchronized void I(Ux ux) {
        if (f22929a != null) {
            throw new IllegalStateException("init() already called");
        }
        f22929a = ux;
    }

    public static S3.c J(Context context) throws p120p3.j {
        try {
            return S3.c.c(context, S3.c.f6415b, ModuleDescriptor.MODULE_ID);
        } catch (Exception e8) {
            throw new p120p3.j(e8);
        }
    }

    public static final ResolveInfo K(Intent intent, ArrayList arrayList, Context context) {
        ResolveInfo resolveInfo = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
                for (int i8 = 0; i8 < listQueryIntentActivities.size(); i8++) {
                    if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i8).activityInfo.name)) {
                        resolveInfo = resolveInfoResolveActivity;
                        break;
                    }
                }
            }
            arrayList.addAll(listQueryIntentActivities);
        } catch (Throwable th) {
            p083k3.l.f25980A.f25987g.i("OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent", th);
        }
        return resolveInfo;
    }

    public static void L(D4.b bVar, Ow ow) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            Cw.h2(AbstractC1040aC.r(bVar), new Rw(ow), AbstractC1988se.f20911f);
        }
    }

    public static int M(Yv yv) {
        int iP = U2.m.p(yv) - 1;
        return (iP == 0 || iP == 1) ? 7 : 23;
    }

    public static void N(D4.b bVar, Tw tw, Ow ow, boolean z7) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            Cw.h2(AbstractC1040aC.r(bVar), new J2.t(tw, ow, z7, 8), AbstractC1988se.f20911f);
        }
    }

    public static p148t.l a(C0222v c0222v) {
        return com.bumptech.glide.d.k(new C0079d(14, c0222v, "Deferred.asListenableFuture"));
    }

    public static boolean b(G.d[] dVarArr, G.d[] dVarArr2) {
        if (dVarArr == null || dVarArr2 == null || dVarArr.length != dVarArr2.length) {
            return false;
        }
        for (int i8 = 0; i8 < dVarArr.length; i8++) {
            G.d dVar = dVarArr[i8];
            char c8 = dVar.f3281a;
            G.d dVar2 = dVarArr2[i8];
            if (c8 != dVar2.f3281a || dVar.f3282b.length != dVar2.f3282b.length) {
                return false;
            }
        }
        return true;
    }

    public static void c(String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(String.valueOf(str));
        }
    }

    public static void d(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(int i8, int i9) {
        if (i8 < 0 || i8 >= i9) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static void f(Object obj) {
        obj.getClass();
    }

    public static void g(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void h(String str, boolean z7) {
        if (!z7) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    public static void i(boolean z7) {
        if (!z7) {
            throw new IllegalStateException();
        }
    }

    public static void j(Object obj) {
        if (obj == null) {
            throw new IllegalStateException();
        }
    }

    public static void k(Object obj, String str) {
        if (obj == null) {
            throw new IllegalStateException(str);
        }
    }

    public static float[] l(float[] fArr, int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int iMin = Math.min(i8, length);
        float[] fArr2 = new float[i8];
        System.arraycopy(fArr, 0, fArr2, 0, iMin);
        return fArr2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0044  */
    /* JADX WARN: Code duplicated, block: B:41:0x0093  */
    /* JADX WARN: Code duplicated, block: B:46:0x009e A[Catch: NumberFormatException -> 0x00ac, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:44:0x0098, B:46:0x009e, B:52:0x00b3, B:53:0x00b6), top: B:68:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b3 A[Catch: NumberFormatException -> 0x00ac, TryCatch #0 {NumberFormatException -> 0x00ac, blocks: (B:22:0x0056, B:25:0x006a, B:27:0x0070, B:31:0x007c, B:44:0x0098, B:46:0x009e, B:52:0x00b3, B:53:0x00b6), top: B:68:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d9 A[SYNTHETIC] */
    public static G.d[] m(String str) {
        int i8;
        String strTrim;
        float[] fArrL;
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        int i10 = 1;
        int i11 = 0;
        while (i10 < str.length()) {
            while (i10 < str.length()) {
                char cCharAt = str.charAt(i10);
                if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                    if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                        continue;
                    } else if (cCharAt != 'e' && cCharAt != 'E') {
                        strTrim = str.substring(i11, i10).trim();
                        if (strTrim.isEmpty()) {
                            if (strTrim.charAt(i9) != 'z' || strTrim.charAt(i9) == 'Z') {
                                fArrL = new float[i9];
                            } else {
                                try {
                                    float[] fArr = new float[strTrim.length()];
                                    int length = strTrim.length();
                                    int i12 = 1;
                                    int i13 = 0;
                                    while (i12 < length) {
                                        boolean z7 = false;
                                        boolean z8 = false;
                                        boolean z9 = false;
                                        boolean z10 = false;
                                        for (int i14 = i12; i14 < strTrim.length(); i14++) {
                                            char cCharAt2 = strTrim.charAt(i14);
                                            if (cCharAt2 == ' ') {
                                                z7 = false;
                                                z9 = true;
                                            } else if (cCharAt2 != 'E' && cCharAt2 != 'e') {
                                                switch (cCharAt2) {
                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                        z7 = false;
                                                        z9 = true;
                                                        break;
                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                        if (i14 == i12 || z7) {
                                                            z7 = false;
                                                        } else {
                                                            z7 = false;
                                                            z9 = true;
                                                            z10 = true;
                                                        }
                                                        break;
                                                    case '.':
                                                        if (z8) {
                                                            z7 = false;
                                                            z9 = true;
                                                            z10 = true;
                                                        } else {
                                                            z7 = false;
                                                            z8 = true;
                                                        }
                                                        break;
                                                    default:
                                                        z7 = false;
                                                        break;
                                                }
                                            } else {
                                                z7 = true;
                                            }
                                            if (z9) {
                                                if (i12 < i14) {
                                                    fArr[i13] = Float.parseFloat(strTrim.substring(i12, i14));
                                                    i13++;
                                                }
                                                if (z10) {
                                                    i12 = i14;
                                                } else {
                                                    i12 = i14 + 1;
                                                }
                                            }
                                        }
                                        if (i12 < i14) {
                                            fArr[i13] = Float.parseFloat(strTrim.substring(i12, i14));
                                            i13++;
                                        }
                                        if (z10) {
                                            i12 = i14;
                                        } else {
                                            i12 = i14 + 1;
                                        }
                                    }
                                    fArrL = l(fArr, i13);
                                    i9 = 0;
                                } catch (NumberFormatException e8) {
                                    throw new RuntimeException(p000a.r.g("error in parsing \"", strTrim, "\""), e8);
                                }
                            }
                            arrayList.add(new G.d(strTrim.charAt(i9), fArrL));
                        }
                        i11 = i10;
                        i10++;
                        i9 = 0;
                    }
                } else if (cCharAt != 'e') {
                    continue;
                }
                i10++;
            }
            strTrim = str.substring(i11, i10).trim();
            if (strTrim.isEmpty()) {
                if (strTrim.charAt(i9) != 'z') {
                    fArrL = new float[i9];
                } else {
                    fArrL = new float[i9];
                }
                arrayList.add(new G.d(strTrim.charAt(i9), fArrL));
            }
            i11 = i10;
            i10++;
            i9 = 0;
        }
        if (i10 - i11 != 1 || i11 >= str.length()) {
            i8 = 0;
        } else {
            i8 = 0;
            arrayList.add(new G.d(str.charAt(i11), new float[0]));
        }
        return (G.d[]) arrayList.toArray(new G.d[i8]);
    }

    public static G.d[] n(G.d[] dVarArr) {
        G.d[] dVarArr2 = new G.d[dVarArr.length];
        for (int i8 = 0; i8 < dVarArr.length; i8++) {
            dVarArr2[i8] = new G.d(dVarArr[i8]);
        }
        return dVarArr2;
    }

    public static String p(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        boolean z7 = false;
        String str = null;
        while (it.hasNext()) {
            String str2 = ((p111o1.s) it.next()).f27832a.f27804g.f27041o;
            if (p094m0.O.o(str2)) {
                return "video/mp4";
            }
            if (p094m0.O.k(str2)) {
                z7 = true;
            } else if (p094m0.O.m(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        if (z7) {
            return "audio/mp4";
        }
        return str != null ? str : "application/mp4";
    }

    public static int[] q(int i8) {
        if (i8 == 3) {
            return new int[]{0, 2, 1};
        }
        if (i8 == 5) {
            return new int[]{0, 2, 1, 3, 4};
        }
        if (i8 == 6) {
            return new int[]{0, 2, 1, 5, 3, 4};
        }
        if (i8 == 7) {
            return new int[]{0, 2, 1, 6, 5, 3, 4};
        }
        if (i8 != 8) {
            return null;
        }
        return new int[]{0, 2, 1, 7, 5, 6, 3, 4};
    }

    public static int r(int i8) {
        int i9 = 0;
        while (i8 > 0) {
            i9++;
            i8 >>>= 1;
        }
        return i9;
    }

    public static final void s(Context context) {
        Map mapSingletonMap;
        File file;
        z4.q0.h(context, "context");
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        z4.q0.g(databasePath, "context.getDatabasePath(WORK_DATABASE_NAME)");
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 23 || !databasePath.exists()) {
            return;
        }
        p027d2.n.d().a(p034e2.v.f24837a, "Migrating WorkDatabase to the no-backup directory");
        if (i8 >= 23) {
            File databasePath2 = context.getDatabasePath("androidx.work.workdb");
            z4.q0.g(databasePath2, "context.getDatabasePath(WORK_DATABASE_NAME)");
            if (i8 < 23) {
                file = context.getDatabasePath("androidx.work.workdb");
                z4.q0.g(file, "context.getDatabasePath(WORK_DATABASE_NAME)");
            } else {
                file = new File(C2985a.f24797a.a(context), "androidx.work.workdb");
            }
            String[] strArr = p034e2.v.f24838b;
            int iX = p190y4.k.X(strArr.length);
            if (iX < 16) {
                iX = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iX);
            for (String str : strArr) {
                linkedHashMap.put(new File(databasePath2.getPath() + str), new File(file.getPath() + str));
            }
            if (linkedHashMap.isEmpty()) {
                mapSingletonMap = Collections.singletonMap(databasePath2, file);
                z4.q0.g(mapSingletonMap, "singletonMap(...)");
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
                linkedHashMap2.put(databasePath2, file);
                mapSingletonMap = linkedHashMap2;
            }
        } else {
            mapSingletonMap = p162u6.r.f30543G;
        }
        for (Map.Entry entry : mapSingletonMap.entrySet()) {
            File file2 = (File) entry.getKey();
            File file3 = (File) entry.getValue();
            if (file2.exists()) {
                if (file3.exists()) {
                    p027d2.n.d().g(p034e2.v.f24837a, "Over-writing contents of " + file3);
                }
                p027d2.n.d().a(p034e2.v.f24837a, file2.renameTo(file3) ? "Migrated " + file2 + "to " + file3 : "Renaming " + file2 + " to " + file3 + " failed");
            }
        }
    }

    public static p094m0.N t(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < list.size(); i8++) {
            String str = (String) list.get(i8);
            String str2 = p117p0.M.f28050a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                p117p0.x.f("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.fromPictureBlock(new p117p0.E(Base64.decode(strArrSplit[1], 0))));
                } catch (RuntimeException e8) {
                    p117p0.x.g("VorbisUtil", "Failed to parse vorbis picture", e8);
                }
            } else {
                arrayList.add(new p088l1.a(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new p094m0.N(arrayList);
    }

    public static F.d u(p117p0.E e8, boolean z7, boolean z8) throws p094m0.P {
        if (z7) {
            A(3, e8, false);
        }
        String strX = e8.x((int) e8.q(), StandardCharsets.UTF_8);
        int length = strX.length();
        long jQ = e8.q();
        String[] strArr = new String[(int) jQ];
        int length2 = length + 15;
        for (int i8 = 0; i8 < jQ; i8++) {
            String strX2 = e8.x((int) e8.q(), StandardCharsets.UTF_8);
            strArr[i8] = strX2;
            length2 = length2 + 4 + strX2.length();
        }
        if (z8 && (e8.z() & 1) == 0) {
            throw p094m0.P.a("framing bit expected to be set", null);
        }
        return new F.d(strX, strArr, length2 + 1, 4);
    }

    public static void v(p110o0.a aVar) {
        aVar.f27607k = -3.4028235E38f;
        aVar.f27606j = Integer.MIN_VALUE;
        CharSequence charSequence = aVar.f27597a;
        if (charSequence instanceof Spanned) {
            if (!(charSequence instanceof Spannable)) {
                aVar.f27597a = SpannableString.valueOf(charSequence);
                aVar.f27598b = null;
            }
            CharSequence charSequence2 = aVar.f27597a;
            charSequence2.getClass();
            Spannable spannable = (Spannable) charSequence2;
            for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                if ((obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan)) {
                    spannable.removeSpan(obj);
                }
            }
        }
    }

    public static float w(float f8, int i8, int i9, int i10) {
        float f9;
        if (f8 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i8 == 0) {
            f9 = i10;
        } else {
            if (i8 != 1) {
                if (i8 != 2) {
                    return -3.4028235E38f;
                }
                return f8;
            }
            f9 = i9;
        }
        return f8 * f9;
    }

    public static void x(p086l.G g8, boolean z7) {
        if (Build.VERSION.SDK_INT >= 23) {
            p086l.H.u(g8, z7);
            return;
        }
        if (!f22933e) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                f22932d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e8) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e8);
            }
            f22933e = true;
        }
        Field field = f22932d;
        if (field != null) {
            try {
                field.set(g8, Boolean.valueOf(z7));
            } catch (IllegalAccessException e9) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e9);
            }
        }
    }

    public static void y(PopupWindow popupWindow, int i8) {
        if (Build.VERSION.SDK_INT >= 23) {
            p086l.H.v(popupWindow, i8);
            return;
        }
        if (!f22931c) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f22930b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            f22931c = true;
        }
        Method method = f22930b;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i8));
            } catch (Exception unused2) {
            }
        }
    }

    public static final p096m2.q z(p096m2.q qVar) throws Throwable {
        p027d2.d dVar = qVar.f27251j;
        String name = ConstraintTrackingWorker.class.getName();
        String str = qVar.f27244c;
        if (z4.q0.c(str, name) || !(dVar.f24623d || dVar.f24624e)) {
            return qVar;
        }
        p032e0.u uVar = new p032e0.u(3);
        uVar.c(qVar.f27246e.f24630a);
        uVar.f24776a.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
        p027d2.e eVar = new p027d2.e(uVar.f24776a);
        p027d2.e.c(eVar);
        String name2 = ConstraintTrackingWorker.class.getName();
        int i8 = qVar.f27243b;
        String str2 = qVar.f27245d;
        p027d2.d dVar2 = qVar.f27251j;
        long j8 = qVar.f27255n;
        boolean z7 = qVar.f27258q;
        String str3 = qVar.f27242a;
        z4.q0.h(str3, "id");
        p148t.a.f(i8, "state");
        p027d2.e eVar2 = qVar.f27247f;
        z4.q0.h(eVar2, "output");
        z4.q0.h(dVar2, "constraints");
        int i9 = qVar.f27253l;
        p148t.a.f(i9, "backoffPolicy");
        int i10 = qVar.f27259r;
        p148t.a.f(i10, "outOfQuotaPolicy");
        return new p096m2.q(str3, i8, name2, str2, eVar, eVar2, qVar.f27248g, qVar.f27249h, qVar.f27250i, dVar2, qVar.f27252k, i9, qVar.f27254m, j8, qVar.f27256o, qVar.f27257p, z7, i10, qVar.f27260s, qVar.f27261t);
    }

    public abstract A1.H o(p135r2.k kVar, Map map);
}
