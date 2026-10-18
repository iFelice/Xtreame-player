package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public abstract class M9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final H9 f14657a = new H9(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final H9 f14658b = new H9(2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final H9 f14659c = new H9(4);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final H9 f14660d = new H9(18);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final H9 f14661e = new H9(19);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final H9 f14662f = new H9(5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final H9 f14663g = new H9(20);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final H9 f14664h = new H9(21);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final H9 f14665i = new H9(3);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final H9 f14666j = new H9(22);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final H9 f14667k = new H9(23);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final C1058af f14668l = new C1058af();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final H9 f14669m = new H9(26);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final H9 f14670n = new H9(0);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final C0968Vl f14671o = new C0968Vl();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final H9 f14672p = new H9(24);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final H9 f14673q = new H9(25);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final H9 f14674r = new H9(6);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final H9 f14675s = new H9(7);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final H9 f14676t = new H9(8);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final H9 f14677u = new H9(9);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final H9 f14678v = new H9(10);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final H9 f14679w = new H9(11);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final H9 f14680x = new H9(12);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final H9 f14681y = new H9(13);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final H9 f14682z = new H9(14);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final H9 f14654A = new H9(15);

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final H9 f14655B = new H9(16);

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final H9 f14656C = new H9(17);

    public static D4.b a(InterfaceC0715Ef interfaceC0715Ef, String str) {
        C0890Qd c0890Qd;
        String strA;
        String strReplace;
        Uri uriA = Uri.parse(str);
        try {
            H4 h4T = interfaceC0715Ef.T();
            Zv zvA0 = interfaceC0715Ef.A0();
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.lb)).booleanValue() || zvA0 == null) {
                if (h4T != null && h4T.c(uriA)) {
                    uriA = h4T.a(uriA, interfaceC0715Ef.getContext(), interfaceC0715Ef.j(), interfaceC0715Ef.zzi());
                }
            } else if (h4T != null && h4T.c(uriA)) {
                uriA = zvA0.a(uriA, interfaceC0715Ef.getContext(), interfaceC0715Ef.j(), interfaceC0715Ef.zzi());
            }
        } catch (I4 unused) {
            p120p3.h.g("Unable to append parameter to URL: ".concat(str));
        }
        HashMap map = new HashMap();
        if (interfaceC0715Ef.f() != null) {
            map = interfaceC0715Ef.f().f15291w0;
        }
        Context context = interfaceC0715Ef.getContext();
        p083k3.l lVar = p083k3.l.f25980A;
        if (lVar.f26003w.e(context) && (strA = (c0890Qd = lVar.f26003w).a(context)) != null) {
            J7 j8 = Q7.f15805d0;
            C3099q c3099q = C3099q.f26624d;
            String str2 = (String) c3099q.f26627c.a(j8);
            String string = uriA.toString();
            J7 j9 = Q7.f15796c0;
            O7 o7 = c3099q.f26627c;
            if (((Boolean) o7.a(j9)).booleanValue() && string.contains(str2)) {
                c0890Qd.k(context, "_ac", strA, C0890Qd.f((Map) map.get("_ac")));
                strReplace = com.bumptech.glide.c.F(context, string).replace(str2, strA);
            } else if (!TextUtils.isEmpty(uriA.getQueryParameter("fbs_aeid")) || ((Boolean) o7.a(Q7.f15787b0)).booleanValue()) {
                strReplace = string;
            } else {
                String string2 = com.bumptech.glide.c.y(com.bumptech.glide.c.F(context, string), "fbs_aeid", strA).toString();
                c0890Qd.k(context, "_ac", strA, C0890Qd.f((Map) map.get("_ac")));
                strReplace = string2;
            }
        } else {
            strReplace = uriA.toString();
        }
        long jLongValue = ((Long) AbstractC1864q8.f20551e.l()).longValue();
        if (jLongValue <= 0 || jLongValue > 243220703) {
            return Cw.N1(strReplace);
        }
        AbstractC1040aC abstractC1040aCR = AbstractC1040aC.r(interfaceC0715Ef.L());
        C2064u1 c2064u1 = new C2064u1(2);
        C1936re c1936re = AbstractC1988se.f20911f;
        return Cw.w1(Cw.b2(Cw.w1(abstractC1040aCR, Throwable.class, c2064u1, c1936re), new I9(strReplace, 0), c1936re), Throwable.class, new I9(strReplace, 1), c1936re);
    }

    public static void b(Map map, InterfaceC0869Ok interfaceC0869Ok) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Z9)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("1") && interfaceC0869Ok != null) {
            interfaceC0869Ok.q();
        }
    }
}
