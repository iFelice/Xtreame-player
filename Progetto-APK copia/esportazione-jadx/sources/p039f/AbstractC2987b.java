package p039f;

import A0.O;
import K.k;
import L5.f;
import Q3.b;
import R3.a;
import U2.m;
import Y5.y;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.AbstractC2333zA;
import com.google.android.gms.internal.ads.B3;
import com.google.android.gms.internal.ads.B8;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.C0800Ka;
import com.google.android.gms.internal.ads.C0997Xm;
import com.google.android.gms.internal.ads.C1039aB;
import com.google.android.gms.internal.ads.C1180cy;
import com.google.android.gms.internal.ads.C1387gy;
import com.google.android.gms.internal.ads.C2066u3;
import com.google.android.gms.internal.ads.C2285yE;
import com.google.android.gms.internal.ads.C2373zz;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.Cy;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.InterfaceC2036ta;
import com.google.android.gms.internal.ads.InterfaceC2132vH;
import com.google.android.gms.internal.ads.InterfaceC2321yz;
import com.google.android.gms.internal.ads.J;
import com.google.android.gms.internal.ads.KA;
import com.google.android.gms.internal.ads.MA;
import com.google.android.gms.internal.ads.YA;
import com.google.android.gms.internal.ads.ZA;
import com.google.protobuf.InterfaceC2937p1;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.videolan.libvlc.media.MediaPlayer;
import p000a.r;
import p083k3.l;
import p090l3.C3097p;
import p113o3.I;
import p120p3.d;
import p120p3.h;
import p130q5.q;
import p176w5.c;

