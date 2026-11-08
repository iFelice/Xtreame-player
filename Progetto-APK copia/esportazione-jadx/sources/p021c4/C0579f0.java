package p021c4;

import Z3.C0433o;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.A0;
import com.google.android.gms.internal.measurement.A1;
import com.google.android.gms.internal.measurement.B1;
import com.google.android.gms.internal.measurement.B2;
import com.google.android.gms.internal.measurement.C2604n0;
import com.google.android.gms.internal.measurement.C2610o0;
import com.google.android.gms.internal.measurement.C2615p0;
import com.google.android.gms.internal.measurement.C2620q0;
import com.google.android.gms.internal.measurement.C2624r0;
import com.google.android.gms.internal.measurement.C2629s0;
import com.google.android.gms.internal.measurement.C2649w0;
import com.google.android.gms.internal.measurement.C2654x0;
import com.google.android.gms.internal.measurement.E;
import com.google.android.gms.internal.measurement.F0;
import com.google.android.gms.internal.measurement.G0;
import com.google.android.gms.internal.measurement.H0;
import com.google.android.gms.internal.measurement.I0;
import com.google.android.gms.internal.measurement.J0;
import com.google.android.gms.internal.measurement.K0;
import com.google.android.gms.internal.measurement.O;
import com.google.android.gms.internal.measurement.O0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p019c2.h;
import p032e0.u;
import p096m2.o;
import p132r.f;

