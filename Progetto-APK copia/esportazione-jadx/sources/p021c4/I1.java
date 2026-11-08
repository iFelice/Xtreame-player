package p021c4;

import A0.O;
import I1.d;
import J3.f;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.C1369gg;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.M;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.videolan.libvlc.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class I1 extends AbstractC0610s0 {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final String[] f10868O = {"firebase_", "google_", "ga_"};

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final String[] f10869P = {"_err"};

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SecureRandom f10870I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicLong f10871J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f10872K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public d f10873L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Boolean f10874M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Integer f10875N;

    public I1(C0597l0 c0597l0) {
        super(c0597l0);
        this.f10875N = null;
        this.f10871J = new AtomicLong(0L);
    }

    public static void C(S0 s7, Bundle bundle, boolean z7) {
        if (bundle != null && s7 != null) {
            if (!bundle.containsKey("_sc") || z7) {
                String str = s7.f11030a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = s7.f11031b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", s7.f11032c);
                return;
            }
            z7 = false;
        }
        if (bundle != null && s7 == null && z7) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public static void G(H1 h8, String str, int i8, String str2, String str3, int i9) {
        Bundle bundle = new Bundle();
        p0(i8, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i8 == 6 || i8 == 7 || i8 == 2) {
            bundle.putLong("_el", i9);
        }
        h8.b(str, "_err", bundle);
    }

    public static boolean S(String str, String[] strArr) {
        c.h(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean V(String str) {
        String str2 = (String) E.f10816r0.a(null);
        return str2.equals("*") || Arrays.asList(str2.split(",")).contains(str);
    }

    public static boolean e0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public static boolean h0(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean i0(String str) {
        c.e(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static boolean j0(Context context) {
        ActivityInfo receiverInfo;
        c.h(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null || !receiverInfo.enabled) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static boolean k0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) == null || !serviceInfo.enabled) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static boolean l0(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? k0(context, "com.google.android.gms.measurement.AppMeasurementJobService") : k0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static byte[] o0(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static final boolean p0(int i8, Bundle bundle) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i8);
        return true;
    }

    public static String w(int i8, String str, boolean z7) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i8) {
            return str;
        }
        if (z7) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i8))).concat("...");
        }
        return null;
    }

    public static MessageDigest x() {
        for (int i8 = 0; i8 < 2; i8++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (messageDigest != null) {
                    return messageDigest;
                }
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    public static long x0(byte[] bArr) {
        c.h(bArr);
        int length = bArr.length;
        int i8 = 0;
        c.k(length > 0);
        long j8 = 0;
        for (int i9 = length - 1; i9 >= 0 && i9 >= bArr.length - 8; i9--) {
            j8 += (((long) bArr[i9]) & 255) << i8;
            i8 += 8;
        }
        return j8;
    }

    public static ArrayList z(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0578f c0578f = (C0578f) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", c0578f.f11160G);
            bundle.putString("origin", c0578f.f11161H);
            bundle.putLong("creation_timestamp", c0578f.f11163J);
            bundle.putString("name", c0578f.f11162I.f10840H);
            Object objI = c0578f.f11162I.i();
            c.h(objI);
            Cw.K0(bundle, objI);
            bundle.putBoolean("active", c0578f.f11164K);
            String str = c0578f.f11165L;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            C0613u c0613u = c0578f.f11166M;
            if (c0613u != null) {
                bundle.putString("timed_out_event_name", c0613u.f11371G);
                C0611t c0611t = c0613u.f11372H;
                if (c0611t != null) {
                    bundle.putBundle("timed_out_event_params", c0611t.i());
                }
            }
            bundle.putLong("trigger_timeout", c0578f.f11167N);
            C0613u c0613u2 = c0578f.f11168O;
            if (c0613u2 != null) {
                bundle.putString("triggered_event_name", c0613u2.f11371G);
                C0611t c0611t2 = c0613u2.f11372H;
                if (c0611t2 != null) {
                    bundle.putBundle("triggered_event_params", c0611t2.i());
                }
            }
            bundle.putLong("triggered_timestamp", c0578f.f11162I.f10841I);
            bundle.putLong("time_to_live", c0578f.f11169P);
            C0613u c0613u3 = c0578f.f11170Q;
            if (c0613u3 != null) {
                bundle.putString("expired_event_name", c0613u3.f11371G);
                C0611t c0611t3 = c0613u3.f11372H;
                if (c0611t3 != null) {
                    bundle.putBundle("expired_event_params", c0611t3.i());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public final void A(Bundle bundle, long j8) {
        long j9 = bundle.getLong("_et");
        if (j9 != 0) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(Long.valueOf(j9), "Params already contained engagement");
        } else {
            j9 = 0;
        }
        bundle.putLong("_et", j8 + j9);
    }

    public final Bundle A0(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objS = s(bundle.get(str), str);
                if (objS == null) {
                    C0597l0 c0597l0 = (C0597l0) this.f10616G;
                    T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    t7.f11044Q.b(c0597l0.f11262S.e(str), "Param value can't be null");
                } else {
                    H(bundle2, str, objS);
                }
            }
        }
        return bundle2;
    }

    public final void B(Bundle bundle, int i8, String str, Object obj) {
        if (p0(i8, bundle)) {
            ((C0597l0) this.f10616G).getClass();
            bundle.putString("_ev", w(40, str, true));
            if (obj != null) {
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final void D(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                I1 i8 = ((C0597l0) this.f10616G).f11261R;
                C0597l0.i(i8);
                i8.H(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void E(Parcelable[] parcelableArr, int i8) {
        c.h(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i9 = 0;
            boolean z7 = false;
            for (String str : new TreeSet(bundle.keySet())) {
                if (i0(str) && !S(str, AbstractC0622y0.f11415h) && (i9 = i9 + 1) > i8) {
                    C0597l0 c0597l0 = (C0597l0) this.f10616G;
                    if (!c0597l0.f11256M.B(null, E.f10820s1) || !z7) {
                        T t7 = c0597l0.f11258O;
                        C0597l0.k(t7);
                        O o4 = c0597l0.f11262S;
                        t7.f11041N.c(o4.e(str), o4.b(bundle), "Param can't contain more than " + i8 + " item-scoped custom parameters");
                    }
                    p0(28, bundle);
                    bundle.remove(str);
                    z7 = true;
                }
            }
        }
    }

    public final void F(C1369gg c1369gg, int i8) {
        Bundle bundle = (Bundle) c1369gg.f18959e;
        int i9 = 0;
        boolean z7 = false;
        for (String str : new TreeSet(bundle.keySet())) {
            if (i0(str) && (i9 = i9 + 1) > i8) {
                C0597l0 c0597l0 = (C0597l0) this.f10616G;
                if (!c0597l0.f11256M.B(null, E.f10820s1) || !z7) {
                    String strY = O.y("Event can't contain more than ", i8, " params");
                    T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    String str2 = (String) c1369gg.f18957c;
                    O o4 = c0597l0.f11262S;
                    t7.f11041N.c(o4.d(str2), o4.b(bundle), strY);
                    p0(5, bundle);
                }
                bundle.remove(str);
                z7 = true;
            }
        }
    }

    public final void H(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
            return;
        }
        if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11044Q.c(c0597l0.f11262S.e(str), simpleName, "Not putting event parameter. Invalid value type. name, type");
        }
    }

    public final void I(M m7, boolean z7) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z7);
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning boolean value to wrapper");
        }
    }

    public final void J(M m7, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning bundle list to wrapper");
        }
    }

    public final void K(M m7, Bundle bundle) {
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning bundle value to wrapper");
        }
    }

    public final void L(M m7, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning byte array to wrapper");
        }
    }

    public final void M(M m7, int i8) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i8);
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning int value to wrapper");
        }
    }

    public final void N(M m7, long j8) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j8);
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning long value to wrapper");
        }
    }

    public final void O(String str, M m7) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning string value to wrapper");
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a7  */
    public final int P(String str, String str2, Object obj, Bundle bundle, List list, boolean z7, boolean z8) {
        int i8;
        int size;
        m();
        if (!e0(obj)) {
            i8 = 0;
        } else {
            if (!z8) {
                return 21;
            }
            if (!S(str2, AbstractC0622y0.f11414g)) {
                return 20;
            }
            C0574d1 c0574d1R = ((C0597l0) this.f10616G).r();
            c0574d1R.m();
            c0574d1R.n();
            if (c0574d1R.A()) {
                I1 i9 = ((C0597l0) c0574d1R.f10616G).f11261R;
                C0597l0.i(i9);
                if (i9.v0() < 200900) {
                    return 25;
                }
            }
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            c0597l0.getClass();
            boolean z9 = obj instanceof Parcelable[];
            if (z9) {
                size = ((Parcelable[]) obj).length;
            } else if (obj instanceof ArrayList) {
                size = ((ArrayList) obj).size();
            } else {
                i8 = 0;
            }
            if (size > 200) {
                T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11044Q.d("param", str2, Integer.valueOf(size), "Parameter array is too long; discarded. Value kind, name, array length");
                if (z9) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    if (parcelableArr.length > 200) {
                        bundle.putParcelableArray(str2, (Parcelable[]) Arrays.copyOf(parcelableArr, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK));
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.size() > 200) {
                        bundle.putParcelableArrayList(str2, new ArrayList<>(arrayList.subList(0, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK)));
                    }
                }
                i8 = 17;
            } else {
                i8 = 0;
            }
        }
        if (Z("param", str2, (h0(str) || h0(str2)) ? Math.max(((C0597l0) this.f10616G).f11256M.s(null, false), 256) : ((C0597l0) this.f10616G).f11256M.s(null, false), obj)) {
            return i8;
        }
        if (!z8) {
            return 4;
        }
        if (obj instanceof Bundle) {
            U(str, str2, (Bundle) obj, list, z7);
        } else if (obj instanceof Parcelable[]) {
            for (Parcelable parcelable : (Parcelable[]) obj) {
                if (!(parcelable instanceof Bundle)) {
                    T t8 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11044Q.c(parcelable.getClass(), str2, "All Parcelable[] elements must be of type Bundle. Value type, name");
                    return 4;
                }
                U(str, str2, (Bundle) parcelable, list, z7);
            }
        } else {
            if (!(obj instanceof ArrayList)) {
                return 4;
            }
            ArrayList arrayList2 = (ArrayList) obj;
            int size2 = arrayList2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                Object obj2 = arrayList2.get(i10);
                if (!(obj2 instanceof Bundle)) {
                    T t9 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11044Q.c(obj2 != null ? obj2.getClass() : "null", str2, "All ArrayList elements must be of type Bundle. Value type, name");
                    return 4;
                }
                U(str, str2, (Bundle) obj2, list, z7);
            }
        }
        return i8;
    }

    public final int Q(String str) {
        if ("_ldl".equals(str)) {
            ((C0597l0) this.f10616G).getClass();
            return 2048;
        }
        if ("_id".equals(str)) {
            ((C0597l0) this.f10616G).getClass();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            ((C0597l0) this.f10616G).getClass();
            return 100;
        }
        ((C0597l0) this.f10616G).getClass();
        return 36;
    }

    public final Object R(int i8, Object obj, boolean z7, boolean z8) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return w(i8, obj.toString(), z7);
        }
        if (!z8 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleA0 = A0((Bundle) parcelable);
                if (!bundleA0.isEmpty()) {
                    arrayList.add(bundleA0);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final void T() {
        m();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.a("Utils falling back to Random for random id");
            }
        }
        this.f10871J.set(jNextLong);
    }

    public final void U(String str, String str2, Bundle bundle, List list, boolean z7) {
        int iT0;
        int iP;
        if (bundle == null) {
            return;
        }
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        I1 i8 = ((C0597l0) c0597l0.f11256M.f10616G).f11261R;
        C0597l0.i(i8);
        int i9 = true != i8.g0(231100000) ? 0 : 35;
        int i10 = 0;
        boolean z8 = false;
        for (String str3 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str3)) {
                iT0 = !z7 ? t0(str3) : 0;
                if (iT0 == 0) {
                    iT0 = s0(str3);
                }
            } else {
                iT0 = 0;
            }
            if (iT0 != 0) {
                B(bundle, iT0, str3, iT0 == 3 ? str3 : null);
                bundle.remove(str3);
                i9 = i9;
            } else {
                boolean zE0 = e0(bundle.get(str3));
                T t7 = c0597l0.f11258O;
                if (zE0) {
                    C0597l0.k(t7);
                    t7.f11044Q.d(str, str2, str3, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name");
                    iP = 22;
                } else {
                    iP = P(str, str3, bundle.get(str3), bundle, list, z7, false);
                }
                if (iP != 0 && !"_ev".equals(str3)) {
                    B(bundle, iP, str3, bundle.get(str3));
                    bundle.remove(str3);
                } else if (i0(str3) && !S(str3, AbstractC0622y0.f11415h)) {
                    int i11 = i10 + 1;
                    boolean zG0 = g0(231100000);
                    O o4 = c0597l0.f11262S;
                    if (!zG0) {
                        C0597l0.k(t7);
                        t7.f11041N.c(o4.d(str), o4.b(bundle), "Item array not supported on client's version of Google Play Services (Android Only)");
                        p0(23, bundle);
                        bundle.remove(str3);
                    } else if (i11 > i9) {
                        if (!c0597l0.f11256M.B(null, E.f10820s1) || !z8) {
                            C0597l0.k(t7);
                            t7.f11041N.c(o4.d(str), o4.b(bundle), "Item can't contain more than " + i9 + " item-scoped custom params");
                        }
                        p0(28, bundle);
                        bundle.remove(str3);
                        i10 = i11;
                        i9 = i9;
                        z8 = true;
                    }
                    i10 = i11;
                }
            }
            i9 = i9;
        }
    }

    public final boolean W(String str, String str2) {
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        boolean zB = c0597l0.f11256M.B(null, E.f10814q1);
        T t7 = c0597l0.f11258O;
        if (zB) {
            if (TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(((C0597l0) this.f10616G).f11251H)) {
                    C0597l0.k(t7);
                    t7.f11041N.a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
                    return false;
                }
            } else {
                if (n0(str)) {
                    return true;
                }
                if (TextUtils.isEmpty(((C0597l0) this.f10616G).f11251H)) {
                    C0597l0.k(t7);
                    t7.f11041N.b(T.t(str), "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id");
                    return false;
                }
            }
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                if (TextUtils.isEmpty(((C0597l0) this.f10616G).f11251H)) {
                    C0597l0.k(t7);
                    t7.f11041N.a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
                }
                return false;
            }
            if (!n0(str2)) {
                C0597l0.k(t7);
                t7.f11041N.b(T.t(str2), "Invalid admob_app_id. Analytics disabled.");
                return false;
            }
        } else if (!n0(str)) {
            if (TextUtils.isEmpty(((C0597l0) this.f10616G).f11251H)) {
                C0597l0.k(t7);
                t7.f11041N.b(T.t(str), "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id");
            }
            return false;
        }
        return true;
    }

    public final boolean X(int i8, String str, String str2) {
        if (str2 == null) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11041N.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i8) {
            return true;
        }
        T t8 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t8);
        t8.f11041N.d(str, Integer.valueOf(i8), str2, "Name is too long. Type, maximum supported length, name");
        return false;
    }

    public final boolean Y(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11041N.b(str, "Name is required and can't be null. Type");
            return false;
        }
        String[] strArr3 = f10868O;
        for (int i8 = 0; i8 < 3; i8++) {
            if (str2.startsWith(strArr3[i8])) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11041N.c(str, str2, "Name starts with reserved prefix. Type, name");
                return false;
            }
        }
        if (strArr == null || !S(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && S(str2, strArr2)) {
            return true;
        }
        T t9 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t9);
        t9.f11041N.c(str, str2, "Name is reserved. Type, name");
        return false;
    }

    public final boolean Z(String str, String str2, int i8, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String string = obj.toString();
            if (string.codePointCount(0, string.length()) > i8) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11044Q.d(str, str2, Integer.valueOf(string.length()), "Value is too long; discarded. Value kind, name, value length");
                return false;
            }
        }
        return true;
    }

    public final boolean a0(String str, String str2) {
        if (str2 == null) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11041N.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11041N.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                T t9 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t9);
                t9.f11041N.c(str, str2, "Name must start with a letter or _ (underscore). Type, name");
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                T t10 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t10);
                t10.f11041N.c(str, str2, "Name must consist of letters, digits or _ (underscores). Type, name");
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean b0(String str, String str2) {
        if (str2 == null) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11041N.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11041N.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11041N.c(str, str2, "Name must start with a letter. Type, name");
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                T t10 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t10);
                t10.f11041N.c(str, str2, "Name must consist of letters, digits or _ (underscores). Type, name");
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean c0(String str) {
        m();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (Q3.c.a(c0597l0.f11250G).f23010G.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11046S.b(str, "Permission not granted");
        return false;
    }

    public final boolean d0(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return ((C0597l0) this.f10616G).f11256M.q("debug.firebase.analytics.app").equals(str);
    }

    public final boolean f0(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfoC = Q3.c.a(context).c(64, str);
            if (packageInfoC == null || (signatureArr = packageInfoC.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(e8, "Package name not found");
            return true;
        } catch (CertificateException e9) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.b(e9, "Error obtaining certificate");
            return true;
        }
    }

    public final boolean g0(int i8) {
        Boolean bool = ((C0597l0) this.f10616G).r().f11147K;
        if (v0() < i8 / 1000) {
            return (bool == null || bool.booleanValue()) ? false : true;
        }
        return true;
    }

    public final boolean m0(String str, String str2, String str3, String str4) {
        if (((C0597l0) this.f10616G).f11256M.B(null, E.f10814q1)) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            boolean zIsEmpty2 = TextUtils.isEmpty(str2);
            if (!zIsEmpty && !zIsEmpty2) {
                c.h(str);
                if (!str.equals(str2)) {
                    return true;
                }
            }
            return false;
        }
        boolean zIsEmpty3 = TextUtils.isEmpty(str);
        boolean zIsEmpty4 = TextUtils.isEmpty(str2);
        if (!zIsEmpty3 && !zIsEmpty4) {
            c.h(str);
            return !str.equals(str2);
        }
        if (zIsEmpty3 && zIsEmpty4) {
            if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                return !TextUtils.isEmpty(str4);
            }
            return !str3.equals(str4);
        }
        if (zIsEmpty3) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    @Override // p021c4.AbstractC0610s0
    public final boolean n() {
        return true;
    }

    public final boolean n0(String str) {
        c.h(str);
        return str.matches(true != ((C0597l0) this.f10616G).f11256M.B(null, E.f10814q1) ? "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$" : "^1:\\d+:android:[a-f0-9]+$");
    }

    public final Bundle q(String str, Bundle bundle, List list, boolean z7) {
        int iT0;
        int i8;
        boolean zS = S(str, AbstractC0622y0.f11411d);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        I1 i9 = ((C0597l0) c0597l0.f11256M.f10616G).f11261R;
        C0597l0.i(i9);
        int i10 = i9.g0(201500000) ? 100 : 25;
        int i11 = 0;
        boolean z8 = false;
        for (String str2 : new TreeSet(bundle.keySet())) {
            if (list == 0 || !list.contains(str2)) {
                iT0 = !z7 ? t0(str2) : 0;
                if (iT0 == 0) {
                    iT0 = s0(str2);
                }
            } else {
                iT0 = 0;
            }
            if (iT0 != 0) {
                B(bundle2, iT0, str2, iT0 == 3 ? str2 : null);
                bundle2.remove(str2);
                i8 = i10;
            } else {
                i8 = i10;
                int iP = P(str, str2, bundle.get(str2), bundle2, list, z7, zS);
                if (iP == 17) {
                    B(bundle2, 17, str2, Boolean.FALSE);
                } else if (iP != 0 && !"_ev".equals(str2)) {
                    B(bundle2, iP, iP == 21 ? str : str2, bundle.get(str2));
                    bundle2.remove(str2);
                }
                if (i0(str2)) {
                    int i12 = i11 + 1;
                    if (i12 > i8) {
                        if (!c0597l0.f11256M.B(null, E.f10820s1) || !z8) {
                            String strY = O.y("Event can't contain more than ", i8, " params");
                            T t7 = c0597l0.f11258O;
                            C0597l0.k(t7);
                            O o4 = c0597l0.f11262S;
                            t7.f11041N.c(o4.d(str), o4.b(bundle), strY);
                        }
                        p0(5, bundle2);
                        bundle2.remove(str2);
                        z8 = true;
                    }
                    i11 = i12;
                }
                i10 = i8;
            }
            i10 = i8;
        }
        return bundle2;
    }

    public final int q0(Object obj, String str) {
        return "_ldl".equals(str) ? Z("user property referrer", str, Q(str), obj) : Z("user property", str, Q(str), obj) ? 0 : 7;
    }

    public final C0613u r(String str, Bundle bundle, String str2, long j8, boolean z7) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (r0(str) != 0) {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(c0597l0.f11262S.f(str), "Invalid conditional property event name");
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle bundleQ = q(str, bundle2, Collections.singletonList("_o"), true);
        if (z7) {
            bundleQ = A0(bundleQ);
        }
        c.h(bundleQ);
        return new C0613u(str, new C0611t(bundleQ), str2, j8);
    }

    public final int r0(String str) {
        if (!a0("event", str)) {
            return 2;
        }
        if (!Y("event", AbstractC0622y0.f11408a, AbstractC0622y0.f11409b, str)) {
            return 13;
        }
        ((C0597l0) this.f10616G).getClass();
        return !X(40, "event", str) ? 2 : 0;
    }

    public final Object s(Object obj, String str) {
        if ("_ev".equals(str)) {
            return R(Math.max(((C0597l0) this.f10616G).f11256M.s(null, false), 256), obj, true, true);
        }
        return R(h0(str) ? Math.max(((C0597l0) this.f10616G).f11256M.s(null, false), 256) : ((C0597l0) this.f10616G).f11256M.s(null, false), obj, false, true);
    }

    public final int s0(String str) {
        if (!a0("event param", str)) {
            return 3;
        }
        if (!Y("event param", null, null, str)) {
            return 14;
        }
        ((C0597l0) this.f10616G).getClass();
        return !X(40, "event param", str) ? 3 : 0;
    }

    public final Object t(Object obj, String str) {
        return "_ldl".equals(str) ? R(Q(str), obj, true, false) : R(Q(str), obj, false, false);
    }

    public final int t0(String str) {
        if (!b0("event param", str)) {
            return 3;
        }
        if (!Y("event param", null, null, str)) {
            return 14;
        }
        ((C0597l0) this.f10616G).getClass();
        return !X(40, "event param", str) ? 3 : 0;
    }

    public final String u() {
        byte[] bArr = new byte[16];
        y().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final int u0(String str) {
        if (!a0("user property", str)) {
            return 6;
        }
        if (!Y("user property", AbstractC0622y0.f11416i, null, str)) {
            return 15;
        }
        ((C0597l0) this.f10616G).getClass();
        return !X(24, "user property", str) ? 6 : 0;
    }

    public final int v0() {
        if (this.f10875N == null) {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            f fVar = f.f4145b;
            Context context = c0597l0.f11250G;
            fVar.getClass();
            this.f10875N = Integer.valueOf(f.a(context) / 1000);
        }
        return this.f10875N.intValue();
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00de  */
    public final long w0() {
        long j8;
        Object e8;
        Integer num;
        m();
        if (!V(((C0597l0) this.f10616G).n().t())) {
            return 0L;
        }
        int i8 = Build.VERSION.SDK_INT;
        boolean z7 = false;
        Integer num2 = null;
        if (i8 < 30) {
            j8 = 4;
        } else if (SdkExtensions.getExtensionVersion(30) < 4) {
            j8 = 8;
        } else {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            int extensionVersion = (i8 < 30 || SdkExtensions.getExtensionVersion(30) <= 3) ? 0 : SdkExtensions.getExtensionVersion(1000000);
            c0597l0.getClass();
            j8 = extensionVersion < ((Integer) E.f10798l0.a(null)).intValue() ? 16L : 0L;
        }
        if (!c0("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")) {
            j8 |= 2;
        }
        if (j8 == 0) {
            if (this.f10874M == null) {
                if (this.f10873L == null) {
                    this.f10873L = d.b(((C0597l0) this.f10616G).f11250G);
                }
                d dVar = this.f10873L;
                if (dVar == null) {
                    j8 = 64;
                } else {
                    try {
                        num = (Integer) dVar.c().get(10000L, TimeUnit.MILLISECONDS);
                        if (num != null) {
                            try {
                                if (num.intValue() == 1) {
                                    z7 = true;
                                }
                            } catch (InterruptedException e9) {
                                e8 = e9;
                                num2 = num;
                                T t7 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t7);
                                t7.f11042O.b(e8, "Measurement manager api exception");
                                this.f10874M = Boolean.FALSE;
                                num = num2;
                            } catch (CancellationException e10) {
                                e8 = e10;
                                num2 = num;
                                T t8 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t8);
                                t8.f11042O.b(e8, "Measurement manager api exception");
                                this.f10874M = Boolean.FALSE;
                                num = num2;
                            } catch (ExecutionException e11) {
                                e8 = e11;
                                num2 = num;
                                T t9 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t9);
                                t9.f11042O.b(e8, "Measurement manager api exception");
                                this.f10874M = Boolean.FALSE;
                                num = num2;
                            } catch (TimeoutException e12) {
                                e8 = e12;
                                num2 = num;
                                T t10 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t10);
                                t10.f11042O.b(e8, "Measurement manager api exception");
                                this.f10874M = Boolean.FALSE;
                                num = num2;
                            }
                        }
                        this.f10874M = Boolean.valueOf(z7);
                    } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException e13) {
                        e8 = e13;
                    }
                    T t11 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t11);
                    t11.f11047T.b(num, "Measurement manager api status result");
                    if (!this.f10874M.booleanValue()) {
                        j8 = 64;
                    }
                }
            } else if (!this.f10874M.booleanValue()) {
                j8 = 64;
            }
        }
        if (j8 == 0) {
            return 1L;
        }
        return j8;
    }

    public final SecureRandom y() {
        m();
        if (this.f10870I == null) {
            this.f10870I = new SecureRandom();
        }
        return this.f10870I;
    }

    public final long y0() {
        long andIncrement;
        long j8;
        AtomicLong atomicLong = this.f10871J;
        if (atomicLong.get() != 0) {
            AtomicLong atomicLong2 = this.f10871J;
            synchronized (atomicLong2) {
                atomicLong2.compareAndSet(-1L, 1L);
                andIncrement = atomicLong2.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (atomicLong) {
            long jNanoTime = System.nanoTime();
            ((C0597l0) this.f10616G).f11263T.getClass();
            long jNextLong = new Random(jNanoTime ^ System.currentTimeMillis()).nextLong();
            int i8 = this.f10872K + 1;
            this.f10872K = i8;
            j8 = jNextLong + ((long) i8);
        }
        return j8;
    }

    public final Bundle z0(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        String queryParameter8;
        String queryParameter9;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                queryParameter = uri.getQueryParameter("utm_campaign");
                queryParameter2 = uri.getQueryParameter("utm_source");
                queryParameter3 = uri.getQueryParameter("utm_medium");
                queryParameter4 = uri.getQueryParameter("gclid");
                queryParameter5 = uri.getQueryParameter("gbraid");
                queryParameter6 = uri.getQueryParameter("utm_id");
                queryParameter7 = uri.getQueryParameter("dclid");
                queryParameter8 = uri.getQueryParameter("srsltid");
                queryParameter9 = uri.getQueryParameter("sfmc_id");
            } else {
                queryParameter = null;
                queryParameter2 = null;
                queryParameter3 = null;
                queryParameter4 = null;
                queryParameter5 = null;
                queryParameter6 = null;
                queryParameter7 = null;
                queryParameter8 = null;
                queryParameter9 = null;
            }
            if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4) && TextUtils.isEmpty(queryParameter5) && TextUtils.isEmpty(queryParameter6) && TextUtils.isEmpty(queryParameter7) && TextUtils.isEmpty(queryParameter8) && TextUtils.isEmpty(queryParameter9)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString("campaign", queryParameter);
            }
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("source", queryParameter2);
            }
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("medium", queryParameter3);
            }
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("gclid", queryParameter4);
            }
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("gbraid", queryParameter5);
            }
            String queryParameter10 = uri.getQueryParameter("gad_source");
            if (!TextUtils.isEmpty(queryParameter10)) {
                bundle.putString("gad_source", queryParameter10);
            }
            String queryParameter11 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter11)) {
                bundle.putString("term", queryParameter11);
            }
            String queryParameter12 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter12)) {
                bundle.putString("content", queryParameter12);
            }
            String queryParameter13 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter13)) {
                bundle.putString("aclid", queryParameter13);
            }
            String queryParameter14 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter14)) {
                bundle.putString("cp1", queryParameter14);
            }
            String queryParameter15 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter15)) {
                bundle.putString("anid", queryParameter15);
            }
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("campaign_id", queryParameter6);
            }
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString("dclid", queryParameter7);
            }
            String queryParameter16 = uri.getQueryParameter("utm_source_platform");
            if (!TextUtils.isEmpty(queryParameter16)) {
                bundle.putString("source_platform", queryParameter16);
            }
            String queryParameter17 = uri.getQueryParameter("utm_creative_format");
            if (!TextUtils.isEmpty(queryParameter17)) {
                bundle.putString("creative_format", queryParameter17);
            }
            String queryParameter18 = uri.getQueryParameter("utm_marketing_tactic");
            if (!TextUtils.isEmpty(queryParameter18)) {
                bundle.putString("marketing_tactic", queryParameter18);
            }
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString("srsltid", queryParameter8);
            }
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString("sfmc_id", queryParameter9);
            }
            return bundle;
        } catch (UnsupportedOperationException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Install referrer url isn't a hierarchical URI");
            return null;
        }
    }
}