/* JADX INFO: renamed from: f.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2987b implements InterfaceC2132vH, InterfaceC2937p1, y {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static Boolean f25029G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static Boolean f25030H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static Boolean f25031I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static Boolean f25032J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static Boolean f25033K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static Boolean f25034L;

    public static double A(int i8, Parcel parcel) {
        q0(parcel, i8, 8);
        return parcel.readDouble();
    }

    public static int A0(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("admob", 0);
        if (sharedPreferences == null) {
            return 0;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (ClassCastException unused) {
            return 0;
        }
    }

    public static float B(int i8, Parcel parcel) {
        q0(parcel, i8, 4);
        return parcel.readFloat();
    }

    public static void B0(String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(str);
        }
    }

    public static IBinder C(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(iDataPosition + iF);
        return strongBinder;
    }

    public static void C0(long j8, String str, boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException(b.I(str, Long.valueOf(j8)));
        }
    }

    public static int D(int i8, Parcel parcel) {
        q0(parcel, i8, 4);
        return parcel.readInt();
    }

    public static void D0(int i8, int i9, int i10) {
        String strF0;
        if (i8 < 0 || i9 < i8 || i9 > i10) {
            if (i8 < 0 || i8 > i10) {
                strF0 = F0(i8, i10, "start index");
            } else {
                strF0 = (i9 < 0 || i9 > i10) ? F0(i9, i10, "end index") : b.I("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i8));
            }
            throw new IndexOutOfBoundsException(strF0);
        }
    }

    public static long E(int i8, Parcel parcel) {
        q0(parcel, i8, 8);
        return parcel.readLong();
    }

    public static void E0(String str, boolean z7) {
        if (!z7) {
            throw new IllegalStateException(str);
        }
    }

    public static int F(int i8, Parcel parcel) {
        return (i8 & (-65536)) != -65536 ? (char) (i8 >> 16) : parcel.readInt();
    }

    public static String F0(int i8, int i9, String str) {
        if (i8 < 0) {
            return b.I("%s (%s) must not be negative", str, Integer.valueOf(i8));
        }
        if (i9 >= 0) {
            return b.I("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IllegalArgumentException(r.f("negative size: ", i9));
    }

    public static void G(int i8, Parcel parcel) {
        parcel.setDataPosition(parcel.dataPosition() + F(i8, parcel));
    }

    public static int H(Parcel parcel) {
        int i8 = parcel.readInt();
        int iF = F(i8, parcel);
        char c8 = (char) i8;
        int iDataPosition = parcel.dataPosition();
        if (c8 != 20293) {
            throw new M3.b("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(i8))), parcel);
        }
        int i9 = iF + iDataPosition;
        if (i9 < iDataPosition || i9 > parcel.dataSize()) {
            throw new M3.b(U2.j("Size read is invalid start=", iDataPosition, " end=", i9), parcel);
        }
        return i9;
    }

    public static void I(Parcel parcel, int i8, Boolean bool) {
        if (bool == null) {
            return;
        }
        v0(parcel, i8, 4);
        parcel.writeInt(bool.booleanValue() ? 1 : 0);
    }

    public static void J(Parcel parcel, int i8, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeBundle(bundle);
        p0(iX, parcel);
    }

    public static void K(Parcel parcel, int i8, byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeByteArray(bArr);
        p0(iX, parcel);
    }

    public static void L(Parcel parcel, int i8, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeStrongBinder(iBinder);
        p0(iX, parcel);
    }

    public static void M(Parcel parcel, int i8, int[] iArr) {
        if (iArr == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeIntArray(iArr);
        p0(iX, parcel);
    }

    public static void N(Parcel parcel, int i8, List list) {
        if (list == null) {
            return;
        }
        int iX = X(i8, parcel);
        int size = list.size();
        parcel.writeInt(size);
        for (int i9 = 0; i9 < size; i9++) {
            parcel.writeInt(((Integer) list.get(i9)).intValue());
        }
        p0(iX, parcel);
    }

    public static void O(Parcel parcel, int i8, long[] jArr) {
        if (jArr == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeLongArray(jArr);
        p0(iX, parcel);
    }

    public static void P(Parcel parcel, int i8, Parcelable parcelable, int i9) {
        if (parcelable == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcelable.writeToParcel(parcel, i9);
        p0(iX, parcel);
    }

    public static void Q(Parcel parcel, int i8, String str) {
        if (str == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeString(str);
        p0(iX, parcel);
    }

    public static void R(Parcel parcel, int i8, String[] strArr) {
        if (strArr == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeStringArray(strArr);
        p0(iX, parcel);
    }

    public static void S(Parcel parcel, int i8, List list) {
        if (list == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeStringList(list);
        p0(iX, parcel);
    }

    public static void T(Parcel parcel, int i8, Parcelable[] parcelableArr, int i9) {
        if (parcelableArr == null) {
            return;
        }
        int iX = X(i8, parcel);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i9);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        p0(iX, parcel);
    }

    public static void U(Parcel parcel, int i8, List list) {
        if (list == null) {
            return;
        }
        int iX = X(i8, parcel);
        int size = list.size();
        parcel.writeInt(size);
        for (int i9 = 0; i9 < size; i9++) {
            Parcelable parcelable = (Parcelable) list.get(i9);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        p0(iX, parcel);
    }

    public static float V(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static int W(int i8) {
        int[] iArr = {1, 2, 3, 4, 5, 6};
        for (int i9 = 0; i9 < 6; i9++) {
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

    public static int X(int i8, Parcel parcel) {
        parcel.writeInt(i8 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static int Y(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public static long Z(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e8) {
            if ("0".equals(str) || "-1".equals(str)) {
                B3.c("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            Log.e("Volley", B3.d("Unable to parse dateStr: %s, falling back to 0", str), e8);
            return 0L;
        }
    }

    public static Cy a0(Context context, int i8, String str, String str2, C1180cy c1180cy) {
        Cy cy;
        C1387gy c1387gy = new C1387gy(context, i8, str, str2, c1180cy);
        try {
            cy = (Cy) c1387gy.f19032d.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e8) {
            c1387gy.b(2009, c1387gy.f19035g, e8);
            cy = null;
        }
        c1387gy.b(3004, c1387gy.f19035g, null);
        if (cy != null) {
            if (cy.f12735I == 7) {
                C1180cy.f18276e = 3;
            } else {
                C1180cy.f18276e = 2;
            }
        }
        return cy == null ? new Cy() : cy;
    }

    public static void c0(int i8, int i9) {
        String strI;
        if (i8 < 0 || i8 >= i9) {
            if (i8 < 0) {
                strI = b.I("%s (%s) must not be negative", "index", Integer.valueOf(i8));
            } else {
                if (i9 < 0) {
                    throw new IllegalArgumentException(r.f("negative size: ", i9));
                }
                strI = b.I("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i8), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strI);
        }
    }

    public static void d0(D4.b bVar, String str) {
        Cw.h2(bVar, new J(str, 1, 0), AbstractC1988se.f20911f);
    }

    public static void e(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void e0(a aVar, Throwable th, String str) {
        C0667Bc.a((Context) R3.b.v0(aVar)).c(th, str, ((Double) B8.f12293g.l()).floatValue());
    }

    public static long f(InputStream inputStream, OutputStream outputStream, boolean z7) {
        byte[] bArr = new byte[1024];
        long j8 = 0;
        while (true) {
            try {
                int i8 = inputStream.read(bArr, 0, 1024);
                if (i8 == -1) {
                    break;
                }
                j8 += (long) i8;
                outputStream.write(bArr, 0, i8);
            } catch (Throwable th) {
                if (z7) {
                    e(inputStream);
                    e(outputStream);
                }
                throw th;
            }
        }
        if (z7) {
            e(inputStream);
            e(outputStream);
        }
        return j8;
    }

    public static void f0(Context context, boolean z7) {
        if (z7) {
            h.f("This request is sent from a test device.");
            return;
        }
        d dVar = C3097p.f26618f.f26619a;
        h.f("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"" + d.p(context) + "\")) to get test ads on this device.");
    }

    public static Bundle g(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iF);
        return bundle;
    }

    public static void g0(Parcel parcel, int i8, int i9) {
        if (i8 == i9) {
            return;
        }
        throw new M3.b(r.j(O.D("Expected size ", i9, " got ", i8, " (0x"), Integer.toHexString(i8), ")"), parcel);
    }

    public static void h0(String str, boolean z7) throws C0997Xm {
        if (!z7) {
            throw new C0997Xm(str);
        }
    }

    public static byte[] i(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iDataPosition + iF);
        return bArrCreateByteArray;
    }

    public static boolean i0(Context context) {
        if (f25030H == null) {
            f25030H = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f25030H.booleanValue();
    }

    public static int[] j(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        int[] iArrCreateIntArray = parcel.createIntArray();
        parcel.setDataPosition(iDataPosition + iF);
        return iArrCreateIntArray;
    }

    public static boolean j0(String str) {
        return str == null || str.isEmpty();
    }

    public static ArrayList k(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i9 = parcel.readInt();
        for (int i10 = 0; i10 < i9; i10++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(iDataPosition + iF);
        return arrayList;
    }

    public static long k0(String str) {
        int i8 = Et.f13234a;
        String[] strArrSplit = str.split("\\.", 2);
        long j8 = 0;
        for (String str2 : strArrSplit[0].split(":", -1)) {
            j8 = (j8 * 60) + Long.parseLong(str2);
        }
        long j9 = j8 * 1000;
        if (strArrSplit.length == 2) {
            j9 += Long.parseLong(strArrSplit[1]);
        }
        return j9 * 1000;
    }

    public static long[] l(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        long[] jArrCreateLongArray = parcel.createLongArray();
        parcel.setDataPosition(iDataPosition + iF);
        return jArrCreateLongArray;
    }

    public static Parcelable m(Parcel parcel, int i8, Parcelable.Creator creator) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iF);
        return parcelable;
    }

    public static YA m0(AbstractC2333zA abstractC2333zA, AbstractC2333zA abstractC2333zA2) {
        w0(abstractC2333zA, "set1");
        w0(abstractC2333zA2, "set2");
        return new YA(abstractC2333zA, abstractC2333zA2);
    }

    public static String n(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iF);
        return string;
    }

    public static p135r2.b n0(C2066u3 c2066u3) {
        boolean z7;
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map map = c2066u3.f21196c;
        if (map == null) {
            return null;
        }
        String str = (String) map.get("Date");
        long jZ = str != null ? Z(str) : 0L;
        String str2 = (String) map.get("Cache-Control");
        int i8 = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            z7 = false;
            j8 = 0;
            j9 = 0;
            while (i8 < strArrSplit.length) {
                String strTrim = strArrSplit[i8].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j9 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j8 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z7 = true;
                }
                i8++;
            }
            i8 = 1;
        } else {
            z7 = false;
            j8 = 0;
            j9 = 0;
        }
        String str3 = (String) map.get("Expires");
        long jZ2 = str3 != null ? Z(str3) : 0L;
        String str4 = (String) map.get("Last-Modified");
        long jZ3 = str4 != null ? Z(str4) : 0L;
        String str5 = (String) map.get("ETag");
        if (i8 != 0) {
            j11 = jCurrentTimeMillis + (j9 * 1000);
            if (z7) {
                j12 = j11;
            } else {
                Long.signum(j8);
                j12 = (j8 * 1000) + j11;
            }
            j10 = j12;
        } else {
            j10 = 0;
            if (jZ <= 0 || jZ2 < jZ) {
                j11 = 0;
            } else {
                j11 = jCurrentTimeMillis + (jZ2 - jZ);
                j10 = j11;
            }
        }
        p135r2.b bVar = new p135r2.b(1);
        bVar.f29781a = c2066u3.f21195b;
        bVar.f29782b = str5;
        bVar.f29786f = j11;
        bVar.f29785e = j10;
        bVar.f29783c = jZ;
        bVar.f29784d = jZ3;
        bVar.f29787g = map;
        bVar.f29788h = c2066u3.f21197d;
        return bVar;
    }

    public static String[] o(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        String[] strArrCreateStringArray = parcel.createStringArray();
        parcel.setDataPosition(iDataPosition + iF);
        return strArrCreateStringArray;
    }

    public static void o0(int i8, int i9) {
        if (i8 < 0 || i8 > i9) {
            throw new IndexOutOfBoundsException(F0(i8, i9, "index"));
        }
    }

    public static ArrayList p(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iDataPosition + iF);
        return arrayListCreateStringArrayList;
    }

    public static void p0(int i8, Parcel parcel) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i8 - 4);
        parcel.writeInt(iDataPosition - i8);
        parcel.setDataPosition(iDataPosition);
    }

    public static Object[] q(Parcel parcel, int i8, Parcelable.Creator creator) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        Object[] objArrCreateTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iF);
        return objArrCreateTypedArray;
    }

    public static void q0(Parcel parcel, int i8, int i9) {
        int iF = F(i8, parcel);
        if (iF == i9) {
            return;
        }
        throw new M3.b(r.j(O.D("Expected size ", i9, " got ", iF, " (0x"), Integer.toHexString(iF), ")"), parcel);
    }

    public static ArrayList r(Parcel parcel, int i8, Parcelable.Creator creator) {
        int iF = F(i8, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iF == 0) {
            return null;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(iDataPosition + iF);
        return arrayListCreateTypedArrayList;
    }

    public static void r0(InterfaceC2036ta interfaceC2036ta, String str, JSONObject jSONObject) {
        StringBuilder sbQ = U2.q("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        h.b("Dispatching AFMA event: ".concat(sbQ.toString()));
        interfaceC2036ta.c(sbQ.toString());
    }

    /* JADX WARN: Code duplicated, block: B:326:0x0689  */
    /* JADX WARN: Code duplicated, block: B:328:0x0690  */
    /* JADX WARN: Code duplicated, block: B:331:0x06af  */
    /* JADX WARN: Code duplicated, block: B:334:0x06b8  */
    /* JADX WARN: Code duplicated, block: B:336:0x06c2  */
    /* JADX WARN: Code duplicated, block: B:345:0x06ed  */
    /* JADX WARN: Code duplicated, block: B:347:0x06f0  */
    /* JADX WARN: Code duplicated, block: B:349:0x06f7  */
    /* JADX WARN: Code duplicated, block: B:35:0x0083  */
    /* JADX WARN: Code duplicated, block: B:365:0x0732  */
    /* JADX WARN: Code duplicated, block: B:369:0x074b  */
    /* JADX WARN: Code duplicated, block: B:372:0x0753 A[LOOP:30: B:368:0x0749->B:372:0x0753, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:374:0x0759 A[LOOP:29: B:364:0x0730->B:374:0x0759, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:377:0x0760  */
    /* JADX WARN: Code duplicated, block: B:380:0x0767  */
    /* JADX WARN: Code duplicated, block: B:38:0x008c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0092  */
    /* JADX WARN: Code duplicated, block: B:414:0x07f4  */
    /* JADX WARN: Code duplicated, block: B:419:0x0825  */
    /* JADX WARN: Code duplicated, block: B:421:0x082b  */
    /* JADX WARN: Code duplicated, block: B:423:0x0830  */
    /* JADX WARN: Code duplicated, block: B:428:0x0855  */
    /* JADX WARN: Code duplicated, block: B:430:0x0859  */
    /* JADX WARN: Code duplicated, block: B:433:0x086b  */
    /* JADX WARN: Code duplicated, block: B:436:0x089f  */
    /* JADX WARN: Code duplicated, block: B:438:0x08a3  */
    /* JADX WARN: Code duplicated, block: B:440:0x08aa  */
    /* JADX WARN: Code duplicated, block: B:44:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x009b  */
    /* JADX WARN: Code duplicated, block: B:470:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:471:0x00a3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a7 A[EDGE_INSN: B:51:0x00a7->B:54:0x00ae BREAK  A[LOOP:0: B:36:0x0086->B:48:0x00a1]] */
    /* JADX WARN: Code duplicated, block: B:524:0x06cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:532:0x075d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:533:0x0738 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:534:0x0757 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:535:0x075e A[EDGE_INSN: B:535:0x075e->B:376:0x075e BREAK  A[LOOP:29: B:364:0x0730->B:374:0x0759], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ac A[EDGE_INSN: B:53:0x00ac->B:54:0x00ae BREAK  A[LOOP:0: B:36:0x0086->B:48:0x00a1]] */
    /* JADX WARN: Code duplicated, block: B:543:0x0831 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:547:0x08ad A[SYNTHETIC] */
    public static p176w5.b s(String str, Hashtable hashtable) throws q {
        L5.d dVar;
        int i8;
        f fVarC;
        int i9;
        int i10;
        L5.b bVar;
        int i11;
        int i12;
        int iMin;
        int i13;
        int i14;
        p176w5.b bVar2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        byte[][] bArr;
        int i21;
        int i22;
        int i23;
        int i24;
        byte[][] bArr2;
        int i25;
        int i26;
        int i27;
        int i28;
        byte[][] bArr3;
        int i29;
        int i30;
        int i31;
        int i32;
        int iAbs;
        byte[] bArr4;
        int i33;
        int i34;
        int i35;
        byte[] bArr5;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int iMax;
        int iMin2;
        int i41;
        int iMax2;
        int iMin3;
        int i42;
        byte[] bArr6;
        int i43;
        byte b8;
        int i44;
        byte[] bArr7;
        char c8;
        int i45;
        int i46;
        c cVar;
        int i47;
        boolean z7;
        boolean z8;
        char cCharAt;
        Hashtable hashtable2 = hashtable;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        L5.b bVarValueOf = L5.b.L;
        p130q5.d dVar2 = p130q5.d.f29609G;
        if (hashtable2.containsKey(dVar2)) {
            bVarValueOf = L5.b.valueOf(hashtable2.get(dVar2).toString());
        }
        p130q5.d dVar3 = p130q5.d.f29611I;
        int i48 = hashtable2.containsKey(dVar3) ? Integer.parseInt(hashtable2.get(dVar3).toString()) : 4;
        p130q5.d dVar4 = p130q5.d.f29610H;
        boolean zContainsKey = hashtable2.containsKey(dVar4);
        String string = zContainsKey ? hashtable2.get(dVar4).toString() : "ISO-8859-1";
        boolean zEquals = "Shift_JIS".equals(string);
        L5.d dVar5 = L5.d.BYTE;
        int[] iArr = N5.b.f4954a;
        if (zEquals) {
            try {
                byte[] bytes = str.getBytes("Shift_JIS");
                int length = bytes.length;
                if (length % 2 != 0) {
                    i47 = 0;
                    z7 = false;
                    z8 = false;
                    while (true) {
                        if (i47 < str.length()) {
                            cCharAt = str.charAt(i47);
                            if (cCharAt < '0' && cCharAt <= '9') {
                                z8 = true;
                            } else if (cCharAt >= '`' && iArr[cCharAt] != -1) {
                                z7 = true;
                            }
                            i47++;
                        } else {
                            if (z7) {
                                dVar = L5.d.ALPHANUMERIC;
                                break;
                            }
                            if (z8) {
                                dVar = L5.d.NUMERIC;
                                break;
                            }
                        }
                        dVar = dVar5;
                        break;
                    }
                }
                int i49 = 0;
                while (true) {
                    if (i49 >= length) {
                        dVar = L5.d.KANJI;
                    } else {
                        int i50 = bytes[i49] & 255;
                        if ((i50 < 129 || i50 > 159) && (i50 < 224 || i50 > 235)) {
                            i47 = 0;
                            z7 = false;
                            z8 = false;
                            while (true) {
                                if (i47 < str.length()) {
                                    cCharAt = str.charAt(i47);
                                    if (cCharAt < '0') {
                                        if (cCharAt >= '`') {
                                        }
                                    } else if (cCharAt >= '`') {
                                    }
                                } else {
                                    if (z7) {
                                        dVar = L5.d.ALPHANUMERIC;
                                        break;
                                    }
                                    if (z8) {
                                        dVar = L5.d.NUMERIC;
                                        break;
                                    }
                                }
                                dVar = dVar5;
                                i47++;
                            }
                        } else {
                            i49 += 2;
                        }
                    }
                }
            } catch (UnsupportedEncodingException unused) {
            }
        } else {
            i47 = 0;
            z7 = false;
            z8 = false;
            while (true) {
                if (i47 < str.length()) {
                    cCharAt = str.charAt(i47);
                    if (cCharAt < '0') {
                        if (cCharAt >= '`') {
                        }
                    } else if (cCharAt >= '`') {
                    }
                } else {
                    if (z7) {
                        dVar = L5.d.ALPHANUMERIC;
                        break;
                    }
                    if (z8) {
                        dVar = L5.d.NUMERIC;
                        break;
                    }
                }
                dVar = dVar5;
                i47++;
            }
        }
        p176w5.a aVar = new p176w5.a();
        if (dVar == dVar5 && zContainsKey && (cVar = (c) c.f31096J.get(string)) != null) {
            aVar.b(7, 4);
            aVar.b(cVar.f31098G[0], 8);
        }
        p130q5.d dVar6 = p130q5.d.f29614L;
        if (hashtable2.containsKey(dVar6) && Boolean.parseBoolean(hashtable2.get(dVar6).toString())) {
            i8 = 4;
            aVar.b(5, 4);
        } else {
            i8 = 4;
        }
        aVar.b(dVar.f4723H, i8);
        p176w5.a aVar2 = new p176w5.a();
        int iOrdinal = dVar.ordinal();
        if (iOrdinal == 1) {
            int length2 = str.length();
            int i51 = 0;
            while (i51 < length2) {
                int iCharAt = str.charAt(i51) - '0';
                int i52 = i51 + 2;
                if (i52 < length2) {
                    aVar2.b(((str.charAt(i51 + 1) - '0') * 10) + (iCharAt * 100) + (str.charAt(i52) - '0'), 10);
                    i51 += 3;
                } else {
                    i51++;
                    if (i51 < length2) {
                        aVar2.b((iCharAt * 10) + (str.charAt(i51) - '0'), 7);
                        i51 = i52;
                    } else {
                        aVar2.b(iCharAt, 4);
                    }
                }
            }
        } else if (iOrdinal == 2) {
            int length3 = str.length();
            int i53 = 0;
            while (i53 < length3) {
                char cCharAt2 = str.charAt(i53);
                int i54 = cCharAt2 < '`' ? iArr[cCharAt2] : -1;
                if (i54 == -1) {
                    throw new q();
                }
                int i55 = i53 + 1;
                if (i55 < length3) {
                    char cCharAt3 = str.charAt(i55);
                    int i56 = cCharAt3 < '`' ? iArr[cCharAt3] : -1;
                    if (i56 == -1) {
                        throw new q();
                    }
                    aVar2.b((i54 * 45) + i56, 11);
                    i53 += 2;
                } else {
                    aVar2.b(i54, 6);
                    i53 = i55;
                }
            }
        } else if (iOrdinal == i8) {
            try {
                for (byte b9 : str.getBytes(string)) {
                    aVar2.b(b9, 8);
                }
            } catch (UnsupportedEncodingException e8) {
                throw new q(e8);
            }
        } else {
            if (iOrdinal != 6) {
                throw new q("Invalid mode: ".concat(String.valueOf(dVar)));
            }
            try {
                byte[] bytes2 = str.getBytes("Shift_JIS");
                if (bytes2.length % 2 != 0) {
                    throw new q("Kanji byte size not even");
                }
                int length4 = bytes2.length - 1;
                for (int i57 = 0; i57 < length4; i57 += 2) {
                    int i58 = (bytes2[i57 + 1] & 255) | ((bytes2[i57] & 255) << 8);
                    int i59 = 33088;
                    if (i58 >= 33088 && i58 <= 40956) {
                        i46 = i58 - i59;
                    } else if (i58 < 57408 || i58 > 60351) {
                        i46 = -1;
                    } else {
                        i59 = 49472;
                        i46 = i58 - i59;
                    }
                    if (i46 == -1) {
                        throw new q("Invalid byte sequence");
                    }
                    aVar2.b(((i46 >> 8) * 192) + (i46 & 255), 13);
                }
            } catch (UnsupportedEncodingException e9) {
                throw new q(e9);
            }
        }
        p130q5.d dVar7 = p130q5.d.f29612J;
        if (hashtable2.containsKey(dVar7)) {
            fVarC = f.c(Integer.parseInt(hashtable2.get(dVar7).toString()));
            int iA = dVar.a(fVarC) + aVar.f31090H + aVar2.f31090H;
            k kVar = fVarC.f4728c[bVarValueOf.ordinal()];
            int i60 = kVar.f4294H;
            int iA2 = 0;
            for (N.r rVar : (N.r[]) kVar.f4295I) {
                iA2 = rVar.a() + iA2;
            }
            if (fVarC.f4729d - (iA2 * i60) < (iA + 7) / 8) {
                throw new q("Data too big for requested version");
            }
        } else {
            int iA3 = dVar.a(f.c(1)) + aVar.f31090H + aVar2.f31090H;
            int i61 = 1;
            while (true) {
                if (i61 > 40) {
                    throw new q("Data too big");
                }
                f fVarC2 = f.c(i61);
                int i62 = fVarC2.f4729d;
                k kVar2 = fVarC2.f4728c[bVarValueOf.ordinal()];
                int i63 = kVar2.f4294H;
                int iA4 = 0;
                for (N.r rVar2 : (N.r[]) kVar2.f4295I) {
                    iA4 = rVar2.a() + iA4;
                }
                if (i62 - (iA4 * i63) >= (iA3 + 7) / 8) {
                    int iA5 = dVar.a(fVarC2) + aVar.f31090H + aVar2.f31090H;
                    int i64 = 1;
                    while (true) {
                        if (i64 > 40) {
                            throw new q("Data too big");
                        }
                        f fVarC3 = f.c(i64);
                        int i65 = fVarC3.f4729d;
                        k kVar3 = fVarC3.f4728c[bVarValueOf.ordinal()];
                        int i66 = kVar3.f4294H;
                        int iA6 = 0;
                        for (N.r rVar3 : (N.r[]) kVar3.f4295I) {
                            iA6 = rVar3.a() + iA6;
                        }
                        if (i65 - (iA6 * i66) >= (iA5 + 7) / 8) {
                            fVarC = fVarC3;
                            break;
                        }
                        i64++;
                        hashtable2 = hashtable2;
                        i48 = i48;
                    }
                } else {
                    i61++;
                    hashtable2 = hashtable2;
                    i48 = i48;
                }
            }
        }
        p176w5.a aVar3 = new p176w5.a();
        int i67 = aVar.f31090H;
        aVar3.c(i67);
        for (int i68 = 0; i68 < i67; i68++) {
            aVar3.a(aVar.d(i68));
        }
        int iG = dVar == dVar5 ? aVar2.g() : str.length();
        int iA7 = dVar.a(fVarC);
        int i69 = 1 << iA7;
        if (iG >= i69) {
            throw new q(iG + " is bigger than " + (i69 - 1));
        }
        aVar3.b(iG, iA7);
        int i70 = aVar2.f31090H;
        aVar3.c(aVar3.f31090H + i70);
        for (int i71 = 0; i71 < i70; i71++) {
            aVar3.a(aVar2.d(i71));
        }
        k kVar4 = fVarC.f4728c[bVarValueOf.ordinal()];
        int i72 = kVar4.f4294H;
        int iA8 = 0;
        for (N.r rVar4 : (N.r[]) kVar4.f4295I) {
            iA8 += rVar4.a();
        }
        int i73 = iA8 * i72;
        int i74 = fVarC.f4729d;
        int i75 = i74 - i73;
        int i76 = i75 << 3;
        if (aVar3.f31090H > i76) {
            throw new q("data bits cannot fit in the QR Code" + aVar3.f31090H + " > " + i76);
        }
        for (int i77 = 0; i77 < 4 && aVar3.f31090H < i76; i77++) {
            aVar3.a(false);
        }
        boolean z9 = false;
        int i78 = aVar3.f31090H & 7;
        if (i78 > 0) {
            while (i78 < 8) {
                aVar3.a(z9);
                i78++;
                z9 = false;
            }
        }
        int iG2 = i75 - aVar3.g();
        for (int i79 = 0; i79 < iG2; i79++) {
            aVar3.b((i79 & 1) == 0 ? 236 : 17, 8);
        }
        if (aVar3.f31090H != i76) {
            throw new q("Bits size does not equal capacity");
        }
        int iA9 = 0;
        for (N.r rVar5 : (N.r[]) kVar4.f4295I) {
            iA9 += rVar5.a();
        }
        int i80 = 1;
        if (aVar3.g() != i75) {
            throw new q("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(iA9);
        int i81 = 0;
        int i82 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        while (i81 < iA9) {
            int[] iArr2 = new int[i80];
            int[] iArr3 = new int[i80];
            if (i81 >= iA9) {
                throw new q("Block ID too large");
            }
            int i83 = i74 % iA9;
            int i84 = i48;
            int i85 = iA9 - i83;
            int i86 = i74 / iA9;
            int i87 = i86 + 1;
            int i88 = i75 / iA9;
            int i89 = i88 + 1;
            int i90 = i86 - i88;
            L5.b bVar3 = bVarValueOf;
            int i91 = i87 - i89;
            if (i90 != i91) {
                throw new q("EC bytes mismatch");
            }
            if (iA9 != i85 + i83) {
                throw new q("RS blocks mismatch");
            }
            if (i74 != ((i89 + i91) * i83) + ((i88 + i90) * i85)) {
                throw new q("Total bytes mismatch");
            }
            if (i81 < i85) {
                c8 = 0;
                iArr2[0] = i88;
                iArr3[0] = i90;
            } else {
                c8 = 0;
                iArr2[0] = i89;
                iArr3[0] = i91;
            }
            int i92 = iArr2[c8];
            byte[] bArr8 = new byte[i92];
            int i93 = i82 << 3;
            int i94 = 0;
            while (i94 < i92) {
                f fVar = fVarC;
                int i95 = i74;
                int i96 = iA9;
                int i97 = 0;
                int i98 = 0;
                for (int i99 = 8; i98 < i99; i99 = 8) {
                    if (aVar3.d(i93)) {
                        i45 = 1;
                        i97 |= 1 << (7 - i98);
                    } else {
                        i45 = 1;
                    }
                    i93 += i45;
                    i98 += i45;
                }
                bArr8[i94] = (byte) i97;
                i94++;
                iA9 = i96;
                fVarC = fVar;
                i74 = i95;
            }
            f fVar2 = fVarC;
            int i100 = i74;
            int i101 = iA9;
            int i102 = iArr3[0];
            int i103 = i92 + i102;
            int[] iArr4 = new int[i103];
            for (int i104 = 0; i104 < i92; i104++) {
                iArr4[i104] = bArr8[i104] & 255;
            }
            p184x5.a aVar4 = p184x5.a.f31207l;
            ArrayList arrayList2 = new ArrayList();
            p176w5.a aVar5 = aVar3;
            int i105 = i75;
            arrayList2.add(new p184x5.b(aVar4, new int[]{1}));
            if (i102 == 0) {
                throw new IllegalArgumentException("No error correction bytes");
            }
            int i106 = i103 - i102;
            if (i106 <= 0) {
                throw new IllegalArgumentException("No data bytes provided");
            }
            if (i102 >= arrayList2.size()) {
                p184x5.b bVarG = (p184x5.b) U2.g(arrayList2, 1);
                int size = arrayList2.size();
                while (size <= i102) {
                    bVarG = bVarG.g(new p184x5.b(aVar4, new int[]{1, aVar4.f31211a[(size - 1) + aVar4.f31217g]}));
                    arrayList2.add(bVarG);
                    size++;
                    i81 = i81;
                    i82 = i82;
                }
            }
            int i107 = i81;
            int i108 = i82;
            p184x5.b bVar4 = (p184x5.b) arrayList2.get(i102);
            int[] iArr5 = new int[i106];
            System.arraycopy(iArr4, 0, iArr5, 0, i106);
            if (i106 == 0) {
                throw new IllegalArgumentException();
            }
            if (i106 > 1 && iArr5[0] == 0) {
                int i109 = 1;
                while (i109 < i106 && iArr5[i109] == 0) {
                    i109++;
                }
                if (i109 == i106) {
                    iArr5 = new int[]{0};
                } else {
                    int i110 = i106 - i109;
                    int[] iArr6 = new int[i110];
                    System.arraycopy(iArr5, i109, iArr6, 0, i110);
                    iArr5 = iArr6;
                }
            }
            if (i102 < 0) {
                throw new IllegalArgumentException();
            }
            int length5 = iArr5.length;
            int[] iArr7 = new int[length5 + i102];
            int i111 = 0;
            while (i111 < length5) {
                iArr7[i111] = aVar4.c(iArr5[i111], 1);
                i111++;
                iArr5 = iArr5;
            }
            p184x5.b bVar5 = new p184x5.b(aVar4, iArr7);
            if (!aVar4.equals(bVar4.f31218a)) {
                throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
            }
            if (bVar4.e()) {
                throw new IllegalArgumentException("Divide by 0");
            }
            int iB = aVar4.b(bVar4.c(bVar4.d()));
            p184x5.b bVarA = aVar4.f31213c;
            while (bVar5.d() >= bVar4.d() && !bVar5.e()) {
                int iD = bVar5.d() - bVar4.d();
                int iC = aVar4.c(bVar5.c(bVar5.d()), iB);
                int i112 = iB;
                p184x5.b bVarH = bVar4.h(iD, iC);
                bVarA = bVarA.a(aVar4.a(iD, iC));
                bVar5 = bVar5.a(bVarH);
                iB = i112;
            }
            int[] iArr8 = new p184x5.b[]{bVarA, bVar5}[1].f31219b;
            int length6 = i102 - iArr8.length;
            for (int i113 = 0; i113 < length6; i113++) {
                iArr4[i106 + i113] = 0;
            }
            System.arraycopy(iArr8, 0, iArr4, i106 + length6, iArr8.length);
            byte[] bArr9 = new byte[i102];
            for (int i114 = 0; i114 < i102; i114++) {
                bArr9[i114] = (byte) iArr4[i92 + i114];
            }
            arrayList.add(new N5.a(bArr8, bArr9));
            iMax3 = Math.max(iMax3, i92);
            iMax4 = Math.max(iMax4, i102);
            i82 = i108 + iArr2[0];
            i81 = i107 + 1;
            iA9 = i101;
            i48 = i84;
            bVarValueOf = bVar3;
            fVarC = fVar2;
            i74 = i100;
            aVar3 = aVar5;
            i75 = i105;
            i80 = 1;
        }
        f fVar3 = fVarC;
        int i115 = i74;
        L5.b bVar6 = bVarValueOf;
        int i116 = i48;
        if (i75 != i82) {
            throw new q("Data bytes does not match offset");
        }
        p176w5.a aVar6 = new p176w5.a();
        for (int i117 = 0; i117 < iMax3; i117++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArr10 = ((N5.a) it.next()).f4952a;
                if (i117 < bArr10.length) {
                    aVar6.b(bArr10[i117], 8);
                }
            }
        }
        for (int i118 = 0; i118 < iMax4; i118++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArr11 = ((N5.a) it2.next()).f4953b;
                if (i118 < bArr11.length) {
                    aVar6.b(bArr11[i118], 8);
                }
            }
        }
        if (i115 != aVar6.g()) {
            StringBuilder sbK = r.k("Interleaving error: ", i115, " and ");
            sbK.append(aVar6.g());
            sbK.append(" differ.");
            throw new q(sbK.toString());
        }
        int i119 = (fVar3.f4726a * 4) + 17;
        V.b bVar7 = new V.b(i119, i119, 6, 0);
        p130q5.d dVar8 = p130q5.d.f29613K;
        if (hashtable.containsKey(dVar8)) {
            i10 = Integer.parseInt(hashtable.get(dVar8).toString());
            i9 = 8;
            if (i10 < 0 || i10 >= 8) {
            }
            if (i10 == -1) {
                i18 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                i19 = -1;
                i20 = 0;
                while (i20 < i9) {
                    L5.b bVar8 = bVar6;
                    N5.b.a(aVar6, bVar8, fVar3, i20, bVar7);
                    int iB2 = com.bumptech.glide.d.b(bVar7, false) + com.bumptech.glide.d.b(bVar7, true);
                    bArr = (byte[][]) bVar7.f6995d;
                    i21 = bVar7.f6993b;
                    i22 = bVar7.f6994c;
                    i23 = 0;
                    int i120 = 0;
                    while (i23 < i22 - 1) {
                        bArr6 = bArr[i23];
                        int i121 = i19;
                        i43 = 0;
                        while (i43 < i21 - 1) {
                            b8 = bArr6[i43];
                            i44 = i43 + 1;
                            int i122 = i21;
                            if (b8 == bArr6[i44]) {
                                bArr7 = bArr[i23 + 1];
                                if (b8 != bArr7[i43] && b8 == bArr7[i44]) {
                                    i120++;
                                }
                            }
                            i43 = i44;
                            i21 = i122;
                        }
                        i23++;
                        i19 = i121;
                    }
                    i24 = i19;
                    int i123 = (i120 * 3) + iB2;
                    bArr2 = (byte[][]) bVar7.f6995d;
                    i25 = bVar7.f6993b;
                    i26 = bVar7.f6994c;
                    i28 = 0;
                    for (i27 = 0; i27 < i26; i27++) {
                        i35 = 0;
                        while (i35 < i25) {
                            bArr5 = bArr2[i27];
                            i36 = i35 + 6;
                            if (i36 < i25) {
                                i37 = i25;
                                i40 = 1;
                                if (bArr5[i35] == 1 && bArr5[i35 + 1] == 0 && bArr5[i35 + 2] == 1 && bArr5[i35 + 3] == 1 && bArr5[i35 + 4] == 1 && bArr5[i35 + 5] == 0 && bArr5[i36] == 1) {
                                    iMax = Math.max(i35 - 4, 0);
                                    iMin2 = Math.min(i35, bArr5.length);
                                    while (true) {
                                        if (iMax < iMin2) {
                                            i41 = iMin2;
                                            if (bArr5[iMax] == 1) {
                                                iMax2 = Math.max(i35 + 7, 0);
                                                iMin3 = Math.min(i35 + 11, bArr5.length);
                                                while (true) {
                                                    if (iMax2 < iMin3) {
                                                        i42 = iMin3;
                                                        if (bArr5[iMax2] == 1) {
                                                            break;
                                                        }
                                                        iMax2++;
                                                        iMin3 = i42;
                                                    } else {
                                                        i40 = 1;
                                                    }
                                                }
                                            } else {
                                                iMax++;
                                                iMin2 = i41;
                                            }
                                        }
                                        i28 += i40;
                                        break;
                                    }
                                }
                            } else {
                                i37 = i25;
                            }
                            i38 = i27 + 6;
                            if (i38 < i26) {
                                i39 = 1;
                                if (bArr2[i27][i35] != 1 && bArr2[i27 + 1][i35] == 0 && bArr2[i27 + 2][i35] == 1 && bArr2[i27 + 3][i35] == 1) {
                                    if (bArr2[i27 + 4][i35] == 1) {
                                        if (bArr2[i27 + 5][i35] == 0 && bArr2[i38][i35] == 1) {
                                            int iMax5 = Math.max(i27 - 4, 0);
                                            int iMin4 = Math.min(i27, bArr2.length);
                                            while (true) {
                                                if (iMax5 < iMin4) {
                                                    if (bArr2[iMax5][i35] == 1) {
                                                        int iMax6 = Math.max(i27 + 7, 0);
                                                        int iMin5 = Math.min(i27 + 11, bArr2.length);
                                                        while (true) {
                                                            if (iMax6 < iMin5) {
                                                                if (bArr2[iMax6][i35] == 1) {
                                                                    break;
                                                                }
                                                                iMax6++;
                                                            }
                                                        }
                                                    } else {
                                                        iMax5++;
                                                    }
                                                }
                                                i28++;
                                                break;
                                            }
                                        }
                                    }
                                }
                                i35 += i39;
                                i25 = i37;
                            } else {
                                i39 = 1;
                            }
                            i35 += i39;
                            i25 = i37;
                        }
                    }
                    int i124 = (i28 * 40) + i123;
                    bArr3 = (byte[][]) bVar7.f6995d;
                    i29 = bVar7.f6993b;
                    i30 = bVar7.f6994c;
                    i31 = 0;
                    i32 = 0;
                    while (i31 < i30) {
                        bArr4 = bArr3[i31];
                        i33 = i32;
                        for (i34 = 0; i34 < i29; i34++) {
                            if (bArr4[i34] == 1) {
                                i33++;
                            }
                        }
                        i31++;
                        i32 = i33;
                    }
                    int i125 = bVar7.f6994c * bVar7.f6993b;
                    iAbs = (((Math.abs((i32 << 1) - i125) * 10) / i125) * 10) + i124;
                    if (iAbs < i18) {
                        i18 = iAbs;
                        i19 = i20;
                    } else {
                        i19 = i24;
                    }
                    i20++;
                    bVar6 = bVar8;
                    i9 = 8;
                }
                bVar = bVar6;
                i10 = i19;
            } else {
                bVar = bVar6;
            }
            N5.b.a(aVar6, bVar, fVar3, i10, bVar7);
            i11 = bVar7.f6993b;
            i12 = bVar7.f6994c;
            int i126 = i116 << 1;
            int i127 = i11 + i126;
            int i128 = i126 + i12;
            int iMax7 = Math.max(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, i127);
            int iMax8 = Math.max(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, i128);
            iMin = Math.min(iMax7 / i127, iMax8 / i128);
            i13 = (iMax7 - (i11 * iMin)) / 2;
            i14 = (iMax8 - (i12 * iMin)) / 2;
            bVar2 = new p176w5.b(iMax7, iMax8);
            i15 = 0;
            while (i15 < i12) {
                i16 = i13;
                i17 = 0;
                while (i17 < i11) {
                    if (bVar7.f(i17, i15) == 1) {
                        bVar2.g(i16, i14, iMin, iMin);
                    }
                    i17++;
                    i16 += iMin;
                }
                i15++;
                i14 += iMin;
            }
            return bVar2;
        }
        i9 = 8;
        i10 = -1;
        if (i10 == -1) {
            i18 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            i19 = -1;
            i20 = 0;
            while (i20 < i9) {
                L5.b bVar9 = bVar6;
                N5.b.a(aVar6, bVar9, fVar3, i20, bVar7);
                int iB3 = com.bumptech.glide.d.b(bVar7, false) + com.bumptech.glide.d.b(bVar7, true);
                bArr = (byte[][]) bVar7.f6995d;
                i21 = bVar7.f6993b;
                i22 = bVar7.f6994c;
                i23 = 0;
                int i129 = 0;
                while (i23 < i22 - 1) {
                    bArr6 = bArr[i23];
                    int i1210 = i19;
                    i43 = 0;
                    while (i43 < i21 - 1) {
                        b8 = bArr6[i43];
                        i44 = i43 + 1;
                        int i1211 = i21;
                        if (b8 == bArr6[i44]) {
                            bArr7 = bArr[i23 + 1];
                            if (b8 != bArr7[i43]) {
                            }
                        }
                        i43 = i44;
                        i21 = i1211;
                    }
                    i23++;
                    i19 = i1210;
                }
                i24 = i19;
                int i1212 = (i129 * 3) + iB3;
                bArr2 = (byte[][]) bVar7.f6995d;
                i25 = bVar7.f6993b;
                i26 = bVar7.f6994c;
                i28 = 0;
                while (i27 < i26) {
                    i35 = 0;
                    while (i35 < i25) {
                        bArr5 = bArr2[i27];
                        i36 = i35 + 6;
                        if (i36 < i25) {
                            i37 = i25;
                            i40 = 1;
                            if (bArr5[i35] == 1) {
                                iMax = Math.max(i35 - 4, 0);
                                iMin2 = Math.min(i35, bArr5.length);
                                while (true) {
                                    if (iMax < iMin2) {
                                        i41 = iMin2;
                                        if (bArr5[iMax] == 1) {
                                            iMax2 = Math.max(i35 + 7, 0);
                                            iMin3 = Math.min(i35 + 11, bArr5.length);
                                            while (true) {
                                                if (iMax2 < iMin3) {
                                                    i42 = iMin3;
                                                    if (bArr5[iMax2] == 1) {
                                                        break;
                                                        break;
                                                    }
                                                    iMax2++;
                                                    iMin3 = i42;
                                                } else {
                                                    i40 = 1;
                                                }
                                            }
                                        } else {
                                            iMax++;
                                            iMin2 = i41;
                                        }
                                    }
                                    i28 += i40;
                                    break;
                                }
                            }
                        } else {
                            i37 = i25;
                        }
                        i38 = i27 + 6;
                        if (i38 < i26) {
                            i39 = 1;
                            if (bArr2[i27][i35] != 1) {
                            }
                        } else {
                            i39 = 1;
                        }
                        i35 += i39;
                        i25 = i37;
                    }
                }
                int i1213 = (i28 * 40) + i1212;
                bArr3 = (byte[][]) bVar7.f6995d;
                i29 = bVar7.f6993b;
                i30 = bVar7.f6994c;
                i31 = 0;
                i32 = 0;
                while (i31 < i30) {
                    bArr4 = bArr3[i31];
                    i33 = i32;
                    while (i34 < i29) {
                        if (bArr4[i34] == 1) {
                            i33++;
                        }
                    }
                    i31++;
                    i32 = i33;
                }
                int i1214 = bVar7.f6994c * bVar7.f6993b;
                iAbs = (((Math.abs((i32 << 1) - i1214) * 10) / i1214) * 10) + i1213;
                if (iAbs < i18) {
                    i18 = iAbs;
                    i19 = i20;
                } else {
                    i19 = i24;
                }
                i20++;
                bVar6 = bVar9;
                i9 = 8;
            }
            bVar = bVar6;
            i10 = i19;
        } else {
            bVar = bVar6;
        }
        N5.b.a(aVar6, bVar, fVar3, i10, bVar7);
        i11 = bVar7.f6993b;
        i12 = bVar7.f6994c;
        int i1215 = i116 << 1;
        int i1216 = i11 + i1215;
        int i1217 = i1215 + i12;
        int iMax9 = Math.max(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, i1216);
        int iMax10 = Math.max(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, i1217);
        iMin = Math.min(iMax9 / i1216, iMax10 / i1217);
        i13 = (iMax9 - (i11 * iMin)) / 2;
        i14 = (iMax10 - (i12 * iMin)) / 2;
        bVar2 = new p176w5.b(iMax9, iMax10);
        i15 = 0;
        while (i15 < i12) {
            i16 = i13;
            i17 = 0;
            while (i17 < i11) {
                if (bVar7.f(i17, i15) == 1) {
                    bVar2.g(i16, i14, iMin, iMin);
                }
                i17++;
                i16 += iMin;
            }
            i15++;
            i14 += iMin;
        }
        return bVar2;
    }

    public static void s0(String str, int i8, Throwable th) {
        h.f("Ad failed to load : " + i8);
        I.l(str, th);
        if (i8 == 3) {
            return;
        }
        l.f25980A.f25987g.h(str, th);
    }

    public static void t(int i8, Parcel parcel) {
        if (parcel.dataPosition() != i8) {
            throw new M3.b(r.f("Overread allowed size end=", i8), parcel);
        }
    }

    public static void t0(String str, boolean z7) throws C0800Ka {
        if (!z7) {
            throw C0800Ka.a(str, null);
        }
    }

    public static boolean u(Context context) {
        if (f25031I == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z7 = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z7 = true;
            }
            f25031I = Boolean.valueOf(z7);
        }
        return f25031I.booleanValue();
    }

    public static ZA u0(Set set, C2285yE c2285yE) {
        if (!(set instanceof SortedSet)) {
            if (!(set instanceof ZA)) {
                set.getClass();
                return new ZA(set, c2285yE);
            }
            ZA za = (ZA) set;
            InterfaceC2321yz interfaceC2321yz = za.f17732H;
            interfaceC2321yz.getClass();
            return new ZA((Set) za.f17731G, new C2373zz(Arrays.asList(interfaceC2321yz, c2285yE)));
        }
        Set set2 = (SortedSet) set;
        if (!(set2 instanceof ZA)) {
            set2.getClass();
            return new C1039aB(set2, c2285yE);
        }
        ZA za2 = (ZA) set2;
        InterfaceC2321yz interfaceC2321yz2 = za2.f17732H;
        interfaceC2321yz2.getClass();
        return new C1039aB((SortedSet) za2.f17731G, new C2373zz(Arrays.asList(interfaceC2321yz2, c2285yE)));
    }

    public static boolean v(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f25029G == null) {
            f25029G = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (f25029G.booleanValue() && Build.VERSION.SDK_INT < 24) {
            return true;
        }
        if (i0(context)) {
            return !m.a() || m.b();
        }
        return false;
    }

    public static void v0(Parcel parcel, int i8, int i9) {
        parcel.writeInt(i8 | (i9 << 16));
    }

    public static void w0(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static boolean x0(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean y(int i8, Parcel parcel) {
        q0(parcel, i8, 4);
        return parcel.readInt() != 0;
    }

    public static void y0(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("admob", 0);
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt("init_without_write", 0).putInt("crash_without_write", 0).commit();
    }

    public static Boolean z(int i8, Parcel parcel) {
        int iF = F(i8, parcel);
        if (iF == 0) {
            return null;
        }
        g0(parcel, iF, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static boolean z0(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof MA) {
            collection = ((MA) collection).zza();
        }
        boolean zRemove = false;
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                zRemove |= set.remove(it.next());
            }
            return zRemove;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                zRemove = true;
            }
        }
        return zRemove;
    }

    public abstract Map b0();

    public KA l0() {
        return new KA(this);
    }

    public abstract View w(int i8);

    public abstract boolean x();
}