/* JADX INFO: renamed from: c4.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0579f0 extends u1 implements InterfaceC0581g {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final f f11171J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final f f11172K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final f f11173L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final f f11174M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final f f11175N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final f f11176O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final C0576e0 f11177P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final C0433o f11178Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final f f11179R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final f f11180S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final f f11181T;

    public C0579f0(A1 a8) {
        super(a8);
        this.f11171J = new f(0);
        this.f11172K = new f(0);
        this.f11173L = new f(0);
        this.f11174M = new f(0);
        this.f11175N = new f(0);
        this.f11179R = new f(0);
        this.f11180S = new f(0);
        this.f11181T = new f(0);
        this.f11176O = new f(0);
        this.f11177P = new C0576e0(this);
        this.f11178Q = new C0433o(this, 6);
    }

    public static final f x(K0 k8) {
        f fVar = new f(0);
        for (O0 o4 : k8.D()) {
            fVar.put(o4.r(), o4.s());
        }
        return fVar;
    }

    public static final EnumC0618w0 y(int i8) {
        int i9 = i8 - 1;
        if (i9 == 1) {
            return EnumC0618w0.AD_STORAGE;
        }
        if (i9 == 2) {
            return EnumC0618w0.ANALYTICS_STORAGE;
        }
        if (i9 == 3) {
            return EnumC0618w0.AD_USER_DATA;
        }
        if (i9 != 4) {
            return null;
        }
        return EnumC0618w0.AD_PERSONALIZATION;
    }

    public final EnumC0614u0 A(String str, EnumC0618w0 enumC0618w0) {
        m();
        u(str);
        F0 f0B = B(str);
        EnumC0614u0 enumC0614u0 = EnumC0614u0.UNINITIALIZED;
        if (f0B == null) {
            return enumC0614u0;
        }
        for (A0 a8 : f0B.v()) {
            if (y(a8.s()) == enumC0618w0) {
                int iR = a8.r() - 1;
                if (iR != 1) {
                    return iR != 2 ? enumC0614u0 : EnumC0614u0.DENIED;
                }
                return EnumC0614u0.GRANTED;
            }
        }
        return enumC0614u0;
    }

    public final F0 B(String str) {
        m();
        u(str);
        K0 k0C = C(str);
        if (k0C == null || !k0C.H()) {
            return null;
        }
        return k0C.t();
    }

    public final K0 C(String str) {
        n();
        m();
        c.e(str);
        u(str);
        return (K0) this.f11175N.get(str);
    }

    public final String D(String str) {
        m();
        u(str);
        return (String) this.f11179R.get(str);
    }

    public final boolean E(String str, EnumC0618w0 enumC0618w0) {
        m();
        u(str);
        F0 f0B = B(str);
        if (f0B == null) {
            return false;
        }
        for (A0 a8 : f0B.t()) {
            if (enumC0618w0 == y(a8.s())) {
                if (a8.r() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean F(String str, String str2) {
        Boolean bool;
        m();
        u(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f11174M.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean G(String str, String str2) {
        Boolean bool;
        m();
        u(str);
        if ("1".equals(v(str, "measurement.upload.blacklist_internal")) && I1.h0(str2)) {
            return true;
        }
        if ("1".equals(v(str, "measurement.upload.blacklist_public")) && I1.i0(str2)) {
            return true;
        }
        Map map = (Map) this.f11173L.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final void H(String str, String str2, String str3, byte[] bArr) {
        J0 j8;
        C0579f0 c0579f0;
        byte[] bArrC;
        Iterator it;
        J0 j9;
        boolean z7;
        n();
        m();
        c.e(str);
        J0 j10 = (J0) s(bArr, str).g();
        t(str, j10);
        w(str, (K0) j10.e());
        K0 k8 = (K0) j10.e();
        f fVar = this.f11175N;
        fVar.put(str, k8);
        this.f11179R.put(str, ((K0) j10.f23247H).z());
        this.f11180S.put(str, str2);
        this.f11181T.put(str, str3);
        this.f11171J.put(str, x((K0) j10.e()));
        A1 a8 = this.f11343H;
        C0602o c0602o = a8.f10654I;
        A1.I(c0602o);
        ArrayList<C2610o0> arrayList = new ArrayList(Collections.unmodifiableList(((K0) j10.f23247H).A()));
        String str4 = "app_id=? and audience_id=?";
        int i8 = 0;
        while (i8 < arrayList.size()) {
            C2604n0 c2604n0 = (C2604n0) ((C2610o0) arrayList.get(i8)).g();
            if (((C2610o0) c2604n0.f23247H).r() != 0) {
                int i9 = 0;
                while (i9 < ((C2610o0) c2604n0.f23247H).r()) {
                    C2615p0 c2615p0 = (C2615p0) ((C2610o0) c2604n0.f23247H).t(i9).g();
                    C2615p0 c2615p1 = (C2615p0) c2615p0.clone();
                    A1 a9 = a8;
                    String strE0 = Cw.E0(((C2620q0) c2615p0.f23247H).v(), AbstractC0622y0.f11408a, AbstractC0622y0.f11410c);
                    if (strE0 != null) {
                        c2615p1.g();
                        C2620q0.x((C2620q0) c2615p1.f23247H, strE0);
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    int i10 = 0;
                    while (i10 < ((C2620q0) c2615p0.f23247H).q()) {
                        C2629s0 c2629s0T = ((C2620q0) c2615p0.f23247H).t(i10);
                        C2615p0 c2615p2 = c2615p0;
                        J0 j11 = j10;
                        String str5 = str4;
                        String strE1 = Cw.E0(c2629s0T.t(), AbstractC0622y0.f11412e, AbstractC0622y0.f11413f);
                        if (strE1 != null) {
                            C2624r0 c2624r0 = (C2624r0) c2629s0T.g();
                            c2624r0.g();
                            C2629s0.u((C2629s0) c2624r0.f23247H, strE1);
                            C2629s0 c2629s0 = (C2629s0) c2624r0.e();
                            c2615p1.g();
                            C2620q0.y((C2620q0) c2615p1.f23247H, i10, c2629s0);
                            z7 = true;
                        }
                        i10++;
                        c2615p0 = c2615p2;
                        j10 = j11;
                        str4 = str5;
                    }
                    J0 j12 = j10;
                    String str6 = str4;
                    if (z7) {
                        c2604n0.g();
                        C2610o0.x((C2610o0) c2604n0.f23247H, i9, (C2620q0) c2615p1.e());
                        arrayList.set(i8, (C2610o0) c2604n0.e());
                    }
                    i9++;
                    a8 = a9;
                    j10 = j12;
                    str4 = str6;
                }
                j9 = j10;
            } else {
                j9 = j10;
            }
            A1 a10 = a8;
            String str7 = str4;
            if (((C2610o0) c2604n0.f23247H).s() != 0) {
                for (int i11 = 0; i11 < ((C2610o0) c2604n0.f23247H).s(); i11++) {
                    C2654x0 c2654x0U = ((C2610o0) c2604n0.f23247H).u(i11);
                    String strE2 = Cw.E0(c2654x0U.t(), AbstractC0622y0.f11416i, AbstractC0622y0.f11417j);
                    if (strE2 != null) {
                        C2649w0 c2649w0 = (C2649w0) c2654x0U.g();
                        c2649w0.g();
                        C2654x0.u((C2654x0) c2649w0.f23247H, strE2);
                        c2604n0.g();
                        C2610o0.y((C2610o0) c2604n0.f23247H, i11, (C2654x0) c2649w0.e());
                        arrayList.set(i8, (C2610o0) c2604n0.e());
                    }
                }
            }
            i8++;
            fVar = fVar;
            a8 = a10;
            j10 = j9;
            str4 = str7;
        }
        J0 j13 = j10;
        f fVar2 = fVar;
        A1 a11 = a8;
        String str8 = str4;
        c0602o.n();
        c0602o.m();
        c.e(str);
        SQLiteDatabase sQLiteDatabaseJ0 = c0602o.j0();
        sQLiteDatabaseJ0.beginTransaction();
        try {
            c0602o.n();
            c0602o.m();
            c.e(str);
            SQLiteDatabase sQLiteDatabaseJ1 = c0602o.j0();
            sQLiteDatabaseJ1.delete("property_filters", "app_id=?", new String[]{str});
            sQLiteDatabaseJ1.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                C2610o0 c2610o0 = (C2610o0) it2.next();
                c0602o.n();
                c0602o.m();
                c.e(str);
                c.h(c2610o0);
                if (c2610o0.z()) {
                    int iQ = c2610o0.q();
                    Iterator it3 = c2610o0.v().iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (!((C2620q0) it3.next()).D()) {
                                T t7 = ((C0597l0) c0602o.f10616G).f11258O;
                                C0597l0.k(t7);
                                t7.f11042O.c(T.t(str), Integer.valueOf(iQ), "Event filter with no ID. Audience definition ignored. appId, audienceId");
                                break;
                            }
                        } else {
                            Iterator it4 = c2610o0.w().iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    Iterator it5 = c2610o0.v().iterator();
                                    while (true) {
                                        String str9 = "audience_id";
                                        if (!it5.hasNext()) {
                                            it = it2;
                                            Iterator it6 = c2610o0.w().iterator();
                                            while (it6.hasNext()) {
                                                C2654x0 c2654x0 = (C2654x0) it6.next();
                                                c0602o.n();
                                                c0602o.m();
                                                c.e(str);
                                                c.h(c2654x0);
                                                if (c2654x0.t().isEmpty()) {
                                                    T t8 = ((C0597l0) c0602o.f10616G).f11258O;
                                                    C0597l0.k(t8);
                                                    t8.f11042O.d(T.t(str), Integer.valueOf(iQ), String.valueOf(c2654x0.y() ? Integer.valueOf(c2654x0.q()) : null), "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId");
                                                } else {
                                                    byte[] bArrC2 = c2654x0.c();
                                                    ContentValues contentValues = new ContentValues();
                                                    contentValues.put("app_id", str);
                                                    Iterator it7 = it6;
                                                    contentValues.put(str9, Integer.valueOf(iQ));
                                                    contentValues.put("filter_id", c2654x0.y() ? Integer.valueOf(c2654x0.q()) : null);
                                                    String str10 = str9;
                                                    contentValues.put("property_name", c2654x0.t());
                                                    contentValues.put("session_scoped", c2654x0.z() ? Boolean.valueOf(c2654x0.x()) : null);
                                                    contentValues.put("data", bArrC2);
                                                    try {
                                                        if (c0602o.j0().insertWithOnConflict("property_filters", null, contentValues, 5) == -1) {
                                                            T t9 = ((C0597l0) c0602o.f10616G).f11258O;
                                                            C0597l0.k(t9);
                                                            t9.f11039L.b(T.t(str), "Failed to insert property filter (got -1). appId");
                                                        } else {
                                                            it6 = it7;
                                                            str9 = str10;
                                                        }
                                                    } catch (SQLiteException e8) {
                                                        T t10 = ((C0597l0) c0602o.f10616G).f11258O;
                                                        C0597l0.k(t10);
                                                        t10.f11039L.c(T.t(str), e8, "Error storing property filter. appId");
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        C2620q0 c2620q0 = (C2620q0) it5.next();
                                        c0602o.n();
                                        c0602o.m();
                                        c.e(str);
                                        c.h(c2620q0);
                                        if (!c2620q0.v().isEmpty()) {
                                            it = it2;
                                            byte[] bArrC3 = c2620q0.c();
                                            Iterator it8 = it5;
                                            ContentValues contentValues2 = new ContentValues();
                                            contentValues2.put("app_id", str);
                                            contentValues2.put("audience_id", Integer.valueOf(iQ));
                                            contentValues2.put("filter_id", c2620q0.D() ? Integer.valueOf(c2620q0.r()) : null);
                                            contentValues2.put("event_name", c2620q0.v());
                                            contentValues2.put("session_scoped", c2620q0.E() ? Boolean.valueOf(c2620q0.B()) : null);
                                            contentValues2.put("data", bArrC3);
                                            try {
                                                if (c0602o.j0().insertWithOnConflict("event_filters", null, contentValues2, 5) == -1) {
                                                    T t11 = ((C0597l0) c0602o.f10616G).f11258O;
                                                    C0597l0.k(t11);
                                                    t11.f11039L.b(T.t(str), "Failed to insert event filter (got -1). appId");
                                                }
                                                it2 = it;
                                                it5 = it8;
                                            } catch (SQLiteException e9) {
                                                T t12 = ((C0597l0) c0602o.f10616G).f11258O;
                                                C0597l0.k(t12);
                                                t12.f11039L.c(T.t(str), e9, "Error storing event filter. appId");
                                                c0602o.n();
                                                c0602o.m();
                                                c.e(str);
                                                SQLiteDatabase sQLiteDatabaseJ2 = c0602o.j0();
                                                String str11 = str8;
                                                sQLiteDatabaseJ2.delete("property_filters", str11, new String[]{str, String.valueOf(iQ)});
                                                sQLiteDatabaseJ2.delete("event_filters", str11, new String[]{str, String.valueOf(iQ)});
                                                str8 = str11;
                                                it2 = it;
                                                break;
                                            }
                                        } else {
                                            T t13 = ((C0597l0) c0602o.f10616G).f11258O;
                                            C0597l0.k(t13);
                                            t13.f11042O.d(T.t(str), Integer.valueOf(iQ), String.valueOf(c2620q0.D() ? Integer.valueOf(c2620q0.r()) : null), "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId");
                                            it = it2;
                                        }
                                        c0602o.n();
                                        c0602o.m();
                                        c.e(str);
                                        SQLiteDatabase sQLiteDatabaseJ3 = c0602o.j0();
                                        String str12 = str8;
                                        sQLiteDatabaseJ3.delete("property_filters", str12, new String[]{str, String.valueOf(iQ)});
                                        sQLiteDatabaseJ3.delete("event_filters", str12, new String[]{str, String.valueOf(iQ)});
                                        str8 = str12;
                                        break;
                                    }
                                    it2 = it;
                                    break;
                                }
                                if (!((C2654x0) it4.next()).y()) {
                                    T t14 = ((C0597l0) c0602o.f10616G).f11258O;
                                    C0597l0.k(t14);
                                    t14.f11042O.c(T.t(str), Integer.valueOf(iQ), "Property filter with no ID. Audience definition ignored. appId, audienceId");
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    T t15 = ((C0597l0) c0602o.f10616G).f11258O;
                    C0597l0.k(t15);
                    t15.f11042O.b(T.t(str), "Audience with no ID. appId");
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (C2610o0 c2610o1 : arrayList) {
                arrayList2.add(c2610o1.z() ? Integer.valueOf(c2610o1.q()) : null);
            }
            c.e(str);
            c0602o.n();
            c0602o.m();
            SQLiteDatabase sQLiteDatabaseJ4 = c0602o.j0();
            try {
                long jE0 = c0602o.e0("select count(1) from audience_filter_values where app_id=?", new String[]{str});
                int iMax = Math.max(0, Math.min(2000, ((C0597l0) c0602o.f10616G).f11256M.t(str, E.f10752U)));
                if (jE0 > iMax) {
                    ArrayList arrayList3 = new ArrayList();
                    int i12 = 0;
                    while (true) {
                        if (i12 >= arrayList2.size()) {
                            sQLiteDatabaseJ4.delete("audience_filter_values", "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in " + ("(" + TextUtils.join(",", arrayList3) + ")") + " order by rowid desc limit -1 offset ?)", new String[]{str, Integer.toString(iMax)});
                            break;
                        }
                        Integer num = (Integer) arrayList2.get(i12);
                        if (num == null) {
                            break;
                        }
                        arrayList3.add(Integer.toString(num.intValue()));
                        i12++;
                    }
                }
            } catch (SQLiteException e10) {
                T t16 = ((C0597l0) c0602o.f10616G).f11258O;
                C0597l0.k(t16);
                t16.f11039L.c(T.t(str), e10, "Database error querying filters. appId");
            }
            sQLiteDatabaseJ0.setTransactionSuccessful();
            sQLiteDatabaseJ0.endTransaction();
            try {
                j13.g();
                j8 = j13;
                try {
                    K0.E((K0) j8.f23247H);
                    bArrC = ((K0) j8.e()).c();
                    c0579f0 = this;
                } catch (RuntimeException e11) {
                    e = e11;
                    c0579f0 = this;
                    T t17 = ((C0597l0) c0579f0.f10616G).f11258O;
                    C0597l0.k(t17);
                    t17.f11042O.c(T.t(str), e, "Unable to serialize reduced-size config. Storing full config instead. appId");
                    bArrC = bArr;
                }
            } catch (RuntimeException e12) {
                e = e12;
                j8 = j13;
            }
            C0602o c0602o2 = a11.f10654I;
            A1.I(c0602o2);
            c.e(str);
            c0602o2.m();
            c0602o2.n();
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("remote_config", bArrC);
            contentValues3.put("config_last_modified_time", str2);
            contentValues3.put("e_tag", str3);
            try {
                if (c0602o2.j0().update("apps", contentValues3, "app_id = ?", new String[]{str}) == 0) {
                    T t18 = ((C0597l0) c0602o2.f10616G).f11258O;
                    C0597l0.k(t18);
                    t18.f11039L.b(T.t(str), "Failed to update remote config (got 0). appId");
                }
            } catch (SQLiteException e13) {
                T t19 = ((C0597l0) c0602o2.f10616G).f11258O;
                C0597l0.k(t19);
                t19.f11039L.c(T.t(str), e13, "Error storing remote config. appId");
            }
            if (((C0597l0) c0579f0.f10616G).f11256M.B(null, E.f10808o1)) {
                j8.g();
                K0.F((K0) j8.f23247H);
            }
            fVar2.put(str, (K0) j8.e());
        } catch (Throwable th) {
            sQLiteDatabaseJ0.endTransaction();
            throw th;
        }
    }

    @Override // p021c4.u1
    public final boolean p() {
        return false;
    }

    public final boolean q(String str) {
        m();
        u(str);
        f fVar = this.f11172K;
        return fVar.get(str) != null && ((Set) fVar.get(str)).contains("app_instance_id");
    }

    public final boolean r(String str) {
        m();
        u(str);
        f fVar = this.f11172K;
        if (fVar.get(str) != null) {
            return ((Set) fVar.get(str)).contains("os_version") || ((Set) fVar.get(str)).contains("device_info");
        }
        return false;
    }

    public final K0 s(byte[] bArr, String str) {
        if (bArr == null) {
            return K0.w();
        }
        try {
            K0 k8 = (K0) ((J0) E1.O(K0.v(), bArr)).e();
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.c(k8.K() ? Long.valueOf(k8.s()) : null, k8.I() ? k8.y() : null, "Parsed config. version, gmp_app_id");
            return k8;
        } catch (B2 e8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11042O.c(T.t(str), e8, "Unable to merge remote config. appId");
            return K0.w();
        } catch (RuntimeException e9) {
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11042O.c(T.t(str), e9, "Unable to merge remote config. appId");
            return K0.w();
        }
    }

    public final void t(String str, J0 j8) {
        HashSet hashSet = new HashSet();
        f fVar = new f(0);
        f fVar2 = new f(0);
        f fVar3 = new f(0);
        Iterator it = Collections.unmodifiableList(((K0) j8.f23247H).B()).iterator();
        while (it.hasNext()) {
            hashSet.add(((G0) it.next()).r());
        }
        for (int i8 = 0; i8 < ((K0) j8.f23247H).r(); i8++) {
            H0 h8 = (H0) ((K0) j8.f23247H).u(i8).g();
            if (h8.h().isEmpty()) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.a("EventConfig contained null event name");
            } else {
                String strH = h8.h();
                String strE0 = Cw.E0(h8.h(), AbstractC0622y0.f11408a, AbstractC0622y0.f11410c);
                if (!TextUtils.isEmpty(strE0)) {
                    h8.g();
                    I0.s((I0) h8.f23247H, strE0);
                    j8.g();
                    K0.G((K0) j8.f23247H, i8, (I0) h8.e());
                }
                if (((I0) h8.f23247H).v() && ((I0) h8.f23247H).t()) {
                    fVar.put(strH, Boolean.TRUE);
                }
                if (((I0) h8.f23247H).w() && ((I0) h8.f23247H).u()) {
                    fVar2.put(h8.h(), Boolean.TRUE);
                }
                if (((I0) h8.f23247H).x()) {
                    if (((I0) h8.f23247H).q() < 2 || ((I0) h8.f23247H).q() > 65535) {
                        T t8 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t8);
                        t8.f11042O.c(h8.h(), Integer.valueOf(((I0) h8.f23247H).q()), "Invalid sampling rate. Event name, sample rate");
                    } else {
                        fVar3.put(h8.h(), Integer.valueOf(((I0) h8.f23247H).q()));
                    }
                }
            }
        }
        this.f11172K.put(str, hashSet);
        this.f11173L.put(str, fVar);
        this.f11174M.put(str, fVar2);
        this.f11176O.put(str, fVar3);
    }

    public final void u(String str) {
        n();
        m();
        c.e(str);
        f fVar = this.f11175N;
        if (fVar.get(str) == null) {
            C0602o c0602o = this.f11343H.f10654I;
            A1.I(c0602o);
            C1093bD c1093bDM0 = c0602o.m0(str);
            f fVar2 = this.f11181T;
            f fVar3 = this.f11180S;
            f fVar4 = this.f11179R;
            f fVar5 = this.f11171J;
            if (c1093bDM0 != null) {
                J0 j8 = (J0) s((byte[]) c1093bDM0.f18028J, str).g();
                t(str, j8);
                fVar5.put(str, x((K0) j8.e()));
                fVar.put(str, (K0) j8.e());
                w(str, (K0) j8.e());
                fVar4.put(str, ((K0) j8.f23247H).z());
                fVar3.put(str, (String) c1093bDM0.f18026H);
                fVar2.put(str, (String) c1093bDM0.f18027I);
                return;
            }
            fVar5.put(str, null);
            this.f11173L.put(str, null);
            this.f11172K.put(str, null);
            this.f11174M.put(str, null);
            fVar.put(str, null);
            fVar4.put(str, null);
            fVar3.put(str, null);
            fVar2.put(str, null);
            this.f11176O.put(str, null);
        }
    }

    @Override // p021c4.InterfaceC0581g
    public final String v(String str, String str2) {
        m();
        u(str);
        Map map = (Map) this.f11171J.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    public final void w(String str, K0 k8) {
        int iQ = k8.q();
        C0576e0 c0576e0 = this.f11177P;
        if (iQ == 0) {
            c0576e0.e(str);
            return;
        }
        T t7 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11047T.b(Integer.valueOf(k8.q()), "EES programs found");
        int i8 = 0;
        B1 b8 = (B1) k8.C().get(0);
        try {
            E e8 = new E();
            o oVar = e8.f22904a;
            ((u) oVar.f27239J).f24776a.put("internal.remoteConfig", new CallableC0573d0(this, str, i8));
            ((u) oVar.f27239J).f24776a.put("internal.appMetadata", new CallableC0573d0(this, str, 1));
            ((u) oVar.f27239J).f24776a.put("internal.logger", new h(this, 6));
            e8.a(b8);
            c0576e0.d(str, e8);
            C0597l0.k(t7);
            Q q7 = t7.f11047T;
            q7.c(str, Integer.valueOf(b8.q().q()), "EES program loaded for appId, activities");
            for (A1 a8 : b8.q().t()) {
                C0597l0.k(t7);
                q7.b(a8.r(), "EES program activity");
            }
        } catch (O unused) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11039L.b(str, "Failed to load EES program. appId");
        }
    }

    public final int z(String str, String str2) {
        Integer num;
        m();
        u(str);
        Map map = (Map) this.f11176O.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }
}
