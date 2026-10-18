package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONObject;
import p090l3.C3099q;
import p167v3.C3195c;
import p167v3.CallableC3196d;

/* JADX INFO: loaded from: classes.dex */
public final class Yq implements InterfaceC1845pq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2094ug f17649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f17650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1841pm f17651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1437hw f17652d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0983Wm f17653e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0693Cn f17654f;

    public Yq(C2094ug c2094ug, C1936re c1936re, C1841pm c1841pm, C1437hw c1437hw, C0983Wm c0983Wm, C0693Cn c0693Cn) {
        this.f17649a = c2094ug;
        this.f17650b = c1936re;
        this.f17651c = c1841pm;
        this.f17652d = c1437hw;
        this.f17653e = c0983Wm;
        this.f17654f = c0693Cn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        D4.b bVarA = this.f17652d.a();
        C0957Va c0957Va = new C0957Va(13, this, ov);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f17650b;
        return Cw.d2(Cw.d2(bVarA, c0957Va, interfaceExecutorServiceC1504jC), new C3195c(this, tv, ov, 6), interfaceExecutorServiceC1504jC);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        Rv rv = ov.f15282s;
        return (rv == null || rv.f16374c == null) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:103:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:106:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:109:0x0368 A[EDGE_INSN: B:109:0x0368->B:93:0x0368 BREAK  A[LOOP:0: B:76:0x02f8->B:92:0x035e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x015b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0165  */
    /* JADX WARN: Code duplicated, block: B:38:0x0196  */
    /* JADX WARN: Code duplicated, block: B:39:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:43:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:46:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:48:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:50:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:55:0x020c  */
    /* JADX WARN: Code duplicated, block: B:58:0x0213 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0215  */
    /* JADX WARN: Code duplicated, block: B:61:0x0222 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x0224  */
    /* JADX WARN: Code duplicated, block: B:65:0x026e  */
    /* JADX WARN: Code duplicated, block: B:68:0x028a  */
    /* JADX WARN: Code duplicated, block: B:70:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:71:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:74:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:75:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:78:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:87:0x0326  */
    /* JADX WARN: Code duplicated, block: B:88:0x0336  */
    /* JADX WARN: Code duplicated, block: B:90:0x033c  */
    /* JADX WARN: Code duplicated, block: B:91:0x035a  */
    /* JADX WARN: Type inference failed for: r7v30, types: [com.google.android.gms.internal.ads.nm] */
    /* JADX WARN: Type inference failed for: r7v31, types: [com.google.android.gms.internal.ads.nm] */
    /* JADX WARN: Type inference failed for: r7v32, types: [com.google.android.gms.internal.ads.nm] */
    public final WB c(final Tv tv, final Ov ov, final JSONObject jSONObject) {
        O7 o7;
        C2246xc c2246xc;
        D4.b bVarN1;
        p090l3.d1 d1Var;
        C1298fC c1298fCN1;
        D4.b bVarA;
        D4.b bVarA2;
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject2;
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC;
        KB kbB2;
        D4.b bVarD1;
        Qv qv;
        String[] strArr;
        JSONObject jSONObjectE0;
        JSONObject jSONObjectOptJSONObject3;
        D4.b bVar;
        D4.b bVar2;
        D4.b bVar3;
        O7 o8;
        D4.b bVarC;
        D4.b bVarN2;
        C2256xm c2256xm;
        JSONArray jSONArrayOptJSONArray2;
        ArrayList arrayList;
        int length;
        int i8;
        Executor executor;
        D4.b bVarB2;
        JSONObject jSONObjectOptJSONObject4;
        String strOptString;
        String strOptString2;
        JSONArray jSONArray;
        Future futureN1;
        JSONObject jSONObjectOptJSONObject5;
        String strOptString3;
        D4.b bVarD2;
        ArrayList arrayList2;
        Optional map;
        final int i9;
        JSONObject jSONObjectOptJSONObject6;
        String strOptString4;
        boolean z7;
        JB jbD2;
        J7 j8 = Q7.f15749W1;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            p148t.a.g(p083k3.l.f25980A.f25990j, this.f17654f.f12693c, "rendering-webview-creation-start");
        }
        final D4.b bVarA3 = this.f17652d.a();
        C1841pm c1841pm = this.f17651c;
        c1841pm.getClass();
        CallableC3196d callableC3196d = new CallableC3196d(tv, ov, jSONObject);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC2 = c1841pm.f20482a;
        final D4.b bVarB = ((IB) interfaceExecutorServiceC1504jC2).b(callableC3196d);
        C2100um c2100um = c1841pm.f20483b;
        c2100um.getClass();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("images");
        M8 m8 = c2100um.f21375h;
        final D4.b bVarB3 = c2100um.b(jSONArrayOptJSONArray3, m8.f14644H, m8.f14646J);
        C2246xc c2246xc2 = tv.f16755b;
        Qv qv2 = (Qv) c2246xc2.f21883I;
        J7 j9 = Q7.o9;
        O7 o9 = c3099q.f26627c;
        if (((Boolean) o9.a(j9)).booleanValue()) {
            JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("images");
            if (jSONArrayOptJSONArray4 == null || jSONArrayOptJSONArray4.length() <= 0) {
                o7 = o9;
                c2246xc = c2246xc2;
                bVarN1 = Cw.N1(null);
            } else {
                JSONObject jSONObjectOptJSONObject7 = jSONArrayOptJSONArray4.optJSONObject(0);
                if (jSONObjectOptJSONObject7 == null) {
                    c1298fCN1 = Cw.N1(null);
                } else {
                    String strOptString5 = jSONObjectOptJSONObject7.optString("base_url");
                    String strOptString6 = jSONObjectOptJSONObject7.optString("html");
                    int iOptInt = jSONObjectOptJSONObject7.optInt("width", 0);
                    int iOptInt2 = jSONObjectOptJSONObject7.optInt("height", 0);
                    if (iOptInt != 0) {
                        d1Var = new p090l3.d1(c2100um.f21368a, new p043f3.g(iOptInt, iOptInt2));
                    } else if (iOptInt2 != 0) {
                        iOptInt = 0;
                        d1Var = new p090l3.d1(c2100um.f21368a, new p043f3.g(iOptInt, iOptInt2));
                    } else {
                        d1Var = p090l3.d1.l();
                    }
                    if (TextUtils.isEmpty(strOptString6)) {
                        bVarN1 = Cw.N1(null);
                        o7 = o9;
                        c2246xc = c2246xc2;
                    } else {
                        o7 = o9;
                        c2246xc = c2246xc2;
                        JB jbD3 = Cw.d2(Cw.N1(null), new C2048tm(c2100um, d1Var, ov, qv2, strOptString5, strOptString6, 0), AbstractC1988se.f20910e);
                        bVarN1 = Cw.d2(jbD3, new C1996sm(1, jbD3), AbstractC1988se.f20911f);
                    }
                }
            }
            bVarA = c2100um.a(jSONObject.optJSONObject("secondary_image"), m8.f14644H);
            bVarA2 = c2100um.a(jSONObject.optJSONObject("app_icon"), m8.f14644H);
            jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
            if (jSONObjectOptJSONObject == null) {
                interfaceExecutorServiceC1504jC = interfaceExecutorServiceC1504jC2;
                bVarD1 = Cw.N1(null);
            } else {
                jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("images");
                jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("image");
                if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject2 != null) {
                    jSONArrayOptJSONArray = new JSONArray();
                    jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
                }
                interfaceExecutorServiceC1504jC = interfaceExecutorServiceC1504jC2;
                kbB2 = Cw.b2(c2100um.b(jSONArrayOptJSONArray, false, true), new C0929Ta(1, c2100um, jSONObjectOptJSONObject), c2100um.f21374g);
                if (jSONObjectOptJSONObject.optBoolean("require")) {
                    bVarD1 = Cw.d2(kbB2, new C1996sm(2, kbB2), AbstractC1988se.f20911f);
                } else {
                    bVarD1 = Cw.D1(kbB2, Exception.class, new C1422hh(2, 0), AbstractC1988se.f20911f);
                }
            }
            qv = (Qv) c2246xc.f21883I;
            strArr = new String[]{"html_containers", "instream"};
            jSONObjectE0 = Q3.b.e0(jSONObject, strArr);
            if (jSONObjectE0 == null) {
                jSONObjectOptJSONObject3 = null;
            } else {
                jSONObjectOptJSONObject3 = jSONObjectE0.optJSONObject(strArr[1]);
            }
            if (jSONObjectOptJSONObject3 == null) {
                jSONObjectOptJSONObject6 = jSONObject.optJSONObject("video");
                if (jSONObjectOptJSONObject6 == null) {
                    bVarC = Cw.N1(null);
                    bVar = bVarD1;
                    bVar2 = bVarA;
                    bVar3 = bVarA2;
                    o8 = o7;
                } else {
                    bVar = bVarD1;
                    strOptString4 = jSONObjectOptJSONObject6.optString("vast_xml");
                    bVar3 = bVarA2;
                    bVar2 = bVarA;
                    o8 = o7;
                    if (((Boolean) o8.a(Q7.n9)).booleanValue() || !jSONObjectOptJSONObject6.has("html")) {
                        z7 = false;
                    } else {
                        z7 = true;
                    }
                    if (TextUtils.isEmpty(strOptString4)) {
                        if (!z7) {
                            C0707Dm c0707Dm = c2100um.f21376i;
                            c0707Dm.getClass();
                            C1298fC c1298fCN2 = Cw.N1(null);
                            No no = new No(c0707Dm, 8);
                            Executor executor2 = c0707Dm.f12870b;
                            jbD2 = Cw.d2(Cw.d2(c1298fCN2, no, executor2), new C0957Va(6, c0707Dm, jSONObjectOptJSONObject6), executor2);
                        }
                        bVarC = Cw.D1(Cw.e2(jbD2, ((Integer) o8.a(Q7.f15989z3)).intValue(), TimeUnit.SECONDS, c2100um.f21378k), Exception.class, new C1422hh(2, 0), AbstractC1988se.f20911f);
                    } else if (!z7) {
                        p120p3.h.g("Required field 'vast_xml' or 'html' is missing");
                        bVarC = Cw.N1(null);
                    }
                    jbD2 = c2100um.c(jSONObjectOptJSONObject6, ov, qv);
                    bVarC = Cw.D1(Cw.e2(jbD2, ((Integer) o8.a(Q7.f15989z3)).intValue(), TimeUnit.SECONDS, c2100um.f21378k), Exception.class, new C1422hh(2, 0), AbstractC1988se.f20911f);
                }
                bVarN1 = bVarN1;
            } else {
                bVar = bVarD1;
                bVar2 = bVarA;
                bVar3 = bVarA2;
                o8 = o7;
                bVarN1 = bVarN1;
                bVarC = c2100um.c(jSONObjectOptJSONObject3, ov, qv);
            }
            if (((Boolean) o8.a(Q7.ic)).booleanValue()) {
                final int i10 = 0;
                Optional map2 = Optional.ofNullable(jSONObject.optJSONObject("video")).map(new Function() { // from class: com.google.android.gms.internal.ads.nm
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        switch (i10) {
                            case 0:
                                return ((JSONObject) obj).optJSONArray("flags");
                            case 1:
                                JSONArray jSONArray2 = (JSONArray) obj;
                                for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                                    JSONObject jSONObjectOptJSONObject8 = jSONArray2.optJSONObject(i11);
                                    if (jSONObjectOptJSONObject8.optString("key").equals("afma_video_player_type")) {
                                        return jSONObjectOptJSONObject8.optString("value");
                                    }
                                }
                                return null;
                            default:
                                return Integer.valueOf(Integer.parseInt((String) obj));
                        }
                    }
                });
                final int i11 = 1;
                map = map2.map(new Function() { // from class: com.google.android.gms.internal.ads.nm
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        switch (i11) {
                            case 0:
                                return ((JSONObject) obj).optJSONArray("flags");
                            case 1:
                                JSONArray jSONArray2 = (JSONArray) obj;
                                for (int i12 = 0; i12 < jSONArray2.length(); i12++) {
                                    JSONObject jSONObjectOptJSONObject8 = jSONArray2.optJSONObject(i12);
                                    if (jSONObjectOptJSONObject8.optString("key").equals("afma_video_player_type")) {
                                        return jSONObjectOptJSONObject8.optString("value");
                                    }
                                }
                                return null;
                            default:
                                return Integer.valueOf(Integer.parseInt((String) obj));
                        }
                    }
                });
                i9 = 2;
                if (((Integer) map.map(new Function() { // from class: com.google.android.gms.internal.ads.nm
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        switch (i9) {
                            case 0:
                                return ((JSONObject) obj).optJSONArray("flags");
                            case 1:
                                JSONArray jSONArray2 = (JSONArray) obj;
                                for (int i12 = 0; i12 < jSONArray2.length(); i12++) {
                                    JSONObject jSONObjectOptJSONObject8 = jSONArray2.optJSONObject(i12);
                                    if (jSONObjectOptJSONObject8.optString("key").equals("afma_video_player_type")) {
                                        return jSONObjectOptJSONObject8.optString("value");
                                    }
                                }
                                return null;
                            default:
                                return Integer.valueOf(Integer.parseInt((String) obj));
                        }
                    }
                }).orElse(0)).intValue() == 3) {
                    C2040te c2040te = new C2040te();
                    Cw.h2(bVarC, new C0943Ua(c2040te, 0), AbstractC1988se.f20910e);
                    bVarN2 = c2040te;
                } else {
                    bVarN2 = Cw.N1(new Bundle());
                }
            } else {
                bVarN2 = Cw.N1(new Bundle());
            }
            c2256xm = c1841pm.f20484c;
            c2256xm.getClass();
            jSONArrayOptJSONArray2 = jSONObject.optJSONArray("custom_assets");
            if (jSONArrayOptJSONArray2 == null) {
                bVarB2 = Cw.N1(Collections.emptyList());
            } else {
                arrayList = new ArrayList();
                length = jSONArrayOptJSONArray2.length();
                i8 = 0;
                while (true) {
                    executor = c2256xm.f21923a;
                    if (i8 < length) {
                        break;
                    }
                    jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i8);
                    if (jSONObjectOptJSONObject4 == null && (strOptString = jSONObjectOptJSONObject4.optString("name")) != null) {
                        strOptString2 = jSONObjectOptJSONObject4.optString("type");
                        jSONArray = jSONArrayOptJSONArray2;
                        if ("string".equals(strOptString2)) {
                            futureN1 = Cw.N1(new C2204wm(strOptString, jSONObjectOptJSONObject4.optString("string_value")));
                        } else if ("image".equals(strOptString2)) {
                            C2100um c2100um2 = c2256xm.f21924b;
                            c2100um2.getClass();
                            futureN1 = Cw.b2(c2100um2.a(jSONObjectOptJSONObject4.optJSONObject("image_value"), c2100um2.f21375h.f14644H), new I9(strOptString, 2), executor);
                        } else {
                            futureN1 = Cw.N1(null);
                        }
                    } else {
                        futureN1 = Cw.N1(null);
                        jSONArray = jSONArrayOptJSONArray2;
                    }
                    arrayList.add(futureN1);
                    i8++;
                    jSONArrayOptJSONArray2 = jSONArray;
                }
                bVarB2 = Cw.b2(new SB(AbstractC2073uA.t(arrayList), true), new C2064u1(8), executor);
            }
            if (jSONObject.optBoolean("enable_omid") || (jSONObjectOptJSONObject5 = jSONObject.optJSONObject("omid_settings")) == null) {
                bVarD2 = Cw.N1(null);
            } else {
                strOptString3 = jSONObjectOptJSONObject5.optString("omid_html");
                if (TextUtils.isEmpty(strOptString3)) {
                    bVarD2 = Cw.N1(null);
                } else {
                    bVarD2 = Cw.d2(Cw.N1(null), new C0957Va(c2100um, strOptString3), AbstractC1988se.f20910e);
                }
            }
            arrayList2 = new ArrayList();
            arrayList2.add(bVarB);
            arrayList2.add(bVarB3);
            final D4.b bVar4 = bVarN1;
            arrayList2.add(bVar4);
            final D4.b bVar5 = bVar2;
            arrayList2.add(bVar5);
            final D4.b bVar6 = bVar3;
            arrayList2.add(bVar6);
            final D4.b bVar7 = bVar;
            arrayList2.add(bVar7);
            arrayList2.add(bVarC);
            arrayList2.add(bVarN2);
            arrayList2.add(bVarB2);
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15697P4)).booleanValue()) {
                arrayList2.add(bVarD2);
            }
            AbstractC2073uA abstractC2073uAT = AbstractC2073uA.t(arrayList2);
            final D4.b bVar8 = bVarC;
            final D4.b bVar9 = bVarN2;
            final D4.b bVar10 = bVarD2;
            final D4.b bVar11 = bVarB2;
            Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.om
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    JSONArray jSONArrayOptJSONArray5;
                    AbstractC2073uA abstractC2073uAT2;
                    JSONObject jSONObjectOptJSONObject8;
                    C0781Il c0781Il = (C0781Il) bVarB.get();
                    List list = (List) bVarB3.get();
                    synchronized (c0781Il) {
                        c0781Il.f14025e = list;
                    }
                    c0781Il.k((T8) bVar6.get());
                    c0781Il.n((T8) bVar5.get());
                    c0781Il.h((P8) bVar7.get());
                    JSONObject jSONObject2 = jSONObject;
                    JSONObject jSONObjectOptJSONObject9 = jSONObject2.optJSONObject("mute");
                    if (jSONObjectOptJSONObject9 == null || (jSONArrayOptJSONArray5 = jSONObjectOptJSONObject9.optJSONArray("reasons")) == null || jSONArrayOptJSONArray5.length() <= 0) {
                        C1969sA c1969sA = AbstractC2073uA.f21207H;
                        abstractC2073uAT2 = PA.f15340K;
                    } else {
                        ArrayList arrayList3 = new ArrayList();
                        for (int i12 = 0; i12 < jSONArrayOptJSONArray5.length(); i12++) {
                            p090l3.K0 k0E = C2100um.e(jSONArrayOptJSONArray5.optJSONObject(i12));
                            if (k0E != null) {
                                arrayList3.add(k0E);
                            }
                        }
                        abstractC2073uAT2 = AbstractC2073uA.t(arrayList3);
                    }
                    c0781Il.o(abstractC2073uAT2);
                    JSONObject jSONObjectOptJSONObject10 = jSONObject2.optJSONObject("mute");
                    c0781Il.j((jSONObjectOptJSONObject10 == null || (jSONObjectOptJSONObject8 = jSONObjectOptJSONObject10.optJSONObject("default_reason")) == null) ? null : C2100um.e(jSONObjectOptJSONObject8));
                    InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) bVar8.get();
                    if (interfaceC0715Ef != null) {
                        c0781Il.y(interfaceC0715Ef);
                        c0781Il.x(interfaceC0715Ef.j());
                        c0781Il.w(interfaceC0715Ef.zzq());
                    }
                    D4.b bVar12 = bVar9;
                    D4.b bVar13 = bVar4;
                    c0781Il.E().putAll((Bundle) bVar12.get());
                    InterfaceC0715Ef interfaceC0715Ef2 = (InterfaceC0715Ef) bVar13.get();
                    if (interfaceC0715Ef2 != null) {
                        c0781Il.m(interfaceC0715Ef2);
                        c0781Il.z(interfaceC0715Ef2.j());
                    }
                    D4.b bVar14 = bVar10;
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15697P4)).booleanValue()) {
                        c0781Il.q(bVar14);
                        c0781Il.s(new C2040te());
                    } else {
                        InterfaceC0715Ef interfaceC0715Ef3 = (InterfaceC0715Ef) bVar14.get();
                        if (interfaceC0715Ef3 != null) {
                            c0781Il.p(interfaceC0715Ef3);
                        }
                    }
                    for (C2204wm c2204wm : (List) bVar11.get()) {
                        if (c2204wm.f21741a != 1) {
                            c0781Il.l(c2204wm.f21742b, c2204wm.f21744d);
                        } else {
                            c0781Il.u(c2204wm.f21742b, c2204wm.f21743c);
                        }
                    }
                    return c0781Il;
                }
            };
            final WB wb = new WB(abstractC2073uAT, false, false);
            wb.f17176V = new UB(wb, callable, interfaceExecutorServiceC1504jC);
            wb.x();
            PA paU = AbstractC2073uA.u(new D4.b[]{bVarA3, wb});
            Callable callable2 = new Callable() { // from class: com.google.android.gms.internal.ads.Xq
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v28 */
                /* JADX WARN: Type inference failed for: r2v29, types: [com.google.android.gms.internal.ads.Fn, com.google.android.gms.internal.ads.cq] */
                /* JADX WARN: Type inference failed for: r2v35 */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Yq yq;
                    ?? r7;
                    Yq yq2 = this.f17515a;
                    D4.b bVar12 = wb;
                    D4.b bVar13 = bVarA3;
                    Tv tv2 = tv;
                    Ov ov2 = ov;
                    JSONObject jSONObject2 = jSONObject;
                    yq2.getClass();
                    C0781Il c0781Il = (C0781Il) bVar12.get();
                    C0941Tm c0941Tm = (C0941Tm) bVar13.get();
                    J7 j10 = Q7.f15749W1;
                    C3099q c3099q2 = C3099q.f26624d;
                    if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue()) {
                        p148t.a.g(p083k3.l.f25980A.f25990j, yq2.f17654f.f12693c, "rendering-webview-creation-end");
                    }
                    C2094ug c2094ug = yq2.f17649a;
                    p004a3.b bVar14 = new p004a3.b(tv2, ov2, (String) null);
                    C0864Of c0864Of = new C0864Of(c0781Il, 10);
                    C2218x c2218x = new C2218x(23, jSONObject2, c0941Tm);
                    C2094ug c2094ug2 = c2094ug.f21290c;
                    C0671Bg c0671Bg = c2094ug.f21287b;
                    MJ mjB = HJ.b(new C1731ng(c0671Bg.f12449k0, 18, (Object) null));
                    C0688Ci c0688Ci = new C0688Ci(bVar14);
                    C2099ul c2099ul = new C2099ul(c2218x);
                    C2151vl c2151vl = new C2151vl(HJ.b(new C0788Jd(c0688Ci, c2099ul, 28)));
                    MJ mjB2 = HJ.b(new C1064al(c2151vl, 4, 0));
                    C1938rg c1938rg = c0671Bg.f12448k;
                    C2202wk c2202wk = AbstractC1270el.f18558c;
                    int i12 = 3;
                    MJ mjB3 = HJ.b(new p167v3.E((MJ) c1938rg, mjB2, (MJ) c2202wk, i12));
                    MJ mjB4 = HJ.b(new C0687Ch(mjB, HJ.b(new C0788Jd(c0671Bg.f12442h, mjB3, i12)), c0671Bg.f12434d, HJ.b(new C0788Jd(mjB3, mjB, 4, 0)), c0671Bg.f12440g, 0));
                    C0799Jo c0799Jo = Cw.f12717a;
                    MJ mjB5 = HJ.b(new C0788Jd(mjB4, mjB2, 6, (Object) null));
                    MJ mjB6 = HJ.b(new C0788Jd(c2094ug2.f21338w, c0688Ci, 23, 0));
                    MJ mjP = AbstractC2090uc.p(mjB6, 22, 0);
                    int i13 = NJ.f14896c;
                    ArrayList arrayList3 = new ArrayList(1);
                    ArrayList arrayList4 = new ArrayList(3);
                    arrayList4.add(c2094ug2.f21345z0);
                    arrayList4.add(c2094ug2.f21233A0);
                    arrayList4.add(mjB5);
                    arrayList3.add(mjP);
                    MJ mjB7 = p148t.a.b(new NJ(arrayList3, arrayList4), 2);
                    MJ mjB8 = HJ.b(AbstractC1717nH.f20139p0);
                    MJ mjR = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 16);
                    C0733Fi c0733Fi = new C0733Fi(bVar14);
                    C0718Ei c0718Ei = new C0718Ei(bVar14);
                    C1523jg c1523jg = c0671Bg.f12442h;
                    MJ mjB9 = HJ.b(new C0843Mn(c1523jg, 18, (Object) null));
                    MJ mjB10 = HJ.b(AbstractC1270el.f18563h);
                    MJ mjB11 = HJ.b(new C1892ql(c1523jg, c0671Bg.f12420R, mjB9, mjB10, c0799Jo, c0671Bg.f12421S, c0671Bg.f12436e, 1));
                    MJ mjB12 = HJ.b(new C2147vh(c1523jg, c0671Bg.f12434d, c0671Bg.f12436e, c0733Fi, c0688Ci, c2094ug2.f21335u0, HJ.b(new C1892ql(c0671Bg.f12408F, c0671Bg.f12409G, c0688Ci, c0718Ei, mjB11, c2094ug2.f21296e, 11)), new C2202wk(12, 0), new C2202wk(10, 0), c0671Bg.f12406D, c2094ug2.f21337v0, c2094ug2.f21296e, c2094ug2.f21241E0));
                    C0778Ii c0778Ii = new C0778Ii(mjB12, 11);
                    C0778Ii c0778Ii2 = new C0778Ii(HJ.b(new C0788Jd(c0688Ci, c0671Bg.f12418P, 2)), 28);
                    ArrayList arrayList5 = new ArrayList(4);
                    ArrayList arrayList6 = new ArrayList(2);
                    arrayList5.add(c2094ug2.f21235B0);
                    arrayList6.add(c2094ug2.f21237C0);
                    arrayList6.add(c2094ug2.f21239D0);
                    arrayList5.add(mjR);
                    arrayList5.add(c0778Ii);
                    arrayList5.add(c0778Ii2);
                    MJ mjB13 = p148t.a.b(new NJ(arrayList5, arrayList6), 3);
                    MJ mjB14 = HJ.b(new C2361zn(c0671Bg.f12442h, c0671Bg.f12433c0, c0671Bg.f12469y, c0733Fi, c0688Ci, c0671Bg.f12408F, c2202wk, 0));
                    MJ mjO = AbstractC2090uc.o(mjB14, 20);
                    MJ mjB15 = HJ.b(new C0788Jd(mjB8, c0671Bg.f12434d, 15));
                    MJ mjO2 = AbstractC2090uc.o(HJ.b(new C0788Jd(c0671Bg.f12427Y, c2094ug2.f21293d, 13)), 18);
                    C0778Ii c0778Ii3 = new C0778Ii(mjB12, 10);
                    ArrayList arrayList7 = new ArrayList(5);
                    ArrayList arrayList8 = new ArrayList(3);
                    arrayList7.add(c2094ug2.f21243F0);
                    arrayList7.add(c2094ug2.f21245G0);
                    arrayList8.add(c2094ug2.f21247H0);
                    arrayList8.add(c2094ug2.f21249I0);
                    arrayList7.add(mjO);
                    arrayList7.add(mjB15);
                    arrayList8.add(mjO2);
                    arrayList7.add(c0778Ii3);
                    MJ mjB16 = p148t.a.b(new NJ(arrayList7, arrayList8), 0);
                    MJ mjB17 = HJ.b(new C0788Jd(mjB4, mjB2, 5, (Object) null));
                    MJ mjO3 = AbstractC2090uc.o(mjB14, 21);
                    MJ mjR2 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 18);
                    MJ mjB18 = HJ.b(new C0788Jd(mjB8, c0671Bg.f12434d, 21));
                    MJ mjB19 = HJ.b(AbstractC1270el.f18561f);
                    C1064al c1064al = new C1064al(mjB19, 9, (Object) null);
                    ArrayList arrayList9 = new ArrayList(2);
                    ArrayList arrayList10 = new ArrayList(1);
                    arrayList10.add(c2094ug2.f21259N0);
                    arrayList9.add(mjB18);
                    arrayList9.add(c1064al);
                    C1731ng c1731ng = new C1731ng(HJ.b(new C0788Jd(new NJ(arrayList9, arrayList10), c0688Ci, 24)), 29, 0);
                    C0778Ii c0778Ii4 = new C0778Ii(mjB12, 13);
                    C0884Pl c0884Pl = new C0884Pl(c0864Of);
                    C1064al c1064al2 = new C1064al(HJ.b(new p167v3.E(c0884Pl, c2151vl, c0671Bg.f12434d, 13, 0)), 6, 0);
                    ArrayList arrayList11 = new ArrayList(7);
                    ArrayList arrayList12 = new ArrayList(3);
                    arrayList11.add(c2094ug2.f21251J0);
                    arrayList11.add(c2094ug2.f21253K0);
                    arrayList12.add(c2094ug2.f21255L0);
                    arrayList12.add(c2094ug2.f21257M0);
                    arrayList12.add(mjB17);
                    arrayList11.add(mjO3);
                    arrayList11.add(mjR2);
                    arrayList11.add(c1731ng);
                    arrayList11.add(c0778Ii4);
                    arrayList11.add(c1064al2);
                    MJ mjB20 = p148t.a.b(new NJ(arrayList11, arrayList12), 1);
                    C0778Ii c0778Ii5 = new C0778Ii(mjB12, 15);
                    ArrayList arrayList13 = new ArrayList(1);
                    ArrayList arrayList14 = new ArrayList(1);
                    arrayList14.add(c2094ug2.f21261O0);
                    arrayList13.add(c0778Ii5);
                    MJ mjB21 = p148t.a.b(new NJ(arrayList13, arrayList14), 14);
                    C0778Ii c0778Ii6 = new C0778Ii(HJ.b(new C0788Jd(c0688Ci, c0671Bg.f12409G, 25)), 9);
                    ArrayList arrayList15 = new ArrayList(1);
                    new ArrayList(1).add(c2094ug2.f21263P0);
                    arrayList15.add(c0778Ii6);
                    MJ mjR3 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 22);
                    ArrayList arrayList16 = new ArrayList(1);
                    ArrayList arrayList17 = new ArrayList(1);
                    arrayList17.add(c2094ug2.f21265Q0);
                    arrayList16.add(mjR3);
                    MJ mjB22 = p148t.a.b(new NJ(arrayList16, arrayList17), 15);
                    MJ mjP2 = AbstractC2090uc.p(mjB6, 23, 0);
                    C0778Ii c0778Ii7 = new C0778Ii(mjB12, 14);
                    ArrayList arrayList18 = new ArrayList(6);
                    ArrayList arrayList19 = new ArrayList(4);
                    arrayList18.add(c2094ug2.f21267R0);
                    arrayList19.add(c2094ug2.f21269S0);
                    arrayList18.add(c2094ug2.f21271T0);
                    arrayList18.add(c2094ug2.f21273U0);
                    arrayList19.add(c2094ug2.f21275V0);
                    arrayList19.add(c2094ug2.f21277W0);
                    arrayList19.add(c2094ug2.f21279X0);
                    arrayList18.add(c2094ug2.f21281Y0);
                    arrayList18.add(mjP2);
                    arrayList18.add(c0778Ii7);
                    MJ mjB23 = p148t.a.b(new NJ(arrayList18, arrayList19), 4);
                    C0778Ii c0778Ii8 = new C0778Ii(HJ.b(new C1731ng(mjB13, 28, (Object) null)), 17, 0);
                    MJ mjR4 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 20);
                    ArrayList arrayList20 = new ArrayList(2);
                    ArrayList arrayList21 = new ArrayList(1);
                    arrayList21.add(c2094ug2.f21292c1);
                    arrayList20.add(c0778Ii8);
                    arrayList20.add(mjR4);
                    MJ mjB24 = HJ.b(new C1786oj(new NJ(arrayList20, arrayList21), 7));
                    Collections.emptyList();
                    new ArrayList(1).add(c2094ug2.f21295d1);
                    MJ mjB25 = HJ.b(new C0778Ii(mjB14, 19));
                    ArrayList arrayList22 = new ArrayList(1);
                    Collections.emptyList();
                    arrayList22.add(mjB25);
                    MJ mjR5 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 17);
                    C0778Ii c0778Ii9 = new C0778Ii(mjB12, 12);
                    ArrayList arrayList23 = new ArrayList(2);
                    new ArrayList(1).add(c2094ug2.f21298e1);
                    arrayList23.add(mjR5);
                    arrayList23.add(c0778Ii9);
                    MJ mjO4 = AbstractC2090uc.o(mjB14, 16);
                    ArrayList arrayList24 = new ArrayList(1);
                    Collections.emptyList();
                    arrayList24.add(mjO4);
                    C0703Di c0703Di = new C0703Di(bVar14);
                    C1682mj c1682mj = new C1682mj(c0688Ci, c0703Di, c2094ug2.f21344z, c0718Ei, c2094ug2.f21299f);
                    ArrayList arrayList25 = new ArrayList(1);
                    ArrayList arrayList26 = new ArrayList(1);
                    arrayList26.add(c2094ug2.f21304g1);
                    arrayList25.add(c2094ug2.f21307h1);
                    C0909Ri c0909Ri = new C0909Ri(c0733Fi, c0688Ci, mjB7, mjB23, c2094ug2.f21301f1, c1682mj, mjB8, new C0809Kj(new NJ(arrayList25, arrayList26)), mjB21);
                    C2255xl c2255xl = new C2255xl(c2218x);
                    MJ mjB26 = HJ.b(new C0788Jd(c2255xl, c0671Bg.f12440g, 29));
                    MJ mjB27 = HJ.b(new C0788Jd(mjB4, mjB2, 7, (Object) null));
                    List listEmptyList = Collections.emptyList();
                    ArrayList arrayList27 = new ArrayList(2);
                    arrayList27.add(c2094ug2.f21310i1);
                    arrayList27.add(mjB27);
                    MJ mjB28 = HJ.b(new p167v3.E(c2094ug2.f21338w, (MJ) new NJ(listEmptyList, arrayList27), (MJ) c0688Ci, 12));
                    C1788ol c1788ol = c2094ug2.f21264Q;
                    MJ mj = c0671Bg.f12406D;
                    C1938rg c1938rg2 = c0671Bg.f12448k;
                    C2203wl c2203wl = new C2203wl(HJ.b(new C2047tl(c2094ug2.f21338w, c1788ol, c2099ul, c2255xl, c0884Pl, mj, mjB20, mjB16, mjB22, c0688Ci, c1938rg2, c2094ug2.f21293d, mjB4, mjB26, c0671Bg.f12440g, mjB28, c0671Bg.f12409G, c2094ug2.f21296e, c0671Bg.f12410H, mjB10)));
                    MJ mjB29 = HJ.b(new C0762Hh(HJ.b(new C1064al(c1938rg2, 5, (Object) null)), c0671Bg.f12434d, c2094ug2.f21338w, c0671Bg.f12440g, 7));
                    C0762Hh c0762Hh = new C0762Hh(c2094ug2.f21339w0, (MJ) c2255xl, mjB29, (MJ) c2203wl, 8);
                    C1168cm c1168cm = new C1168cm(c2094ug2.f21339w0, c2255xl, 0);
                    MJ mjB30 = HJ.b(new C1064al(new C2359zl(c0884Pl), 7));
                    C0940Tl c0940Tl = new C0940Tl(c0671Bg.f12420R, c2094ug2.f21293d, c2151vl, c0884Pl, c0762Hh, c1168cm, c0671Bg.f12434d, mjB30);
                    GJ gj = new GJ();
                    MJ mjB31 = HJ.b(new p167v3.E((MJ) c0703Di, (MJ) gj, (MJ) c0884Pl, 15));
                    MJ mjB32 = HJ.b(new p167v3.E((MJ) c0703Di, (MJ) gj, (MJ) c0884Pl, 14));
                    MJ mjB33 = HJ.b(new C0762Hh(c0703Di, gj, c0884Pl, c0671Bg.f12469y, 11));
                    MJ mjB34 = HJ.b(new C1168cm(gj, c0884Pl, 3));
                    C1523jg c1523jg2 = c0671Bg.f12442h;
                    MJ mjB35 = HJ.b(new C0762Hh((MJ) c1523jg2, (MJ) c0884Pl, (MJ) c0940Tl, (MJ) gj, 10));
                    C0870Ol c0870Ol = new C0870Ol(c1523jg2, c2094ug2.f21293d);
                    GJ.a(gj, HJ.b(new C0736Fl(c0909Ri, c0671Bg.f12434d, c0884Pl, c2203wl, c0940Tl, c2151vl, c2094ug2.f21264Q, mjB31, mjB32, mjB33, mjB34, mjB35, c0870Ol, c0671Bg.f12406D, c1938rg2, c1523jg2, mjB30, mjB19, c0671Bg.f12459p0)));
                    MJ mjB36 = HJ.b(new C0722Em(mjB16, mjB13, c2094ug2.f21313j1, mjB24, c2094ug2.f21289b1, c0688Ci, c0718Ei, mjB11, 1));
                    MJ mjB37 = HJ.b(new C0762Hh(c0671Bg.f12434d, mjB29, HJ.b(new C0788Jd(c2094ug2.f21338w, c0688Ci, 27)), mjB11, 9));
                    MJ mjB38 = HJ.b(new C1375gm(mjB16, mjB13, c2094ug2.f21313j1, mjB24, c2094ug2.f21289b1, mjB22, c0671Bg.f12469y, c0671Bg.f12409G, c0671Bg.f12408F, mjB11, 2));
                    if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue()) {
                        p083k3.l.f25980A.f25990j.getClass();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        yq = yq2;
                        yq.f17654f.f12693c.putLong("rendering-ad-component-creation-end", jCurrentTimeMillis);
                        yq.f17654f.f12693c.putLong("rendering-configure-webview-start", jCurrentTimeMillis);
                    } else {
                        yq = yq2;
                    }
                    C0856Nl c0856Nl = c2094ug2.f21284a.f19838a;
                    Cw.N0(c0856Nl);
                    C0781Il c0781Il2 = (C0781Il) c0864Of.f15180H;
                    Cw.N0(c0781Il2);
                    C0941Tm c0941Tm2 = (C0941Tm) c2218x.f21780I;
                    Cw.N0(c0941Tm2);
                    C0695Da c0695Da = new C0695Da(c0856Nl, c0781Il2, c0941Tm2, HJ.a(mjB35));
                    if (((InterfaceC1709n9) c0695Da.f12832H) != null) {
                        ((C0941Tm) c0695Da.f12833I).c("/nativeAdCustomClick", c0695Da);
                    }
                    C0899Qm c0899Qm = (C0899Qm) mjB36.zzb();
                    C0734Fj c0734Fj = c0899Qm.f16127b;
                    C0842Mm c0842Mm = c0941Tm.f16726a;
                    Objects.requireNonNull(c0734Fj);
                    c0842Mm.a(c0899Qm.f16126a, c0899Qm.f16128c, c0899Qm.f16129d, c0899Qm.f16130e, new C0885Pm(c0734Fj, 0));
                    Ov ov3 = c0899Qm.f16131f;
                    Qv qv3 = c0899Qm.f16132g;
                    C1784oh c1784oh = c0899Qm.f16133h;
                    synchronized (c0941Tm) {
                        KB kb = c0941Tm.f16738m;
                        if (kb == null) {
                            r7 = 0;
                        } else {
                            r7 = 0;
                            Cw.h2(kb, new C2246xc(c0941Tm, ov3, qv3, c1784oh, 13, 0), c0941Tm.f16730e);
                        }
                    }
                    final C0692Cm c0692Cm = (C0692Cm) mjB37.zzb();
                    InterfaceC0715Ef interfaceC0715EfR = c0781Il.R();
                    c0692Cm.getClass();
                    if (interfaceC0715EfR != null) {
                        View viewJ = interfaceC0715EfR.j();
                        C0840Mk c0840Mk = c0692Cm.f12689c;
                        c0840Mk.a1(viewJ);
                        C0662Am c0662Am = new C0662Am(interfaceC0715EfR, 0);
                        Executor executor3 = c0692Cm.f12687a;
                        c0840Mk.Y0(c0662Am, executor3);
                        c0840Mk.Y0(new C0662Am(interfaceC0715EfR, 1), executor3);
                        C0702Dh c0702Dh = c0692Cm.f12688b;
                        c0840Mk.Y0(c0702Dh, executor3);
                        c0702Dh.f12844G = interfaceC0715EfR;
                        AbstractC0990Xf abstractC0990XfZzN = interfaceC0715EfR.zzN();
                        if (((Boolean) c3099q2.f26627c.a(Q7.u9)).booleanValue() && abstractC0990XfZzN != 0) {
                            abstractC0990XfZzN.s("/click");
                            InterfaceC0869Ok interfaceC0869Ok = abstractC0990XfZzN.f17467Q;
                            C1784oh c1784oh2 = c0692Cm.f12690d;
                            abstractC0990XfZzN.m("/click", new C0968Vl(1, interfaceC0869Ok, c1784oh2));
                            abstractC0990XfZzN.p(c1784oh2, r7, r7);
                        }
                        final int i14 = 0;
                        interfaceC0715EfR.L0("/trackActiveViewUnit", new N9() { // from class: com.google.android.gms.internal.ads.Bm
                            @Override // com.google.android.gms.internal.ads.N9
                            public final void f(Object obj, Map map3) {
                                int i15 = i14;
                                C0692Cm c0692Cm2 = c0692Cm;
                                switch (i15) {
                                    case 0:
                                        C0702Dh c0702Dh2 = c0692Cm2.f12688b;
                                        c0702Dh2.f12848K = true;
                                        c0702Dh2.a();
                                        break;
                                    default:
                                        c0692Cm2.f12688b.f12848K = false;
                                        break;
                                }
                            }
                        });
                        final int i15 = 1;
                        interfaceC0715EfR.L0("/untrackActiveViewUnit", new N9() { // from class: com.google.android.gms.internal.ads.Bm
                            @Override // com.google.android.gms.internal.ads.N9
                            public final void f(Object obj, Map map3) {
                                int i16 = i15;
                                C0692Cm c0692Cm2 = c0692Cm;
                                switch (i16) {
                                    case 0:
                                        C0702Dh c0702Dh2 = c0692Cm2.f12688b;
                                        c0702Dh2.f12848K = true;
                                        c0702Dh2.a();
                                        break;
                                    default:
                                        c0692Cm2.f12688b.f12848K = false;
                                        break;
                                }
                            }
                        });
                    }
                    ((C0969Vm) mjB38.zzb()).a(yq.f17653e, c0781Il.P());
                    if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue()) {
                        p148t.a.g(p083k3.l.f25980A.f25990j, yq.f17654f.f12693c, "rendering-configure-webview-end");
                    }
                    return (C0721El) gj.zzb();
                }
            };
            WB wb2 = new WB(paU, true, false);
            wb2.f17176V = new UB(wb2, callable2, this.f17650b);
            wb2.x();
            return wb2;
        }
        c1298fCN1 = Cw.N1(null);
        o7 = o9;
        bVarN1 = c1298fCN1;
        c2246xc = c2246xc2;
        bVarA = c2100um.a(jSONObject.optJSONObject("secondary_image"), m8.f14644H);
        bVarA2 = c2100um.a(jSONObject.optJSONObject("app_icon"), m8.f14644H);
        jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject == null) {
            interfaceExecutorServiceC1504jC = interfaceExecutorServiceC1504jC2;
            bVarD1 = Cw.N1(null);
        } else {
            jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("images");
            jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("image");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
            }
            interfaceExecutorServiceC1504jC = interfaceExecutorServiceC1504jC2;
            kbB2 = Cw.b2(c2100um.b(jSONArrayOptJSONArray, false, true), new C0929Ta(1, c2100um, jSONObjectOptJSONObject), c2100um.f21374g);
            if (jSONObjectOptJSONObject.optBoolean("require")) {
                bVarD1 = Cw.d2(kbB2, new C1996sm(2, kbB2), AbstractC1988se.f20911f);
            } else {
                bVarD1 = Cw.D1(kbB2, Exception.class, new C1422hh(2, 0), AbstractC1988se.f20911f);
            }
        }
        qv = (Qv) c2246xc.f21883I;
        strArr = new String[]{"html_containers", "instream"};
        jSONObjectE0 = Q3.b.e0(jSONObject, strArr);
        if (jSONObjectE0 == null) {
            jSONObjectOptJSONObject3 = null;
        } else {
            jSONObjectOptJSONObject3 = jSONObjectE0.optJSONObject(strArr[1]);
        }
        if (jSONObjectOptJSONObject3 == null) {
            jSONObjectOptJSONObject6 = jSONObject.optJSONObject("video");
            if (jSONObjectOptJSONObject6 == null) {
                bVarC = Cw.N1(null);
                bVar = bVarD1;
                bVar2 = bVarA;
                bVar3 = bVarA2;
                o8 = o7;
            } else {
                bVar = bVarD1;
                strOptString4 = jSONObjectOptJSONObject6.optString("vast_xml");
                bVar3 = bVarA2;
                bVar2 = bVarA;
                o8 = o7;
                if (((Boolean) o8.a(Q7.n9)).booleanValue()) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                if (TextUtils.isEmpty(strOptString4)) {
                    if (!z7) {
                        C0707Dm c0707Dm2 = c2100um.f21376i;
                        c0707Dm2.getClass();
                        C1298fC c1298fCN3 = Cw.N1(null);
                        No no2 = new No(c0707Dm2, 8);
                        Executor executor3 = c0707Dm2.f12870b;
                        jbD2 = Cw.d2(Cw.d2(c1298fCN3, no2, executor3), new C0957Va(6, c0707Dm2, jSONObjectOptJSONObject6), executor3);
                    }
                    bVarC = Cw.D1(Cw.e2(jbD2, ((Integer) o8.a(Q7.f15989z3)).intValue(), TimeUnit.SECONDS, c2100um.f21378k), Exception.class, new C1422hh(2, 0), AbstractC1988se.f20911f);
                } else if (!z7) {
                    p120p3.h.g("Required field 'vast_xml' or 'html' is missing");
                    bVarC = Cw.N1(null);
                }
                jbD2 = c2100um.c(jSONObjectOptJSONObject6, ov, qv);
                bVarC = Cw.D1(Cw.e2(jbD2, ((Integer) o8.a(Q7.f15989z3)).intValue(), TimeUnit.SECONDS, c2100um.f21378k), Exception.class, new C1422hh(2, 0), AbstractC1988se.f20911f);
            }
            bVarN1 = bVarN1;
        } else {
            bVar = bVarD1;
            bVar2 = bVarA;
            bVar3 = bVarA2;
            o8 = o7;
            bVarN1 = bVarN1;
            bVarC = c2100um.c(jSONObjectOptJSONObject3, ov, qv);
        }
        if (((Boolean) o8.a(Q7.ic)).booleanValue()) {
            final int i12 = 0;
            Optional map3 = Optional.ofNullable(jSONObject.optJSONObject("video")).map(new Function() { // from class: com.google.android.gms.internal.ads.nm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i12) {
                        case 0:
                            return ((JSONObject) obj).optJSONArray("flags");
                        case 1:
                            JSONArray jSONArray2 = (JSONArray) obj;
                            for (int i13 = 0; i13 < jSONArray2.length(); i13++) {
                                JSONObject jSONObjectOptJSONObject8 = jSONArray2.optJSONObject(i13);
                                if (jSONObjectOptJSONObject8.optString("key").equals("afma_video_player_type")) {
                                    return jSONObjectOptJSONObject8.optString("value");
                                }
                            }
                            return null;
                        default:
                            return Integer.valueOf(Integer.parseInt((String) obj));
                    }
                }
            });
            final int i13 = 1;
            map = map3.map(new Function() { // from class: com.google.android.gms.internal.ads.nm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i13) {
                        case 0:
                            return ((JSONObject) obj).optJSONArray("flags");
                        case 1:
                            JSONArray jSONArray2 = (JSONArray) obj;
                            for (int i14 = 0; i14 < jSONArray2.length(); i14++) {
                                JSONObject jSONObjectOptJSONObject8 = jSONArray2.optJSONObject(i14);
                                if (jSONObjectOptJSONObject8.optString("key").equals("afma_video_player_type")) {
                                    return jSONObjectOptJSONObject8.optString("value");
                                }
                            }
                            return null;
                        default:
                            return Integer.valueOf(Integer.parseInt((String) obj));
                    }
                }
            });
            i9 = 2;
            if (((Integer) map.map(new Function() { // from class: com.google.android.gms.internal.ads.nm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i9) {
                        case 0:
                            return ((JSONObject) obj).optJSONArray("flags");
                        case 1:
                            JSONArray jSONArray2 = (JSONArray) obj;
                            for (int i14 = 0; i14 < jSONArray2.length(); i14++) {
                                JSONObject jSONObjectOptJSONObject8 = jSONArray2.optJSONObject(i14);
                                if (jSONObjectOptJSONObject8.optString("key").equals("afma_video_player_type")) {
                                    return jSONObjectOptJSONObject8.optString("value");
                                }
                            }
                            return null;
                        default:
                            return Integer.valueOf(Integer.parseInt((String) obj));
                    }
                }
            }).orElse(0)).intValue() == 3) {
                C2040te c2040te2 = new C2040te();
                Cw.h2(bVarC, new C0943Ua(c2040te2, 0), AbstractC1988se.f20910e);
                bVarN2 = c2040te2;
            } else {
                bVarN2 = Cw.N1(new Bundle());
            }
        } else {
            bVarN2 = Cw.N1(new Bundle());
        }
        c2256xm = c1841pm.f20484c;
        c2256xm.getClass();
        jSONArrayOptJSONArray2 = jSONObject.optJSONArray("custom_assets");
        if (jSONArrayOptJSONArray2 == null) {
            bVarB2 = Cw.N1(Collections.emptyList());
        } else {
            arrayList = new ArrayList();
            length = jSONArrayOptJSONArray2.length();
            i8 = 0;
            while (true) {
                executor = c2256xm.f21923a;
                if (i8 < length) {
                    break;
                    break;
                }
                jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i8);
                if (jSONObjectOptJSONObject4 == null) {
                    futureN1 = Cw.N1(null);
                } else {
                    strOptString2 = jSONObjectOptJSONObject4.optString("type");
                    jSONArray = jSONArrayOptJSONArray2;
                    if ("string".equals(strOptString2)) {
                        futureN1 = Cw.N1(new C2204wm(strOptString, jSONObjectOptJSONObject4.optString("string_value")));
                    } else if ("image".equals(strOptString2)) {
                        C2100um c2100um3 = c2256xm.f21924b;
                        c2100um3.getClass();
                        futureN1 = Cw.b2(c2100um3.a(jSONObjectOptJSONObject4.optJSONObject("image_value"), c2100um3.f21375h.f14644H), new I9(strOptString, 2), executor);
                    } else {
                        futureN1 = Cw.N1(null);
                    }
                    arrayList.add(futureN1);
                    i8++;
                    jSONArrayOptJSONArray2 = jSONArray;
                }
                jSONArray = jSONArrayOptJSONArray2;
                arrayList.add(futureN1);
                i8++;
                jSONArrayOptJSONArray2 = jSONArray;
            }
            bVarB2 = Cw.b2(new SB(AbstractC2073uA.t(arrayList), true), new C2064u1(8), executor);
        }
        if (jSONObject.optBoolean("enable_omid")) {
            bVarD2 = Cw.N1(null);
        } else {
            strOptString3 = jSONObjectOptJSONObject5.optString("omid_html");
            if (TextUtils.isEmpty(strOptString3)) {
                bVarD2 = Cw.N1(null);
            } else {
                bVarD2 = Cw.d2(Cw.N1(null), new C0957Va(c2100um, strOptString3), AbstractC1988se.f20910e);
            }
        }
        arrayList2 = new ArrayList();
        arrayList2.add(bVarB);
        arrayList2.add(bVarB3);
        final D4.b bVar12 = bVarN1;
        arrayList2.add(bVar12);
        final D4.b bVar13 = bVar2;
        arrayList2.add(bVar13);
        final D4.b bVar14 = bVar3;
        arrayList2.add(bVar14);
        final D4.b bVar15 = bVar;
        arrayList2.add(bVar15);
        arrayList2.add(bVarC);
        arrayList2.add(bVarN2);
        arrayList2.add(bVarB2);
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15697P4)).booleanValue()) {
            arrayList2.add(bVarD2);
        }
        AbstractC2073uA abstractC2073uAT2 = AbstractC2073uA.t(arrayList2);
        final D4.b bVar16 = bVarC;
        final D4.b bVar17 = bVarN2;
        final D4.b bVar18 = bVarD2;
        final D4.b bVar19 = bVarB2;
        Callable callable3 = new Callable() { // from class: com.google.android.gms.internal.ads.om
            @Override // java.util.concurrent.Callable
            public final Object call() {
                JSONArray jSONArrayOptJSONArray5;
                AbstractC2073uA abstractC2073uAT3;
                JSONObject jSONObjectOptJSONObject8;
                C0781Il c0781Il = (C0781Il) bVarB.get();
                List list = (List) bVarB3.get();
                synchronized (c0781Il) {
                    c0781Il.f14025e = list;
                }
                c0781Il.k((T8) bVar14.get());
                c0781Il.n((T8) bVar13.get());
                c0781Il.h((P8) bVar15.get());
                JSONObject jSONObject2 = jSONObject;
                JSONObject jSONObjectOptJSONObject9 = jSONObject2.optJSONObject("mute");
                if (jSONObjectOptJSONObject9 == null || (jSONArrayOptJSONArray5 = jSONObjectOptJSONObject9.optJSONArray("reasons")) == null || jSONArrayOptJSONArray5.length() <= 0) {
                    C1969sA c1969sA = AbstractC2073uA.f21207H;
                    abstractC2073uAT3 = PA.f15340K;
                } else {
                    ArrayList arrayList3 = new ArrayList();
                    for (int i14 = 0; i14 < jSONArrayOptJSONArray5.length(); i14++) {
                        p090l3.K0 k0E = C2100um.e(jSONArrayOptJSONArray5.optJSONObject(i14));
                        if (k0E != null) {
                            arrayList3.add(k0E);
                        }
                    }
                    abstractC2073uAT3 = AbstractC2073uA.t(arrayList3);
                }
                c0781Il.o(abstractC2073uAT3);
                JSONObject jSONObjectOptJSONObject10 = jSONObject2.optJSONObject("mute");
                c0781Il.j((jSONObjectOptJSONObject10 == null || (jSONObjectOptJSONObject8 = jSONObjectOptJSONObject10.optJSONObject("default_reason")) == null) ? null : C2100um.e(jSONObjectOptJSONObject8));
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) bVar16.get();
                if (interfaceC0715Ef != null) {
                    c0781Il.y(interfaceC0715Ef);
                    c0781Il.x(interfaceC0715Ef.j());
                    c0781Il.w(interfaceC0715Ef.zzq());
                }
                D4.b bVar110 = bVar17;
                D4.b bVar111 = bVar12;
                c0781Il.E().putAll((Bundle) bVar110.get());
                InterfaceC0715Ef interfaceC0715Ef2 = (InterfaceC0715Ef) bVar111.get();
                if (interfaceC0715Ef2 != null) {
                    c0781Il.m(interfaceC0715Ef2);
                    c0781Il.z(interfaceC0715Ef2.j());
                }
                D4.b bVar112 = bVar18;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15697P4)).booleanValue()) {
                    c0781Il.q(bVar112);
                    c0781Il.s(new C2040te());
                } else {
                    InterfaceC0715Ef interfaceC0715Ef3 = (InterfaceC0715Ef) bVar112.get();
                    if (interfaceC0715Ef3 != null) {
                        c0781Il.p(interfaceC0715Ef3);
                    }
                }
                for (C2204wm c2204wm : (List) bVar19.get()) {
                    if (c2204wm.f21741a != 1) {
                        c0781Il.l(c2204wm.f21742b, c2204wm.f21744d);
                    } else {
                        c0781Il.u(c2204wm.f21742b, c2204wm.f21743c);
                    }
                }
                return c0781Il;
            }
        };
        final WB wb3 = new WB(abstractC2073uAT2, false, false);
        wb3.f17176V = new UB(wb3, callable3, interfaceExecutorServiceC1504jC);
        wb3.x();
        PA paU2 = AbstractC2073uA.u(new D4.b[]{bVarA3, wb3});
        Callable callable4 = new Callable() { // from class: com.google.android.gms.internal.ads.Xq
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v28 */
            /* JADX WARN: Type inference failed for: r2v29, types: [com.google.android.gms.internal.ads.Fn, com.google.android.gms.internal.ads.cq] */
            /* JADX WARN: Type inference failed for: r2v35 */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Yq yq;
                ?? r7;
                Yq yq2 = this.f17515a;
                D4.b bVar110 = wb3;
                D4.b bVar111 = bVarA3;
                Tv tv2 = tv;
                Ov ov2 = ov;
                JSONObject jSONObject2 = jSONObject;
                yq2.getClass();
                C0781Il c0781Il = (C0781Il) bVar110.get();
                C0941Tm c0941Tm = (C0941Tm) bVar111.get();
                J7 j10 = Q7.f15749W1;
                C3099q c3099q2 = C3099q.f26624d;
                if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, yq2.f17654f.f12693c, "rendering-webview-creation-end");
                }
                C2094ug c2094ug = yq2.f17649a;
                p004a3.b bVar112 = new p004a3.b(tv2, ov2, (String) null);
                C0864Of c0864Of = new C0864Of(c0781Il, 10);
                C2218x c2218x = new C2218x(23, jSONObject2, c0941Tm);
                C2094ug c2094ug2 = c2094ug.f21290c;
                C0671Bg c0671Bg = c2094ug.f21287b;
                MJ mjB = HJ.b(new C1731ng(c0671Bg.f12449k0, 18, (Object) null));
                C0688Ci c0688Ci = new C0688Ci(bVar112);
                C2099ul c2099ul = new C2099ul(c2218x);
                C2151vl c2151vl = new C2151vl(HJ.b(new C0788Jd(c0688Ci, c2099ul, 28)));
                MJ mjB2 = HJ.b(new C1064al(c2151vl, 4, 0));
                C1938rg c1938rg = c0671Bg.f12448k;
                C2202wk c2202wk = AbstractC1270el.f18558c;
                int i14 = 3;
                MJ mjB3 = HJ.b(new p167v3.E((MJ) c1938rg, mjB2, (MJ) c2202wk, i14));
                MJ mjB4 = HJ.b(new C0687Ch(mjB, HJ.b(new C0788Jd(c0671Bg.f12442h, mjB3, i14)), c0671Bg.f12434d, HJ.b(new C0788Jd(mjB3, mjB, 4, 0)), c0671Bg.f12440g, 0));
                C0799Jo c0799Jo = Cw.f12717a;
                MJ mjB5 = HJ.b(new C0788Jd(mjB4, mjB2, 6, (Object) null));
                MJ mjB6 = HJ.b(new C0788Jd(c2094ug2.f21338w, c0688Ci, 23, 0));
                MJ mjP = AbstractC2090uc.p(mjB6, 22, 0);
                int i15 = NJ.f14896c;
                ArrayList arrayList3 = new ArrayList(1);
                ArrayList arrayList4 = new ArrayList(3);
                arrayList4.add(c2094ug2.f21345z0);
                arrayList4.add(c2094ug2.f21233A0);
                arrayList4.add(mjB5);
                arrayList3.add(mjP);
                MJ mjB7 = p148t.a.b(new NJ(arrayList3, arrayList4), 2);
                MJ mjB8 = HJ.b(AbstractC1717nH.f20139p0);
                MJ mjR = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 16);
                C0733Fi c0733Fi = new C0733Fi(bVar112);
                C0718Ei c0718Ei = new C0718Ei(bVar112);
                C1523jg c1523jg = c0671Bg.f12442h;
                MJ mjB9 = HJ.b(new C0843Mn(c1523jg, 18, (Object) null));
                MJ mjB10 = HJ.b(AbstractC1270el.f18563h);
                MJ mjB11 = HJ.b(new C1892ql(c1523jg, c0671Bg.f12420R, mjB9, mjB10, c0799Jo, c0671Bg.f12421S, c0671Bg.f12436e, 1));
                MJ mjB12 = HJ.b(new C2147vh(c1523jg, c0671Bg.f12434d, c0671Bg.f12436e, c0733Fi, c0688Ci, c2094ug2.f21335u0, HJ.b(new C1892ql(c0671Bg.f12408F, c0671Bg.f12409G, c0688Ci, c0718Ei, mjB11, c2094ug2.f21296e, 11)), new C2202wk(12, 0), new C2202wk(10, 0), c0671Bg.f12406D, c2094ug2.f21337v0, c2094ug2.f21296e, c2094ug2.f21241E0));
                C0778Ii c0778Ii = new C0778Ii(mjB12, 11);
                C0778Ii c0778Ii2 = new C0778Ii(HJ.b(new C0788Jd(c0688Ci, c0671Bg.f12418P, 2)), 28);
                ArrayList arrayList5 = new ArrayList(4);
                ArrayList arrayList6 = new ArrayList(2);
                arrayList5.add(c2094ug2.f21235B0);
                arrayList6.add(c2094ug2.f21237C0);
                arrayList6.add(c2094ug2.f21239D0);
                arrayList5.add(mjR);
                arrayList5.add(c0778Ii);
                arrayList5.add(c0778Ii2);
                MJ mjB13 = p148t.a.b(new NJ(arrayList5, arrayList6), 3);
                MJ mjB14 = HJ.b(new C2361zn(c0671Bg.f12442h, c0671Bg.f12433c0, c0671Bg.f12469y, c0733Fi, c0688Ci, c0671Bg.f12408F, c2202wk, 0));
                MJ mjO = AbstractC2090uc.o(mjB14, 20);
                MJ mjB15 = HJ.b(new C0788Jd(mjB8, c0671Bg.f12434d, 15));
                MJ mjO2 = AbstractC2090uc.o(HJ.b(new C0788Jd(c0671Bg.f12427Y, c2094ug2.f21293d, 13)), 18);
                C0778Ii c0778Ii3 = new C0778Ii(mjB12, 10);
                ArrayList arrayList7 = new ArrayList(5);
                ArrayList arrayList8 = new ArrayList(3);
                arrayList7.add(c2094ug2.f21243F0);
                arrayList7.add(c2094ug2.f21245G0);
                arrayList8.add(c2094ug2.f21247H0);
                arrayList8.add(c2094ug2.f21249I0);
                arrayList7.add(mjO);
                arrayList7.add(mjB15);
                arrayList8.add(mjO2);
                arrayList7.add(c0778Ii3);
                MJ mjB16 = p148t.a.b(new NJ(arrayList7, arrayList8), 0);
                MJ mjB17 = HJ.b(new C0788Jd(mjB4, mjB2, 5, (Object) null));
                MJ mjO3 = AbstractC2090uc.o(mjB14, 21);
                MJ mjR2 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 18);
                MJ mjB18 = HJ.b(new C0788Jd(mjB8, c0671Bg.f12434d, 21));
                MJ mjB19 = HJ.b(AbstractC1270el.f18561f);
                C1064al c1064al = new C1064al(mjB19, 9, (Object) null);
                ArrayList arrayList9 = new ArrayList(2);
                ArrayList arrayList10 = new ArrayList(1);
                arrayList10.add(c2094ug2.f21259N0);
                arrayList9.add(mjB18);
                arrayList9.add(c1064al);
                C1731ng c1731ng = new C1731ng(HJ.b(new C0788Jd(new NJ(arrayList9, arrayList10), c0688Ci, 24)), 29, 0);
                C0778Ii c0778Ii4 = new C0778Ii(mjB12, 13);
                C0884Pl c0884Pl = new C0884Pl(c0864Of);
                C1064al c1064al2 = new C1064al(HJ.b(new p167v3.E(c0884Pl, c2151vl, c0671Bg.f12434d, 13, 0)), 6, 0);
                ArrayList arrayList11 = new ArrayList(7);
                ArrayList arrayList12 = new ArrayList(3);
                arrayList11.add(c2094ug2.f21251J0);
                arrayList11.add(c2094ug2.f21253K0);
                arrayList12.add(c2094ug2.f21255L0);
                arrayList12.add(c2094ug2.f21257M0);
                arrayList12.add(mjB17);
                arrayList11.add(mjO3);
                arrayList11.add(mjR2);
                arrayList11.add(c1731ng);
                arrayList11.add(c0778Ii4);
                arrayList11.add(c1064al2);
                MJ mjB20 = p148t.a.b(new NJ(arrayList11, arrayList12), 1);
                C0778Ii c0778Ii5 = new C0778Ii(mjB12, 15);
                ArrayList arrayList13 = new ArrayList(1);
                ArrayList arrayList14 = new ArrayList(1);
                arrayList14.add(c2094ug2.f21261O0);
                arrayList13.add(c0778Ii5);
                MJ mjB21 = p148t.a.b(new NJ(arrayList13, arrayList14), 14);
                C0778Ii c0778Ii6 = new C0778Ii(HJ.b(new C0788Jd(c0688Ci, c0671Bg.f12409G, 25)), 9);
                ArrayList arrayList15 = new ArrayList(1);
                new ArrayList(1).add(c2094ug2.f21263P0);
                arrayList15.add(c0778Ii6);
                MJ mjR3 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 22);
                ArrayList arrayList16 = new ArrayList(1);
                ArrayList arrayList17 = new ArrayList(1);
                arrayList17.add(c2094ug2.f21265Q0);
                arrayList16.add(mjR3);
                MJ mjB22 = p148t.a.b(new NJ(arrayList16, arrayList17), 15);
                MJ mjP2 = AbstractC2090uc.p(mjB6, 23, 0);
                C0778Ii c0778Ii7 = new C0778Ii(mjB12, 14);
                ArrayList arrayList18 = new ArrayList(6);
                ArrayList arrayList19 = new ArrayList(4);
                arrayList18.add(c2094ug2.f21267R0);
                arrayList19.add(c2094ug2.f21269S0);
                arrayList18.add(c2094ug2.f21271T0);
                arrayList18.add(c2094ug2.f21273U0);
                arrayList19.add(c2094ug2.f21275V0);
                arrayList19.add(c2094ug2.f21277W0);
                arrayList19.add(c2094ug2.f21279X0);
                arrayList18.add(c2094ug2.f21281Y0);
                arrayList18.add(mjP2);
                arrayList18.add(c0778Ii7);
                MJ mjB23 = p148t.a.b(new NJ(arrayList18, arrayList19), 4);
                C0778Ii c0778Ii8 = new C0778Ii(HJ.b(new C1731ng(mjB13, 28, (Object) null)), 17, 0);
                MJ mjR4 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 20);
                ArrayList arrayList20 = new ArrayList(2);
                ArrayList arrayList21 = new ArrayList(1);
                arrayList21.add(c2094ug2.f21292c1);
                arrayList20.add(c0778Ii8);
                arrayList20.add(mjR4);
                MJ mjB24 = HJ.b(new C1786oj(new NJ(arrayList20, arrayList21), 7));
                Collections.emptyList();
                new ArrayList(1).add(c2094ug2.f21295d1);
                MJ mjB25 = HJ.b(new C0778Ii(mjB14, 19));
                ArrayList arrayList22 = new ArrayList(1);
                Collections.emptyList();
                arrayList22.add(mjB25);
                MJ mjR5 = AbstractC2090uc.r(mjB8, c0671Bg.f12434d, 17);
                C0778Ii c0778Ii9 = new C0778Ii(mjB12, 12);
                ArrayList arrayList23 = new ArrayList(2);
                new ArrayList(1).add(c2094ug2.f21298e1);
                arrayList23.add(mjR5);
                arrayList23.add(c0778Ii9);
                MJ mjO4 = AbstractC2090uc.o(mjB14, 16);
                ArrayList arrayList24 = new ArrayList(1);
                Collections.emptyList();
                arrayList24.add(mjO4);
                C0703Di c0703Di = new C0703Di(bVar112);
                C1682mj c1682mj = new C1682mj(c0688Ci, c0703Di, c2094ug2.f21344z, c0718Ei, c2094ug2.f21299f);
                ArrayList arrayList25 = new ArrayList(1);
                ArrayList arrayList26 = new ArrayList(1);
                arrayList26.add(c2094ug2.f21304g1);
                arrayList25.add(c2094ug2.f21307h1);
                C0909Ri c0909Ri = new C0909Ri(c0733Fi, c0688Ci, mjB7, mjB23, c2094ug2.f21301f1, c1682mj, mjB8, new C0809Kj(new NJ(arrayList25, arrayList26)), mjB21);
                C2255xl c2255xl = new C2255xl(c2218x);
                MJ mjB26 = HJ.b(new C0788Jd(c2255xl, c0671Bg.f12440g, 29));
                MJ mjB27 = HJ.b(new C0788Jd(mjB4, mjB2, 7, (Object) null));
                List listEmptyList = Collections.emptyList();
                ArrayList arrayList27 = new ArrayList(2);
                arrayList27.add(c2094ug2.f21310i1);
                arrayList27.add(mjB27);
                MJ mjB28 = HJ.b(new p167v3.E(c2094ug2.f21338w, (MJ) new NJ(listEmptyList, arrayList27), (MJ) c0688Ci, 12));
                C1788ol c1788ol = c2094ug2.f21264Q;
                MJ mj = c0671Bg.f12406D;
                C1938rg c1938rg2 = c0671Bg.f12448k;
                C2203wl c2203wl = new C2203wl(HJ.b(new C2047tl(c2094ug2.f21338w, c1788ol, c2099ul, c2255xl, c0884Pl, mj, mjB20, mjB16, mjB22, c0688Ci, c1938rg2, c2094ug2.f21293d, mjB4, mjB26, c0671Bg.f12440g, mjB28, c0671Bg.f12409G, c2094ug2.f21296e, c0671Bg.f12410H, mjB10)));
                MJ mjB29 = HJ.b(new C0762Hh(HJ.b(new C1064al(c1938rg2, 5, (Object) null)), c0671Bg.f12434d, c2094ug2.f21338w, c0671Bg.f12440g, 7));
                C0762Hh c0762Hh = new C0762Hh(c2094ug2.f21339w0, (MJ) c2255xl, mjB29, (MJ) c2203wl, 8);
                C1168cm c1168cm = new C1168cm(c2094ug2.f21339w0, c2255xl, 0);
                MJ mjB30 = HJ.b(new C1064al(new C2359zl(c0884Pl), 7));
                C0940Tl c0940Tl = new C0940Tl(c0671Bg.f12420R, c2094ug2.f21293d, c2151vl, c0884Pl, c0762Hh, c1168cm, c0671Bg.f12434d, mjB30);
                GJ gj = new GJ();
                MJ mjB31 = HJ.b(new p167v3.E((MJ) c0703Di, (MJ) gj, (MJ) c0884Pl, 15));
                MJ mjB32 = HJ.b(new p167v3.E((MJ) c0703Di, (MJ) gj, (MJ) c0884Pl, 14));
                MJ mjB33 = HJ.b(new C0762Hh(c0703Di, gj, c0884Pl, c0671Bg.f12469y, 11));
                MJ mjB34 = HJ.b(new C1168cm(gj, c0884Pl, 3));
                C1523jg c1523jg2 = c0671Bg.f12442h;
                MJ mjB35 = HJ.b(new C0762Hh((MJ) c1523jg2, (MJ) c0884Pl, (MJ) c0940Tl, (MJ) gj, 10));
                C0870Ol c0870Ol = new C0870Ol(c1523jg2, c2094ug2.f21293d);
                GJ.a(gj, HJ.b(new C0736Fl(c0909Ri, c0671Bg.f12434d, c0884Pl, c2203wl, c0940Tl, c2151vl, c2094ug2.f21264Q, mjB31, mjB32, mjB33, mjB34, mjB35, c0870Ol, c0671Bg.f12406D, c1938rg2, c1523jg2, mjB30, mjB19, c0671Bg.f12459p0)));
                MJ mjB36 = HJ.b(new C0722Em(mjB16, mjB13, c2094ug2.f21313j1, mjB24, c2094ug2.f21289b1, c0688Ci, c0718Ei, mjB11, 1));
                MJ mjB37 = HJ.b(new C0762Hh(c0671Bg.f12434d, mjB29, HJ.b(new C0788Jd(c2094ug2.f21338w, c0688Ci, 27)), mjB11, 9));
                MJ mjB38 = HJ.b(new C1375gm(mjB16, mjB13, c2094ug2.f21313j1, mjB24, c2094ug2.f21289b1, mjB22, c0671Bg.f12469y, c0671Bg.f12409G, c0671Bg.f12408F, mjB11, 2));
                if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue()) {
                    p083k3.l.f25980A.f25990j.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    yq = yq2;
                    yq.f17654f.f12693c.putLong("rendering-ad-component-creation-end", jCurrentTimeMillis);
                    yq.f17654f.f12693c.putLong("rendering-configure-webview-start", jCurrentTimeMillis);
                } else {
                    yq = yq2;
                }
                C0856Nl c0856Nl = c2094ug2.f21284a.f19838a;
                Cw.N0(c0856Nl);
                C0781Il c0781Il2 = (C0781Il) c0864Of.f15180H;
                Cw.N0(c0781Il2);
                C0941Tm c0941Tm2 = (C0941Tm) c2218x.f21780I;
                Cw.N0(c0941Tm2);
                C0695Da c0695Da = new C0695Da(c0856Nl, c0781Il2, c0941Tm2, HJ.a(mjB35));
                if (((InterfaceC1709n9) c0695Da.f12832H) != null) {
                    ((C0941Tm) c0695Da.f12833I).c("/nativeAdCustomClick", c0695Da);
                }
                C0899Qm c0899Qm = (C0899Qm) mjB36.zzb();
                C0734Fj c0734Fj = c0899Qm.f16127b;
                C0842Mm c0842Mm = c0941Tm.f16726a;
                Objects.requireNonNull(c0734Fj);
                c0842Mm.a(c0899Qm.f16126a, c0899Qm.f16128c, c0899Qm.f16129d, c0899Qm.f16130e, new C0885Pm(c0734Fj, 0));
                Ov ov3 = c0899Qm.f16131f;
                Qv qv3 = c0899Qm.f16132g;
                C1784oh c1784oh = c0899Qm.f16133h;
                synchronized (c0941Tm) {
                    KB kb = c0941Tm.f16738m;
                    if (kb == null) {
                        r7 = 0;
                    } else {
                        r7 = 0;
                        Cw.h2(kb, new C2246xc(c0941Tm, ov3, qv3, c1784oh, 13, 0), c0941Tm.f16730e);
                    }
                }
                final C0692Cm c0692Cm = (C0692Cm) mjB37.zzb();
                InterfaceC0715Ef interfaceC0715EfR = c0781Il.R();
                c0692Cm.getClass();
                if (interfaceC0715EfR != null) {
                    View viewJ = interfaceC0715EfR.j();
                    C0840Mk c0840Mk = c0692Cm.f12689c;
                    c0840Mk.a1(viewJ);
                    C0662Am c0662Am = new C0662Am(interfaceC0715EfR, 0);
                    Executor executor4 = c0692Cm.f12687a;
                    c0840Mk.Y0(c0662Am, executor4);
                    c0840Mk.Y0(new C0662Am(interfaceC0715EfR, 1), executor4);
                    C0702Dh c0702Dh = c0692Cm.f12688b;
                    c0840Mk.Y0(c0702Dh, executor4);
                    c0702Dh.f12844G = interfaceC0715EfR;
                    AbstractC0990Xf abstractC0990XfZzN = interfaceC0715EfR.zzN();
                    if (((Boolean) c3099q2.f26627c.a(Q7.u9)).booleanValue() && abstractC0990XfZzN != 0) {
                        abstractC0990XfZzN.s("/click");
                        InterfaceC0869Ok interfaceC0869Ok = abstractC0990XfZzN.f17467Q;
                        C1784oh c1784oh2 = c0692Cm.f12690d;
                        abstractC0990XfZzN.m("/click", new C0968Vl(1, interfaceC0869Ok, c1784oh2));
                        abstractC0990XfZzN.p(c1784oh2, r7, r7);
                    }
                    final int i16 = 0;
                    interfaceC0715EfR.L0("/trackActiveViewUnit", new N9() { // from class: com.google.android.gms.internal.ads.Bm
                        @Override // com.google.android.gms.internal.ads.N9
                        public final void f(Object obj, Map map4) {
                            int i17 = i16;
                            C0692Cm c0692Cm2 = c0692Cm;
                            switch (i17) {
                                case 0:
                                    C0702Dh c0702Dh2 = c0692Cm2.f12688b;
                                    c0702Dh2.f12848K = true;
                                    c0702Dh2.a();
                                    break;
                                default:
                                    c0692Cm2.f12688b.f12848K = false;
                                    break;
                            }
                        }
                    });
                    final int i17 = 1;
                    interfaceC0715EfR.L0("/untrackActiveViewUnit", new N9() { // from class: com.google.android.gms.internal.ads.Bm
                        @Override // com.google.android.gms.internal.ads.N9
                        public final void f(Object obj, Map map4) {
                            int i18 = i17;
                            C0692Cm c0692Cm2 = c0692Cm;
                            switch (i18) {
                                case 0:
                                    C0702Dh c0702Dh2 = c0692Cm2.f12688b;
                                    c0702Dh2.f12848K = true;
                                    c0702Dh2.a();
                                    break;
                                default:
                                    c0692Cm2.f12688b.f12848K = false;
                                    break;
                            }
                        }
                    });
                }
                ((C0969Vm) mjB38.zzb()).a(yq.f17653e, c0781Il.P());
                if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, yq.f17654f.f12693c, "rendering-configure-webview-end");
                }
                return (C0721El) gj.zzb();
            }
        };
        WB wb4 = new WB(paU2, true, false);
        wb4.f17176V = new UB(wb4, callable4, this.f17650b);
        wb4.x();
        return wb4;
    }
}
