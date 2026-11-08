package p021c4;

import E0.n;
import M3.b;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import com.google.android.gms.internal.measurement.AbstractC2626r2;
import com.google.android.gms.internal.measurement.B2;
import com.google.android.gms.internal.measurement.C2527a1;
import com.google.android.gms.internal.measurement.C2531b;
import com.google.android.gms.internal.measurement.C2533b1;
import com.google.android.gms.internal.measurement.C2551e1;
import com.google.android.gms.internal.measurement.C2557f1;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.measurement.C2581j1;
import com.google.android.gms.internal.measurement.C2587k1;
import com.google.android.gms.internal.measurement.C2593l1;
import com.google.android.gms.internal.measurement.C2600m2;
import com.google.android.gms.internal.measurement.C2616p1;
import com.google.android.gms.internal.measurement.C2625r1;
import com.google.android.gms.internal.measurement.C2629s0;
import com.google.android.gms.internal.measurement.C2644v0;
import com.google.android.gms.internal.measurement.C2650w1;
import com.google.android.gms.internal.measurement.C2654x0;
import com.google.android.gms.internal.measurement.C2660y1;
import com.google.android.gms.internal.measurement.C2664z0;
import com.google.android.gms.internal.measurement.G2;
import com.google.android.gms.internal.measurement.InterfaceC2656x2;
import com.google.android.gms.internal.measurement.InterfaceC2661y2;
import com.google.android.gms.internal.measurement.S0;
import com.google.android.gms.internal.measurement.V0;
import com.google.android.gms.internal.measurement.V2;
import com.google.android.gms.internal.measurement.X0;
import com.google.android.gms.internal.measurement.Z0;
import com.google.android.gms.internal.measurement.u4;
import com.google.android.gms.internal.measurement.v4;
import com.google.protobuf.U2;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class E1 extends u1 {
    public static final void A(int i8, StringBuilder sb) {
        for (int i9 = 0; i9 < i8; i9++) {
            sb.append("  ");
        }
    }

    public static final void B(Uri.Builder builder, String str, String str2, Set set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public static final String C(boolean z7, boolean z8, boolean z9) {
        StringBuilder sb = new StringBuilder();
        if (z7) {
            sb.append("Dynamic ");
        }
        if (z8) {
            sb.append("Sequence ");
        }
        if (z9) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    public static final void D(Uri.Builder builder, String[] strArr, Bundle bundle, Set set) {
        for (String str : strArr) {
            String[] strArrSplit = str.split(",");
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[strArrSplit.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                B(builder, str3, string, set);
            }
        }
    }

    public static final void E(StringBuilder sb, String str, C2616p1 c2616p1) {
        if (c2616p1 == null) {
            return;
        }
        A(3, sb);
        sb.append(str);
        sb.append(" {\n");
        if (c2616p1.r() != 0) {
            A(4, sb);
            sb.append("results: ");
            int i8 = 0;
            for (Long l4 : c2616p1.x()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                sb.append(l4);
                i8 = i9;
            }
            sb.append('\n');
        }
        if (c2616p1.t() != 0) {
            A(4, sb);
            sb.append("status: ");
            int i10 = 0;
            for (Long l8 : c2616p1.z()) {
                int i11 = i10 + 1;
                if (i10 != 0) {
                    sb.append(", ");
                }
                sb.append(l8);
                i10 = i11;
            }
            sb.append('\n');
        }
        if (c2616p1.q() != 0) {
            A(4, sb);
            sb.append("dynamic_filter_timestamps: {");
            int i12 = 0;
            for (Z0 z7 : c2616p1.w()) {
                int i13 = i12 + 1;
                if (i12 != 0) {
                    sb.append(", ");
                }
                sb.append(z7.w() ? Integer.valueOf(z7.q()) : null);
                sb.append(":");
                sb.append(z7.v() ? Long.valueOf(z7.r()) : null);
                i12 = i13;
            }
            sb.append("}\n");
        }
        if (c2616p1.s() != 0) {
            A(4, sb);
            sb.append("sequence_filter_timestamps: {");
            int i14 = 0;
            for (C2625r1 c2625r1 : c2616p1.y()) {
                int i15 = i14 + 1;
                if (i14 != 0) {
                    sb.append(", ");
                }
                sb.append(c2625r1.x() ? Integer.valueOf(c2625r1.r()) : null);
                sb.append(": [");
                Iterator it = c2625r1.u().iterator();
                int i16 = 0;
                while (it.hasNext()) {
                    long jLongValue = ((Long) it.next()).longValue();
                    int i17 = i16 + 1;
                    if (i16 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i16 = i17;
                }
                sb.append("]");
                i14 = i15;
            }
            sb.append("}\n");
        }
        A(3, sb);
        sb.append("}\n");
    }

    public static final void F(StringBuilder sb, int i8, String str, Object obj) {
        if (obj == null) {
            return;
        }
        A(i8 + 1, sb);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public static final void G(StringBuilder sb, int i8, String str, C2644v0 c2644v0) {
        String str2;
        if (c2644v0 == null) {
            return;
        }
        A(i8, sb);
        sb.append(str);
        sb.append(" {\n");
        if (c2644v0.w()) {
            int iB = c2644v0.B();
            if (iB == 1) {
                str2 = "UNKNOWN_COMPARISON_TYPE";
            } else if (iB == 2) {
                str2 = "LESS_THAN";
            } else if (iB != 3) {
                str2 = iB != 4 ? "BETWEEN" : "EQUAL";
            } else {
                str2 = "GREATER_THAN";
            }
            F(sb, i8, "comparison_type", str2);
        }
        if (c2644v0.y()) {
            F(sb, i8, "match_as_float", Boolean.valueOf(c2644v0.v()));
        }
        if (c2644v0.x()) {
            F(sb, i8, "comparison_value", c2644v0.s());
        }
        if (c2644v0.A()) {
            F(sb, i8, "min_comparison_value", c2644v0.u());
        }
        if (c2644v0.z()) {
            F(sb, i8, "max_comparison_value", c2644v0.t());
        }
        A(i8, sb);
        sb.append("}\n");
    }

    public static int H(C2587k1 c2587k1, String str) {
        for (int i8 = 0; i8 < ((C2593l1) c2587k1.f23247H).X1(); i8++) {
            if (str.equals(((C2593l1) c2587k1.f23247H).s(i8).v())) {
                return i8;
            }
        }
        return -1;
    }

    public static Bundle J(Map map, boolean z7) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z7) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i8 = 0; i8 < size; i8++) {
                    arrayList2.add(J((Map) arrayList.get(i8), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public static C0613u L(C2531b c2531b) {
        Object obj;
        Bundle bundleJ = J(c2531b.f23088c, true);
        String string = (!bundleJ.containsKey("_o") || (obj = bundleJ.get("_o")) == null) ? "app" : obj.toString();
        String strE0 = Cw.E0(c2531b.f23086a, AbstractC0622y0.f11408a, AbstractC0622y0.f11410c);
        if (strE0 == null) {
            strE0 = c2531b.f23086a;
        }
        return new C0613u(strE0, new C0611t(bundleJ), string, c2531b.f23087b);
    }

    public static AbstractC2626r2 O(AbstractC2626r2 abstractC2626r2, byte[] bArr) throws B2 {
        C2600m2 c2600m2R;
        C2600m2 c2600m2 = C2600m2.f23208b;
        if (c2600m2 == null) {
            synchronized (C2600m2.class) {
                try {
                    c2600m2R = C2600m2.f23208b;
                    if (c2600m2R == null) {
                        V2 v5 = V2.f23021c;
                        c2600m2R = AbstractC2617p2.r();
                        C2600m2.f23208b = c2600m2R;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c2600m2 = c2600m2R;
        }
        if (c2600m2 != null) {
            abstractC2626r2.getClass();
            abstractC2626r2.d(bArr, bArr.length, c2600m2);
            return abstractC2626r2;
        }
        abstractC2626r2.getClass();
        int length = bArr.length;
        C2600m2 c2600m3 = C2600m2.f23208b;
        V2 v7 = V2.f23021c;
        abstractC2626r2.d(bArr, length, C2600m2.f23209c);
        return abstractC2626r2;
    }

    public static ArrayList S(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i8 = 0; i8 < length; i8++) {
            long j8 = 0;
            for (int i9 = 0; i9 < 64; i9++) {
                int i10 = (i8 * 64) + i9;
                if (i10 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i10)) {
                    j8 |= 1 << i9;
                }
            }
            arrayList.add(Long.valueOf(j8));
        }
        return arrayList;
    }

    public static HashMap T(Bundle bundle, boolean z7) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z8 = obj instanceof Parcelable[];
            if (z8 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z7) {
                    ArrayList arrayList = new ArrayList();
                    if (z8) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(T((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            Object obj2 = arrayList2.get(i8);
                            if (obj2 instanceof Bundle) {
                                arrayList.add(T((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(T((Bundle) obj, false));
                    }
                    map.put(str, arrayList);
                }
            } else if (obj != null) {
                map.put(str, obj);
            }
        }
        return map;
    }

    public static boolean V(int i8, InterfaceC2656x2 interfaceC2656x2) {
        if (i8 < ((G2) interfaceC2656x2).f22922I * 64) {
            return ((1 << (i8 % 64)) & ((Long) ((G2) interfaceC2656x2).get(i8 / 64)).longValue()) != 0;
        }
        return false;
    }

    public static boolean q(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static Bundle[] s(InterfaceC2661y2 interfaceC2661y2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = interfaceC2661y2.iterator();
        while (it.hasNext()) {
            C2557f1 c2557f1 = (C2557f1) it.next();
            if (c2557f1 != null) {
                Bundle bundle = new Bundle();
                for (C2557f1 c2557f2 : c2557f1.x()) {
                    if (c2557f2.M()) {
                        bundle.putString(c2557f2.v(), c2557f2.w());
                    } else if (c2557f2.K()) {
                        bundle.putLong(c2557f2.v(), c2557f2.t());
                    } else if (c2557f2.I()) {
                        bundle.putDouble(c2557f2.v(), c2557f2.q());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static final void t(C2527a1 c2527a1, String str, Long l4) {
        List listO = c2527a1.o();
        int i8 = 0;
        while (true) {
            if (i8 >= listO.size()) {
                i8 = -1;
                break;
            } else if (str.equals(((C2557f1) listO.get(i8)).v())) {
                break;
            } else {
                i8++;
            }
        }
        C2551e1 c2551e1U = C2557f1.u();
        c2551e1U.i(str);
        c2551e1U.h(l4.longValue());
        if (i8 < 0) {
            c2527a1.j(c2551e1U);
        } else {
            c2527a1.g();
            C2533b1.D((C2533b1) c2527a1.f23247H, i8, (C2557f1) c2551e1U.e());
        }
    }

    public static final Bundle u(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C2557f1 c2557f1 = (C2557f1) it.next();
            String strV = c2557f1.v();
            if (c2557f1.I()) {
                bundle.putDouble(strV, c2557f1.q());
            } else if (c2557f1.J()) {
                bundle.putFloat(strV, c2557f1.r());
            } else if (c2557f1.M()) {
                bundle.putString(strV, c2557f1.w());
            } else if (c2557f1.K()) {
                bundle.putLong(strV, c2557f1.t());
            }
        }
        return bundle;
    }

    public static final C2557f1 w(C2533b1 c2533b1, String str) {
        for (C2557f1 c2557f1 : c2533b1.x()) {
            if (c2557f1.v().equals(str)) {
                return c2557f1;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [android.os.Bundle[], java.io.Serializable] */
    public static final Serializable x(C2533b1 c2533b1, String str) {
        C2557f1 c2557f1W = w(c2533b1, str);
        if (c2557f1W == null) {
            return null;
        }
        if (c2557f1W.M()) {
            return c2557f1W.w();
        }
        if (c2557f1W.K()) {
            return Long.valueOf(c2557f1W.t());
        }
        if (c2557f1W.I()) {
            return Double.valueOf(c2557f1W.q());
        }
        if (c2557f1W.s() > 0) {
            return s((InterfaceC2661y2) c2557f1W.x());
        }
        return null;
    }

    public final long I(byte[] bArr) {
        c.h(bArr);
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        I1 i8 = c0597l0.f11261R;
        C0597l0.i(i8);
        i8.m();
        MessageDigest messageDigestX = I1.x();
        if (messageDigestX != null) {
            return I1.x0(messageDigestX.digest(bArr));
        }
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11039L.a("Failed to get MD5");
        return 0L;
    }

    public final Parcelable K(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            parcelable = (Parcelable) creator.createFromParcel(parcelObtain);
        } catch (b unused) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Failed to load parcelable from buffer");
        } finally {
            parcelObtain.recycle();
        }
        return parcelable;
    }

    public final o1 M(String str, C2587k1 c2587k1, C2527a1 c2527a1, String str2) {
        int iIndexOf;
        C2578i4.b();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (!c0597l0.f11256M.B(str, E.f10757W0)) {
            return null;
        }
        c0597l0.f11263T.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        D d6 = E.f10824u0;
        C0584h c0584h = c0597l0.f11256M;
        String[] strArrSplit = c0584h.A(str, d6).split(",");
        HashSet hashSet = new HashSet(strArrSplit.length);
        for (String str3 : strArrSplit) {
            Objects.requireNonNull(str3);
            if (!hashSet.add(str3)) {
                throw new IllegalArgumentException("duplicate element: ".concat(str3));
            }
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        A1 a8 = this.f11343H;
        w1 w1Var = a8.f10661P;
        C0579f0 c0579f0 = w1Var.f11343H.f10652G;
        A1.I(c0579f0);
        String strD = c0579f0.D(str);
        Uri.Builder builder = new Uri.Builder();
        C0597l0 c0597l1 = (C0597l0) w1Var.f10616G;
        builder.scheme(c0597l1.f11256M.A(str, E.f10804n0));
        boolean zIsEmpty = TextUtils.isEmpty(strD);
        C0584h c0584h2 = c0597l1.f11256M;
        if (zIsEmpty) {
            builder.authority(c0584h2.A(str, E.f10807o0));
        } else {
            builder.authority(strD + "." + c0584h2.A(str, E.f10807o0));
        }
        builder.path(c0584h2.A(str, E.f10810p0));
        B(builder, "gmp_app_id", ((C2593l1) c2587k1.f23247H).E(), setUnmodifiableSet);
        c0584h.u();
        B(builder, "gmp_version", String.valueOf(119002L), setUnmodifiableSet);
        String strV = ((C2593l1) c2587k1.f23247H).v();
        D d8 = E.f10763Z0;
        boolean zB = c0584h.B(str, d8);
        C0579f0 c0579f1 = a8.f10652G;
        if (zB) {
            A1.I(c0579f1);
            if (c0579f1.q(str)) {
                strV = HttpUrl.FRAGMENT_ENCODE_SET;
            }
        }
        B(builder, "app_instance_id", strV, setUnmodifiableSet);
        B(builder, "rdid", ((C2593l1) c2587k1.f23247H).I(), setUnmodifiableSet);
        B(builder, "bundle_id", c2587k1.n(), setUnmodifiableSet);
        String strN = c2527a1.n();
        String strE0 = Cw.E0(strN, AbstractC0622y0.f11410c, AbstractC0622y0.f11408a);
        if (true != TextUtils.isEmpty(strE0)) {
            strN = strE0;
        }
        B(builder, "app_event_name", strN, setUnmodifiableSet);
        B(builder, "app_version", String.valueOf(((C2593l1) c2587k1.f23247H).P0()), setUnmodifiableSet);
        String strG = ((C2593l1) c2587k1.f23247H).G();
        if (c0584h.B(str, d8)) {
            A1.I(c0579f1);
            if (c0579f1.r(str) && !TextUtils.isEmpty(strG) && (iIndexOf = strG.indexOf(".")) != -1) {
                strG = strG.substring(0, iIndexOf);
            }
        }
        B(builder, "os_version", strG, setUnmodifiableSet);
        B(builder, "timestamp", String.valueOf(c2527a1.i()), setUnmodifiableSet);
        if (((C2593l1) c2587k1.f23247H).K1()) {
            B(builder, "lat", "1", setUnmodifiableSet);
        }
        B(builder, "privacy_sandbox_version", String.valueOf(((C2593l1) c2587k1.f23247H).P()), setUnmodifiableSet);
        B(builder, "trigger_uri_source", "1", setUnmodifiableSet);
        B(builder, "trigger_uri_timestamp", String.valueOf(jCurrentTimeMillis), setUnmodifiableSet);
        B(builder, "request_uuid", str2, setUnmodifiableSet);
        List<C2557f1> listO = c2527a1.o();
        Bundle bundle = new Bundle();
        for (C2557f1 c2557f1 : listO) {
            String strV2 = c2557f1.v();
            if (c2557f1.I()) {
                bundle.putString(strV2, String.valueOf(c2557f1.q()));
            } else if (c2557f1.J()) {
                bundle.putString(strV2, String.valueOf(c2557f1.r()));
            } else if (c2557f1.M()) {
                bundle.putString(strV2, c2557f1.w());
            } else if (c2557f1.K()) {
                bundle.putString(strV2, String.valueOf(c2557f1.t()));
            }
        }
        D(builder, c0584h.A(str, E.f10822t0).split("\\|"), bundle, setUnmodifiableSet);
        List<C2660y1> listUnmodifiableList = Collections.unmodifiableList(((C2593l1) c2587k1.f23247H).N());
        Bundle bundle2 = new Bundle();
        for (C2660y1 c2660y1 : listUnmodifiableList) {
            String strV3 = c2660y1.v();
            if (c2660y1.F()) {
                bundle2.putString(strV3, String.valueOf(c2660y1.q()));
            } else if (c2660y1.G()) {
                bundle2.putString(strV3, String.valueOf(c2660y1.r()));
            } else if (c2660y1.J()) {
                bundle2.putString(strV3, c2660y1.w());
            } else if (c2660y1.H()) {
                bundle2.putString(strV3, String.valueOf(c2660y1.s()));
            }
        }
        D(builder, c0584h.A(str, E.f10819s0).split("\\|"), bundle2, setUnmodifiableSet);
        B(builder, "dma", true != ((C2593l1) c2587k1.f23247H).J1() ? "0" : "1", setUnmodifiableSet);
        if (!((C2593l1) c2587k1.f23247H).A().isEmpty()) {
            B(builder, "dma_cps", ((C2593l1) c2587k1.f23247H).A(), setUnmodifiableSet);
        }
        if (((C2593l1) c2587k1.f23247H).M1()) {
            S0 s0K2 = ((C2593l1) c2587k1.f23247H).k2();
            if (!s0K2.E().isEmpty()) {
                B(builder, "dl_gclid", s0K2.E(), setUnmodifiableSet);
            }
            if (!s0K2.D().isEmpty()) {
                B(builder, "dl_gbraid", s0K2.D(), setUnmodifiableSet);
            }
            if (!s0K2.C().isEmpty()) {
                B(builder, "dl_gs", s0K2.C(), setUnmodifiableSet);
            }
            if (s0K2.y() > 0) {
                B(builder, "dl_ss_ts", String.valueOf(s0K2.y()), setUnmodifiableSet);
            }
            if (!s0K2.H().isEmpty()) {
                B(builder, "mr_gclid", s0K2.H(), setUnmodifiableSet);
            }
            if (!s0K2.G().isEmpty()) {
                B(builder, "mr_gbraid", s0K2.G(), setUnmodifiableSet);
            }
            if (!s0K2.F().isEmpty()) {
                B(builder, "mr_gs", s0K2.F(), setUnmodifiableSet);
            }
            if (s0K2.z() > 0) {
                B(builder, "mr_click_ts", String.valueOf(s0K2.z()), setUnmodifiableSet);
            }
        }
        return new o1(1, jCurrentTimeMillis, builder.build().toString());
    }

    public final C2533b1 N(n nVar) {
        Bundle bundle;
        C2527a1 c2527a1U = C2533b1.u();
        c2527a1U.g();
        C2533b1.E(nVar.f2535c, (C2533b1) c2527a1U.f23247H);
        C0611t c0611t = (C0611t) nVar.f2539g;
        Iterator<String> it = c0611t.f11369G.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            bundle = c0611t.f11369G;
            if (!zHasNext) {
                break;
            }
            String next = it.next();
            C2551e1 c2551e1U = C2557f1.u();
            c2551e1U.i(next);
            Object obj = bundle.get(next);
            c.h(obj);
            U(c2551e1U, obj);
            c2527a1U.j(c2551e1U);
        }
        String str = (String) nVar.f2538f;
        if (!TextUtils.isEmpty(str) && bundle.get("_o") == null) {
            C2551e1 c2551e1U2 = C2557f1.u();
            c2551e1U2.i("_o");
            c2551e1U2.j(str);
            c2527a1U.l((C2557f1) c2551e1U2.e());
        }
        return (C2533b1) c2527a1U.e();
    }

    public final String P(C2581j1 c2581j1) {
        String str;
        String str2;
        V0 v0L2;
        StringBuilder sbO = U2.o("\nbatch {\n");
        if (c2581j1.E()) {
            F(sbO, 0, "upload_subdomain", c2581j1.v());
        }
        if (c2581j1.D()) {
            F(sbO, 0, "sgtm_join_id", c2581j1.u());
        }
        for (C2593l1 c2593l1 : c2581j1.w()) {
            if (c2593l1 != null) {
                A(1, sbO);
                sbO.append("bundle {\n");
                if (c2593l1.g1()) {
                    F(sbO, 1, "protocol_version", Integer.valueOf(c2593l1.U1()));
                }
                ((v4) u4.f23338H.f23339G.f31450G).getClass();
                C0597l0 c0597l0 = (C0597l0) this.f10616G;
                if (c0597l0.f11256M.B(c2593l1.u(), E.f10737M0) && c2593l1.j1()) {
                    F(sbO, 1, "session_stitching_token", c2593l1.J());
                }
                F(sbO, 1, "platform", c2593l1.H());
                if (c2593l1.b1()) {
                    F(sbO, 1, "gmp_version", Long.valueOf(c2593l1.d2()));
                }
                if (c2593l1.p1()) {
                    F(sbO, 1, "uploading_gmp_version", Long.valueOf(c2593l1.j2()));
                }
                if (c2593l1.Z0()) {
                    F(sbO, 1, "dynamite_version", Long.valueOf(c2593l1.b2()));
                }
                if (c2593l1.S0()) {
                    F(sbO, 1, "config_version", Long.valueOf(c2593l1.Z1()));
                }
                F(sbO, 1, "gmp_app_id", c2593l1.E());
                F(sbO, 1, "admob_app_id", c2593l1.t());
                F(sbO, 1, "app_id", c2593l1.u());
                F(sbO, 1, "app_version", c2593l1.x());
                if (c2593l1.N1()) {
                    F(sbO, 1, "app_version_major", Integer.valueOf(c2593l1.P0()));
                }
                F(sbO, 1, "firebase_instance_id", c2593l1.D());
                if (c2593l1.X0()) {
                    F(sbO, 1, "dev_cert_hash", Long.valueOf(c2593l1.a2()));
                }
                F(sbO, 1, "app_store", c2593l1.w());
                if (c2593l1.o1()) {
                    F(sbO, 1, "upload_timestamp_millis", Long.valueOf(c2593l1.i2()));
                }
                if (c2593l1.l1()) {
                    F(sbO, 1, "start_timestamp_millis", Long.valueOf(c2593l1.g2()));
                }
                if (c2593l1.a1()) {
                    F(sbO, 1, "end_timestamp_millis", Long.valueOf(c2593l1.c2()));
                }
                if (c2593l1.f1()) {
                    F(sbO, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(c2593l1.f2()));
                }
                if (c2593l1.e1()) {
                    F(sbO, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(c2593l1.e2()));
                }
                F(sbO, 1, "app_instance_id", c2593l1.v());
                F(sbO, 1, "resettable_device_id", c2593l1.I());
                F(sbO, 1, "ds_id", c2593l1.C());
                if (c2593l1.d1()) {
                    F(sbO, 1, "limited_ad_tracking", Boolean.valueOf(c2593l1.K1()));
                }
                F(sbO, 1, "os_version", c2593l1.G());
                F(sbO, 1, "device_model", c2593l1.B());
                F(sbO, 1, "user_default_language", c2593l1.K());
                if (c2593l1.n1()) {
                    F(sbO, 1, "time_zone_offset_minutes", Integer.valueOf(c2593l1.W1()));
                }
                if (c2593l1.R0()) {
                    F(sbO, 1, "bundle_sequential_index", Integer.valueOf(c2593l1.P1()));
                }
                if (c2593l1.W0()) {
                    F(sbO, 1, "delivery_index", Integer.valueOf(c2593l1.S1()));
                }
                if (c2593l1.i1()) {
                    F(sbO, 1, "service_upload", Boolean.valueOf(c2593l1.L1()));
                }
                F(sbO, 1, "health_monitor", c2593l1.F());
                if (c2593l1.h1()) {
                    F(sbO, 1, "retry_counter", Integer.valueOf(c2593l1.V1()));
                }
                if (c2593l1.U0()) {
                    F(sbO, 1, "consent_signals", c2593l1.z());
                }
                if (c2593l1.c1()) {
                    F(sbO, 1, "is_dma_region", Boolean.valueOf(c2593l1.J1()));
                }
                if (c2593l1.V0()) {
                    F(sbO, 1, "core_platform_services", c2593l1.A());
                }
                if (c2593l1.T0()) {
                    F(sbO, 1, "consent_diagnostics", c2593l1.y());
                }
                if (c2593l1.m1()) {
                    F(sbO, 1, "target_os_version", Long.valueOf(c2593l1.h2()));
                }
                C2578i4.b();
                if (c0597l0.f11256M.B(c2593l1.u(), E.f10757W0)) {
                    F(sbO, 1, "ad_services_version", Integer.valueOf(c2593l1.P()));
                    if (c2593l1.O1() && (v0L2 = c2593l1.l2()) != null) {
                        A(2, sbO);
                        sbO.append("attribution_eligibility_status {\n");
                        F(sbO, 2, "eligible", Boolean.valueOf(v0L2.B()));
                        F(sbO, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(v0L2.D()));
                        F(sbO, 2, "pre_r", Boolean.valueOf(v0L2.E()));
                        F(sbO, 2, "r_extensions_too_old", Boolean.valueOf(v0L2.F()));
                        F(sbO, 2, "adservices_extension_too_old", Boolean.valueOf(v0L2.A()));
                        F(sbO, 2, "ad_storage_not_allowed", Boolean.valueOf(v0L2.z()));
                        F(sbO, 2, "measurement_manager_disabled", Boolean.valueOf(v0L2.C()));
                        A(2, sbO);
                        sbO.append("}\n");
                    }
                }
                if (c2593l1.M1()) {
                    S0 s0K2 = c2593l1.k2();
                    A(2, sbO);
                    sbO.append("ad_campaign_info {\n");
                    if (s0K2.s()) {
                        F(sbO, 2, "deep_link_gclid", s0K2.E());
                    }
                    if (s0K2.r()) {
                        F(sbO, 2, "deep_link_gbraid", s0K2.D());
                    }
                    if (s0K2.q()) {
                        F(sbO, 2, "deep_link_gad_source", s0K2.C());
                    }
                    if (s0K2.t()) {
                        F(sbO, 2, "deep_link_session_millis", Long.valueOf(s0K2.y()));
                    }
                    if (s0K2.x()) {
                        F(sbO, 2, "market_referrer_gclid", s0K2.H());
                    }
                    if (s0K2.w()) {
                        F(sbO, 2, "market_referrer_gbraid", s0K2.G());
                    }
                    if (s0K2.v()) {
                        F(sbO, 2, "market_referrer_gad_source", s0K2.F());
                    }
                    if (s0K2.u()) {
                        F(sbO, 2, "market_referrer_click_millis", Long.valueOf(s0K2.z()));
                    }
                    A(2, sbO);
                    sbO.append("}\n");
                }
                if (c2593l1.Q0()) {
                    F(sbO, 1, "batching_timestamp_millis", Long.valueOf(c2593l1.Y1()));
                }
                if (c2593l1.k1()) {
                    C2650w1 c2650w1R = c2593l1.r();
                    A(2, sbO);
                    sbO.append("sgtm_diagnostics {\n");
                    int iV = c2650w1R.v();
                    if (iV == 1) {
                        str = "UPLOAD_TYPE_UNKNOWN";
                    } else if (iV == 2) {
                        str = "GA_UPLOAD";
                    } else if (iV != 3) {
                        str = iV != 4 ? "SDK_SERVICE_UPLOAD" : "PACKAGE_SERVICE_UPLOAD";
                    } else {
                        str = "SDK_CLIENT_UPLOAD";
                    }
                    F(sbO, 2, "upload_type", str);
                    F(sbO, 2, "client_upload_eligibility", AbstractC2090uc.B(c2650w1R.r()));
                    int iU = c2650w1R.u();
                    if (iU == 1) {
                        str2 = "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN";
                    } else if (iU == 2) {
                        str2 = "SERVICE_UPLOAD_ELIGIBLE";
                    } else if (iU == 3) {
                        str2 = "NOT_IN_ROLLOUT";
                    } else if (iU != 4) {
                        str2 = iU != 5 ? "NON_PLAY_MISSING_SGTM_SERVER_URL" : "MISSING_SGTM_PROXY_INFO";
                    } else {
                        str2 = "MISSING_SGTM_SETTINGS";
                    }
                    F(sbO, 2, "service_upload_eligibility", str2);
                    A(2, sbO);
                    sbO.append("}\n");
                }
                InterfaceC2661y2<C2660y1> interfaceC2661y2N = c2593l1.N();
                O o4 = c0597l0.f11262S;
                if (interfaceC2661y2N != null) {
                    for (C2660y1 c2660y1 : interfaceC2661y2N) {
                        if (c2660y1 != null) {
                            A(2, sbO);
                            sbO.append("user_property {\n");
                            F(sbO, 2, "set_timestamp_millis", c2660y1.I() ? Long.valueOf(c2660y1.t()) : null);
                            F(sbO, 2, "name", o4.f(c2660y1.v()));
                            F(sbO, 2, "string_value", c2660y1.w());
                            F(sbO, 2, "int_value", c2660y1.H() ? Long.valueOf(c2660y1.s()) : null);
                            F(sbO, 2, "double_value", c2660y1.F() ? Double.valueOf(c2660y1.q()) : null);
                            A(2, sbO);
                            sbO.append("}\n");
                        }
                    }
                }
                InterfaceC2661y2<X0> interfaceC2661y2L = c2593l1.L();
                if (interfaceC2661y2L != null) {
                    for (X0 x7 : interfaceC2661y2L) {
                        if (x7 != null) {
                            A(2, sbO);
                            sbO.append("audience_membership {\n");
                            if (x7.z()) {
                                F(sbO, 2, "audience_id", Integer.valueOf(x7.q()));
                            }
                            if (x7.A()) {
                                F(sbO, 2, "new_audience", Boolean.valueOf(x7.y()));
                            }
                            E(sbO, "current_data", x7.s());
                            if (x7.B()) {
                                E(sbO, "previous_data", x7.t());
                            }
                            A(2, sbO);
                            sbO.append("}\n");
                        }
                    }
                }
                InterfaceC2661y2<C2533b1> interfaceC2661y2M = c2593l1.M();
                if (interfaceC2661y2M != null) {
                    for (C2533b1 c2533b1 : interfaceC2661y2M) {
                        if (c2533b1 != null) {
                            A(2, sbO);
                            sbO.append("event {\n");
                            F(sbO, 2, "name", o4.d(c2533b1.w()));
                            if (c2533b1.I()) {
                                F(sbO, 2, "timestamp_millis", Long.valueOf(c2533b1.t()));
                            }
                            if (c2533b1.H()) {
                                F(sbO, 2, "previous_timestamp_millis", Long.valueOf(c2533b1.s()));
                            }
                            if (c2533b1.G()) {
                                F(sbO, 2, "count", Integer.valueOf(c2533b1.q()));
                            }
                            if (c2533b1.r() != 0) {
                                y(sbO, 2, (InterfaceC2661y2) c2533b1.x());
                            }
                            A(2, sbO);
                            sbO.append("}\n");
                        }
                    }
                }
                A(1, sbO);
                sbO.append("}\n");
            }
        }
        sbO.append("} // End-of-batch\n");
        return sbO.toString();
    }

    public final String Q(C2654x0 c2654x0) {
        StringBuilder sbO = U2.o("\nproperty_filter {\n");
        if (c2654x0.y()) {
            F(sbO, 0, "filter_id", Integer.valueOf(c2654x0.q()));
        }
        F(sbO, 0, "property_name", ((C0597l0) this.f10616G).f11262S.f(c2654x0.t()));
        String strC = C(c2654x0.v(), c2654x0.w(), c2654x0.x());
        if (!strC.isEmpty()) {
            F(sbO, 0, "filter_type", strC);
        }
        z(sbO, 1, c2654x0.r());
        sbO.append("}\n");
        return sbO.toString();
    }

    public final List R(InterfaceC2656x2 interfaceC2656x2, List list) {
        int i8;
        ArrayList arrayList = new ArrayList(interfaceC2656x2);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.b(num, "Ignoring negative bit index to be cleared");
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    T t8 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11042O.c(num, Integer.valueOf(arrayList.size()), "Ignoring bit index greater than bitSet size");
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i9 = size2;
            i8 = size;
            size = i9;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i8);
    }

    public final void U(C2551e1 c2551e1, Object obj) {
        c2551e1.g();
        C2557f1.D((C2557f1) c2551e1.f23247H);
        c2551e1.g();
        C2557f1.B((C2557f1) c2551e1.f23247H);
        c2551e1.g();
        C2557f1.A((C2557f1) c2551e1.f23247H);
        c2551e1.g();
        C2557f1.C((C2557f1) c2551e1.f23247H);
        if (obj instanceof String) {
            c2551e1.j((String) obj);
            return;
        }
        if (obj instanceof Long) {
            c2551e1.h(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            c2551e1.g();
            C2557f1.E((C2557f1) c2551e1.f23247H, dDoubleValue);
            return;
        }
        if (!(obj instanceof Bundle[])) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(obj, "Ignoring invalid (type) event param value");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                C2551e1 c2551e1U = C2557f1.u();
                for (String str : bundle.keySet()) {
                    C2551e1 c2551e1U2 = C2557f1.u();
                    c2551e1U2.i(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        c2551e1U2.h(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        c2551e1U2.j((String) obj2);
                    } else if (obj2 instanceof Double) {
                        double dDoubleValue2 = ((Double) obj2).doubleValue();
                        c2551e1U2.g();
                        C2557f1.E((C2557f1) c2551e1U2.f23247H, dDoubleValue2);
                    }
                    c2551e1U.g();
                    C2557f1.z((C2557f1) c2551e1U.f23247H, (C2557f1) c2551e1U2.e());
                }
                if (((C2557f1) c2551e1U.f23247H).s() > 0) {
                    arrayList.add((C2557f1) c2551e1U.e());
                }
            }
        }
        c2551e1.g();
        C2557f1.y((C2557f1) c2551e1.f23247H, arrayList);
    }

    public final boolean W(long j8, long j9) {
        if (j8 == 0 || j9 <= 0) {
            return true;
        }
        ((C0597l0) this.f10616G).f11263T.getClass();
        return Math.abs(System.currentTimeMillis() - j8) > j9;
    }

    @Override // p021c4.u1
    public final boolean p() {
        return false;
    }

    public final byte[] r(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e8) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(e8, "Failed to gzip content");
            throw e8;
        }
    }

    public final void y(StringBuilder sb, int i8, InterfaceC2661y2 interfaceC2661y2) {
        if (interfaceC2661y2 == null) {
            return;
        }
        int i9 = i8 + 1;
        Iterator it = interfaceC2661y2.iterator();
        while (it.hasNext()) {
            C2557f1 c2557f1 = (C2557f1) it.next();
            if (c2557f1 != null) {
                A(i9, sb);
                sb.append("param {\n");
                F(sb, i9, "name", c2557f1.L() ? ((C0597l0) this.f10616G).f11262S.e(c2557f1.v()) : null);
                F(sb, i9, "string_value", c2557f1.M() ? c2557f1.w() : null);
                F(sb, i9, "int_value", c2557f1.K() ? Long.valueOf(c2557f1.t()) : null);
                F(sb, i9, "double_value", c2557f1.I() ? Double.valueOf(c2557f1.q()) : null);
                if (c2557f1.s() > 0) {
                    y(sb, i9, (InterfaceC2661y2) c2557f1.x());
                }
                A(i9, sb);
                sb.append("}\n");
            }
        }
    }

    public final void z(StringBuilder sb, int i8, C2629s0 c2629s0) {
        String str;
        if (c2629s0 == null) {
            return;
        }
        A(i8, sb);
        sb.append("filter {\n");
        if (c2629s0.w()) {
            F(sb, i8, "complement", Boolean.valueOf(c2629s0.v()));
        }
        if (c2629s0.y()) {
            F(sb, i8, "param_name", ((C0597l0) this.f10616G).f11262S.e(c2629s0.t()));
        }
        if (c2629s0.z()) {
            int i9 = i8 + 1;
            C2664z0 c2664z0S = c2629s0.s();
            if (c2664z0S != null) {
                A(i9, sb);
                sb.append("string_filter {\n");
                if (c2664z0S.y()) {
                    switch (c2664z0S.z()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    F(sb, i9, "match_type", str);
                }
                if (c2664z0S.x()) {
                    F(sb, i9, "expression", c2664z0S.t());
                }
                if (c2664z0S.w()) {
                    F(sb, i9, "case_sensitive", Boolean.valueOf(c2664z0S.v()));
                }
                if (c2664z0S.q() > 0) {
                    A(i8 + 2, sb);
                    sb.append("expression_list {\n");
                    for (String str2 : c2664z0S.u()) {
                        A(i8 + 3, sb);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                A(i9, sb);
                sb.append("}\n");
            }
        }
        if (c2629s0.x()) {
            G(sb, i8 + 1, "number_filter", c2629s0.r());
        }
        A(i8, sb);
        sb.append("}\n");
    }
}
