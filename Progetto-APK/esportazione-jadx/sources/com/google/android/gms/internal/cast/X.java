package com.google.android.gms.internal.cast;

import D1.C0152q;
import O1.C0314m;
import Z3.C0421c;
import Z3.C0422d;
import Z3.C0429k;
import Z3.C0430l;
import Z3.C0432n;
import Z3.C0433o;
import Z3.C0434p;
import Z3.C0435q;
import Z3.RunnableC0439v;
import Z6.C0470b;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import b7.C0524i0;
import b7.C0538n;
import b7.C0544q;
import b7.C0550t0;
import b7.RunnableC0506c0;
import b7.ViewOnFocusChangeListenerC0527j0;
import com.google.android.gms.internal.ads.PN;
import com.google.api.Service;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import p021c4.AbstractC0604p;
import p021c4.C0574d1;
import p021c4.C0584h;
import p021c4.C0591j0;
import p021c4.C0595k1;
import p021c4.C0597l0;
import p021c4.RunnableC0589i1;
import p021c4.ServiceConnectionC0571c1;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.services.RecordingServices;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class X implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22556G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f22557H;

    public /* synthetic */ X(Object obj, int i8) {
        this.f22556G = i8;
        this.f22557H = obj;
    }

    private final void a() {
        C2423a0 c2423a0 = (C2423a0) this.f22557H;
        C2427b0 c2427b0 = c2423a0.f22623g;
        if (c2427b0 != null) {
            c2423a0.f22617a.a((C2494s0) c2423a0.f22619c.b(c2427b0).b(), 223);
        }
        c2423a0.e();
    }

    private final void b() {
        D0 d6 = (D0) this.f22557H;
        if (d6.f22430f.isEmpty()) {
            return;
        }
        HashSet hashSet = d6.f22431g;
        HashSet hashSet2 = d6.f22430f;
        long j8 = true != hashSet.equals(hashSet2) ? 86400000L : 172800000L;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j9 = d6.f22432h;
        if (j9 == 0 || jCurrentTimeMillis - j9 >= j8) {
            D0.f22422i.b("Upload the feature usage report.", new Object[0]);
            C2463k0 c2463k0L = C2467l0.l();
            String str = D0.f22423j;
            c2463k0L.d();
            C2467l0.n((C2467l0) c2463k0L.f22745H, str);
            c2463k0L.d();
            C2467l0.m((C2467l0) c2463k0L.f22745H, d6.f22427c);
            C2467l0 c2467l0 = (C2467l0) c2463k0L.b();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(hashSet2);
            C2447g0 c2447g0L = C2451h0.l();
            c2447g0L.d();
            C2451h0.n((C2451h0) c2447g0L.f22745H, arrayList);
            c2447g0L.d();
            C2451h0.m((C2451h0) c2447g0L.f22745H, c2467l0);
            C2451h0 c2451h0 = (C2451h0) c2447g0L.b();
            C2490r0 c2490r0M = C2494s0.m();
            c2490r0M.d();
            C2494s0.s((C2494s0) c2490r0M.f22745H, c2451h0);
            d6.f22425a.a((C2494s0) c2490r0M.b(), 243);
            SharedPreferences sharedPreferences = d6.f22426b;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (!hashSet.equals(hashSet2)) {
                hashSet.clear();
                hashSet.addAll(hashSet2);
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    String string = Integer.toString(((EnumC2435d0) it.next()).f22723G);
                    String strC = p148t.a.c("feature_usage_timestamp_reported_feature_", string);
                    if (!sharedPreferences.contains(strC)) {
                        strC = p148t.a.c("feature_usage_timestamp_detected_feature_", string);
                    }
                    String strC2 = p148t.a.c("feature_usage_timestamp_reported_feature_", string);
                    if (!TextUtils.equals(strC, strC2)) {
                        long j10 = sharedPreferences.getLong(strC, 0L);
                        editorEdit.remove(strC);
                        if (j10 != 0) {
                            editorEdit.putLong(strC2, j10);
                        }
                    }
                }
            }
            d6.f22432h = jCurrentTimeMillis;
            editorEdit.putLong("feature_usage_last_report_time", jCurrentTimeMillis).apply();
        }
    }

    private final void c() {
        Z3.a0 a0Var = new Z3.a0(4, "Web view timed out.");
        C0429k c0429k = (C0429k) ((C0430l) this.f22557H).f8362i.getAndSet(null);
        if (c0429k == null) {
            return;
        }
        c0429k.a(a0Var.a());
    }

    /* JADX WARN: Code duplicated, block: B:10:0x008c  */
    private final void d() {
        RunnableC0589i1 runnableC0589i1 = (RunnableC0589i1) this.f22557H;
        C0595k1 c0595k1 = (C0595k1) runnableC0589i1.f11219I.f27216I;
        c0595k1.m();
        C0597l0 c0597l0 = (C0597l0) c0595k1.f10616G;
        p021c4.T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11046S.a("Application going to the background");
        p021c4.Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        z7.f11103Z.a(true);
        c0595k1.m();
        c0595k1.f11241J = true;
        C0584h c0584h = c0597l0.f11256M;
        if (!c0584h.C()) {
            long j8 = runnableC0589i1.f11218H;
            PN pn = c0595k1.f11243L;
            pn.b(j8, false, false);
            ((AbstractC0604p) pn.f15386c).a();
        }
        p021c4.T t8 = c0597l0.f11258O;
        C0597l0.k(t8);
        t8.f11045R.b(Long.valueOf(runnableC0589i1.f11217G), "Application backgrounded at: timestamp_millis");
        C0597l0 c0597l1 = (C0597l0) c0595k1.f10616G;
        p021c4.K0 k8 = c0597l1.f11265V;
        C0597l0.j(k8);
        k8.m();
        C0597l0 c0597l2 = (C0597l0) k8.f10616G;
        k8.n();
        C0574d1 c0574d1R = c0597l2.r();
        c0574d1R.m();
        c0574d1R.n();
        if (c0574d1R.A()) {
            p021c4.I1 i8 = ((C0597l0) c0574d1R.f10616G).f11261R;
            C0597l0.i(i8);
            if (i8.v0() >= 242600) {
                C0574d1 c0574d1R2 = c0597l2.r();
                c0574d1R2.m();
                c0574d1R2.n();
                c0574d1R2.E(new p021c4.Z0(c0574d1R2, c0574d1R2.B(true), 2));
            }
        } else {
            C0574d1 c0574d1R3 = c0597l2.r();
            c0574d1R3.m();
            c0574d1R3.n();
            c0574d1R3.E(new p021c4.Z0(c0574d1R3, c0574d1R3.B(true), 2));
        }
        if (c0584h.B(null, p021c4.E.f10751T0)) {
            p021c4.I1 i9 = c0597l0.f11261R;
            C0597l0.i(i9);
            Context context = c0597l0.f11250G;
            long jW = i9.d0(context.getPackageName(), c0584h.f11192I) ? 1000L : c0584h.w(context.getPackageName(), p021c4.E.f10720E);
            C0597l0.k(t8);
            t8.f11047T.b(Long.valueOf(jW), "[sgtm] Scheduling batch upload with minimum latency in millis");
            C0597l0.h(c0597l1.f11273d0);
            c0597l1.f11273d0.s(jW);
        }
    }

    private void e() {
        ((W4.c) this.f22557H).getClass();
        throw null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Date date;
        int i8 = 3;
        int i9 = 2;
        int i10 = 0;
        switch (this.f22556G) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                c();
                return;
            case 3:
                CategoriesActivity categoriesActivity = (CategoriesActivity) ((p004a3.i) this.f22557H).f8675H;
                String str = CategoriesActivity.THEME;
                categoriesActivity.getClass();
                C0538n c0538n = new C0538n(categoriesActivity);
                if (((Z3.b0) C0421c.a(categoriesActivity).f8300h.zza()).a()) {
                    c0538n.a(null);
                    return;
                }
                C0434p c0434p = (C0434p) C0421c.a(categoriesActivity).f8297e.zza();
                Z3.G.a();
                C0432n c0432n = new C0432n(categoriesActivity, c0538n);
                C0433o c0433o = new C0433o(c0538n, i10);
                c0434p.getClass();
                Z3.G.a();
                C0435q c0435q = (C0435q) c0434p.f8375c.get();
                if (c0435q == null) {
                    c0433o.a(new Z3.a0(3, "No available form can be built.").a());
                    return;
                }
                C0422d c0422d = (C0422d) c0434p.f8373a.zza();
                c0422d.f8304b = c0435q;
                ((C0430l) ((Z3.X) c0422d.a().f26413J).zza()).a(c0432n, c0433o);
                return;
            case 4:
                C0574d1 c0574d1 = ((ServiceConnectionC0571c1) this.f22557H).f11136c;
                C0574d1.G(c0574d1, new ComponentName(((C0597l0) c0574d1.f10616G).f11250G, "com.google.android.gms.measurement.AppMeasurementService"));
                return;
            case 5:
                C0574d1 c0574d2 = ((ServiceConnectionC0571c1) ((K3.V) this.f22557H).f4521I).f11136c;
                C0591j0 c0591j0 = ((C0597l0) c0574d2.f10616G).f11259P;
                C0597l0.k(c0591j0);
                c0591j0.x(new p021c4.W0(c0574d2, 2));
                return;
            case 6:
                d();
                return;
            case 7:
                C0597l0 c0597l0 = (C0597l0) this.f22557H;
                p021c4.I1 i11 = c0597l0.f11261R;
                C0597l0.i(i11);
                i11.m();
                if (i11.w0() != 1) {
                    p021c4.T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    t7.f11042O.a("registerTrigger called but app not eligible");
                    return;
                }
                p021c4.K0 k8 = c0597l0.f11265V;
                C0597l0.j(k8);
                k8.m();
                p021c4.F0 f8 = k8.f10918R;
                if (f8 != null) {
                    f8.a();
                }
                C0597l0.j(k8);
                new Thread(new p021c4.E0(k8, i8)).start();
                return;
            case 8:
                C0597l0 c0597l1 = (C0597l0) ((p039f.G) this.f22557H).f24904b;
                C0597l0.h(c0597l1.f11273d0);
                c0597l1.f11273d0.s(((Long) p021c4.E.f10718D.a(null)).longValue());
                return;
            case 9:
                e();
                return;
            case 10:
                Object obj = this.f22557H;
                try {
                    ((p007a6.a) obj).getClass();
                    ((p007a6.a) obj).getClass();
                    throw null;
                } catch (IOException unused) {
                    ((p007a6.a) obj).getClass();
                    throw null;
                }
            case 11:
                ((p007a6.f) this.f22557H).getClass();
                p007a6.f fVar = (p007a6.f) this.f22557H;
                fVar.getClass();
                E1.N n7 = fVar.f8706b;
                throw null;
            case 12:
                ((S6.a) this.f22557H).invalidate();
                return;
            case 13:
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEEE, d MMM yyyy");
                SimpleDateFormat simpleDateFormat2 = com.google.protobuf.U2.z("ORT_TIME_FORMAT", "12", "24") ? new SimpleDateFormat("HH:mm:ss") : new SimpleDateFormat("hh:mm:ss aaa");
                p171w0.j jVar = (p171w0.j) this.f22557H;
                ((CategoriesActivity) jVar.f30911H).f28429t0.setText(simpleDateFormat.format(new Date()));
                ((CategoriesActivity) jVar.f30911H).f28430u0.setText(simpleDateFormat2.format(new Date()));
                return;
            case 14:
                ((C0544q) this.f22557H).f10385b.finishAffinity();
                return;
            case 15:
                SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("EEEE, d MMM yyyy");
                p171w0.j jVar2 = (p171w0.j) this.f22557H;
                SimpleDateFormat simpleDateFormat4 = ((ChannelListActivity) jVar2.f30911H).f28474k0.equals("24") ? new SimpleDateFormat("HH:mm:ss") : new SimpleDateFormat("hh:mm:ss aaa");
                ((ChannelListActivity) jVar2.f30911H).f28461X.setText(simpleDateFormat3.format(new Date()));
                ((ChannelListActivity) jVar2.f30911H).f28462Y.setText(simpleDateFormat4.format(new Date()));
                return;
            case 16:
                RunnableC0506c0 runnableC0506c0 = (RunnableC0506c0) this.f22557H;
                if (runnableC0506c0.f10276H.f10464Z0.size() != 0) {
                    C0550t0 c0550t0 = runnableC0506c0.f10276H;
                    c0550t0.l();
                    runnableC0506c0.f10276H.f10465a1.setAdapter(new C0524i0(c0550t0, runnableC0506c0.f10276H.f10464Z0, 0));
                    runnableC0506c0.f10276H.f10465a1.setFocusable(false);
                    runnableC0506c0.f10276H.f10465a1.j(new C0314m(this, 1));
                }
                C0550t0 c0550t1 = runnableC0506c0.f10276H;
                c0550t1.f10444N0.setVisibility(8);
                c0550t1.f10446O0.setVisibility(8);
                return;
            case 17:
                RunnableC0439v runnableC0439v = (RunnableC0439v) this.f22557H;
                ((b7.I0) runnableC0439v.f8391J).f10046N0 = new JSONArray((Collection) runnableC0439v.f8390I);
                b7.I0 i12 = (b7.I0) runnableC0439v.f8391J;
                i12.f10076r1 = i12.f10046N0.toString();
                return;
            case 18:
                RunnableC0439v runnableC0439v2 = (RunnableC0439v) this.f22557H;
                if (((b7.I0) runnableC0439v2.f8391J).f10039G0.size() == 0) {
                    ((b7.I0) runnableC0439v2.f8391J).V();
                    return;
                }
                if (((JSONArray[]) runnableC0439v2.f8390I)[0].length() > 0) {
                    ((b7.I0) runnableC0439v2.f8391J).f10045M0 = new JSONArray();
                    b7.I0 i13 = (b7.I0) runnableC0439v2.f8391J;
                    i13.f10045M0 = ((JSONArray[]) runnableC0439v2.f8390I)[0];
                    ArrayList arrayList = i13.f10039G0;
                    i13.l();
                    i13.f10070l1.setAdapter(new b7.E0(i13, arrayList));
                    i13.f10070l1.setFocusable(false);
                    i13.f10070l1.j(new C0314m(i13, 2));
                    return;
                }
                ((b7.I0) runnableC0439v2.f8391J).V();
                if (((b7.I0) runnableC0439v2.f8391J).f10074p1.equals("search")) {
                    Methods.l(((b7.I0) runnableC0439v2.f8391J).l(), "Your search found 0 Series!");
                    return;
                }
                if (((b7.I0) runnableC0439v2.f8391J).f10074p1.equals("fav")) {
                    Methods.l(((b7.I0) runnableC0439v2.f8391J).l(), "You don't have any Favorite Series!");
                    return;
                } else if (((b7.I0) runnableC0439v2.f8391J).f10074p1.equals("continue")) {
                    Methods.l(((b7.I0) runnableC0439v2.f8391J).l(), "You don't have any Series to continue watching!");
                    return;
                } else {
                    if (((b7.I0) runnableC0439v2.f8391J).f10074p1.equals("all")) {
                        Methods.l(((b7.I0) runnableC0439v2.f8391J).l(), "Series not found!");
                        return;
                    }
                    return;
                }
            case 19:
                b7.M0 m7 = (b7.M0) this.f22557H;
                m7.f10135W0.postDelayed(m7.f10136X0, 1000L);
                SimpleDateFormat simpleDateFormat5 = new SimpleDateFormat("EEEE, d MMM yyyy");
                SimpleDateFormat simpleDateFormat6 = m7.f10134V0.equals("24") ? new SimpleDateFormat("HH:mm:ss") : new SimpleDateFormat("hh:mm:ss aaa");
                m7.f10132T0.setText(simpleDateFormat5.format(new Date()));
                m7.f10133U0.setText(simpleDateFormat6.format(new Date()));
                return;
            case 20:
                RunnableC0439v runnableC0439v3 = (RunnableC0439v) this.f22557H;
                ((b7.S0) runnableC0439v3.f8391J).f10221q1 = new JSONArray((Collection) ((ArrayList[]) runnableC0439v3.f8390I)[0]);
                b7.S0 s7 = (b7.S0) runnableC0439v3.f8391J;
                s7.f10215k1 = s7.f10221q1.toString();
                return;
            case 21:
                b7.N0 n8 = (b7.N0) this.f22557H;
                if (n8.f10148G[0].size() == 0) {
                    b7.S0 s8 = n8.f10156O;
                    int i14 = b7.S0.f10180z1;
                    s8.Y();
                    return;
                }
                if (n8.f10151J[0].length() > 0) {
                    n8.f10156O.f10220p1 = new JSONArray();
                    b7.S0 s9 = n8.f10156O;
                    s9.f10220p1 = n8.f10151J[0];
                    ArrayList arrayList2 = n8.f10148G[0];
                    s9.l();
                    s9.f10204Z0.setAdapter(new C0152q(s9, arrayList2, 2));
                    s9.f10204Z0.setFocusable(false);
                    s9.f10204Z0.j(new C0314m(s9, 4));
                    return;
                }
                b7.S0 s10 = n8.f10156O;
                int i15 = b7.S0.f10180z1;
                s10.Y();
                if (n8.f10156O.f10209e1.equals("search")) {
                    Methods.l(n8.f10156O.l(), "Your search found 0 VODs!");
                    return;
                }
                if (n8.f10156O.f10209e1.equals("fav")) {
                    Methods.l(n8.f10156O.l(), "You don't have any Favorite VODs!");
                    return;
                } else if (n8.f10156O.f10209e1.equals("cont")) {
                    Methods.l(n8.f10156O.l(), "You don't have any VODs to continue watching!");
                    return;
                } else {
                    if (n8.f10156O.f10209e1.equals("all")) {
                        Methods.l(n8.f10156O.l(), "VODs not found!");
                        return;
                    }
                    return;
                }
            case 22:
                Log.d("XCIPTV_TAG", "Loding movie info");
                boolean zEquals = z4.q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes");
                Object obj2 = this.f22557H;
                if (zEquals) {
                    new p083k3.j((b7.S0) obj2).execute(new Void[0]);
                    return;
                } else if (!com.google.protobuf.U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
                    new p083k3.j((b7.S0) obj2).execute(new Void[0]);
                    return;
                } else {
                    int i16 = b7.S0.f10180z1;
                    ((b7.S0) obj2).V();
                    return;
                }
            case 23:
                SplashActivity.a((SplashActivity) ((X) this.f22557H).f22557H);
                return;
            case 24:
                new Handler().postDelayed(new X(this, 23), 2000L);
                return;
            case 25:
                d7.a aVar = (d7.a) this.f22557H;
                if (aVar.f24663H.f29278K.size() > 1) {
                    if (aVar.f24663H.f29282O.v0(z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_live").equals("yes")) {
                        EPGActivityXMLTV.f29268u0 = (String) ((HashMap) aVar.f24663H.f29278K.get(0)).get("category_name");
                        EPGActivityXMLTV.f29269v0 = (String) ((HashMap) aVar.f24663H.f29278K.get(0)).get("category_id");
                        aVar.f24663H.f29286S = 0;
                    } else {
                        EPGActivityXMLTV.f29268u0 = (String) ((HashMap) aVar.f24663H.f29278K.get(1)).get("category_name");
                        EPGActivityXMLTV.f29269v0 = (String) ((HashMap) aVar.f24663H.f29278K.get(1)).get("category_id");
                        aVar.f24663H.f29286S = 1;
                    }
                }
                z4.q0.q().g("ORT_CAT_NAME", EPGActivityXMLTV.f29268u0);
                EPGActivityXMLTV ePGActivityXMLTV = aVar.f24663H;
                ePGActivityXMLTV.getClass();
                Log.d("XCIPTV_TAG", "--------------SetupCategoriesButtons----------------");
                ePGActivityXMLTV.f29293Z.setBackgroundColor(0);
                ePGActivityXMLTV.f29293Z.removeAllViews();
                int i17 = EPGActivityXMLTV.f29262o0 * 10;
                int i18 = 0;
                while (true) {
                    int i19 = 24;
                    int i20 = 17;
                    int i21 = -2;
                    if (i18 >= ePGActivityXMLTV.f29278K.size()) {
                        EPGActivityXMLTV ePGActivityXMLTV2 = aVar.f24663H;
                        ePGActivityXMLTV2.getClass();
                        p171w0.j jVar3 = new p171w0.j(ePGActivityXMLTV2, 6);
                        ePGActivityXMLTV2.f29296c0 = jVar3;
                        jVar3.start();
                        EPGActivityXMLTV ePGActivityXMLTV3 = aVar.f24663H;
                        ePGActivityXMLTV3.f29291X.removeAllViews();
                        try {
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams.setMargins(EPGActivityXMLTV.f29265r0 + EPGActivityXMLTV.f29262o0, 0, 0, 0);
                            ePGActivityXMLTV3.f29288U.setLayoutParams(layoutParams);
                            ePGActivityXMLTV3.f29288U.setHorizontalScrollBarEnabled(false);
                            Date dateB = ePGActivityXMLTV3.f29280M.b(Methods.G());
                            EPGActivityXMLTV.f29259l0 = 24;
                            if (ePGActivityXMLTV3.f29275H.contains("epg_load_day")) {
                                EPGActivityXMLTV.f29259l0 = Integer.parseInt(ePGActivityXMLTV3.f29275H.getString("epg_load_day", null));
                            }
                            C0470b.a("E HH:mm");
                            C0470b c0470bA = z4.q0.q().c("ORT_TIME_FORMAT", "12").equals("24") ? C0470b.a("E HH:mm") : C0470b.a("E hh:mm a");
                            Calendar calendar = Calendar.getInstance();
                            calendar.setTime(dateB);
                            EPGActivityXMLTV ePGActivityXMLTV4 = ePGActivityXMLTV3.f29274G;
                            TextView textView = new TextView(ePGActivityXMLTV4);
                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams2.width = EPGActivityXMLTV.f29265r0;
                            layoutParams2.setMargins(0, 0, 0, 0);
                            textView.setPadding(0, 0, 0, 5);
                            textView.setLayoutParams(layoutParams2);
                            textView.setGravity(17);
                            textView.setText("CHANNEL");
                            textView.setTextColor(Color.parseColor("#ffffff"));
                            textView.setBackgroundColor(0);
                            textView.setTypeface(F.n.b(ePGActivityXMLTV4, R.font.quicksand_regular));
                            ePGActivityXMLTV3.f29290W.addView(textView);
                            int i22 = 0;
                            int i23 = 0;
                            while (i22 <= EPGActivityXMLTV.f29259l0) {
                                TextView textView2 = new TextView(ePGActivityXMLTV4);
                                if (i22 == 0) {
                                    calendar.add(10, 0);
                                } else {
                                    calendar.add(10, 1);
                                }
                                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i21, i21);
                                int i24 = EPGActivityXMLTV.f29265r0;
                                int i25 = EPGActivityXMLTV.f29262o0;
                                layoutParams3.width = i24 - (i25 * 2);
                                layoutParams3.setMargins(i23 + i25, 0, 0, 0);
                                textView2.setGravity(i20);
                                textView2.setLayoutParams(layoutParams3);
                                textView2.setText(" " + c0470bA.f8489G.c(calendar.getTime()).toUpperCase());
                                textView2.setTypeface(F.n.b(ePGActivityXMLTV4, R.font.quicksand_regular));
                                textView.setBackgroundColor(0);
                                textView2.setTextColor(Color.parseColor("#ffffff"));
                                textView2.setPadding(0, 0, 0, 5);
                                ePGActivityXMLTV3.f29291X.addView(textView2);
                                i23 += EPGActivityXMLTV.f29265r0;
                                ePGActivityXMLTV3.f29280M.f8489G.c(calendar.getTime());
                                i22++;
                                i20 = 17;
                                i21 = -2;
                                break;
                            }
                        } catch (ParseException unused2) {
                        }
                        aVar.f24663H.b();
                        return;
                    }
                    EPGActivityXMLTV ePGActivityXMLTV5 = ePGActivityXMLTV.f29274G;
                    Button button = new Button(ePGActivityXMLTV5);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams4.setMargins(0, 0, i17, 0);
                    layoutParams4.height = EPGActivityXMLTV.f29267t0;
                    button.setLayoutParams(layoutParams4);
                    button.setTextSize(EPGActivityXMLTV.f29264q0);
                    button.setPadding(i17, 0, i17, EPGActivityXMLTV.f29262o0 * 2);
                    button.setBackgroundColor(0);
                    button.setGravity(17);
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        button.setText("CATEGORY " + String.valueOf(i18));
                    } else {
                        button.setText((CharSequence) ((HashMap) ePGActivityXMLTV.f29278K.get(i18)).get("category_name"));
                    }
                    button.setTag(((HashMap) ePGActivityXMLTV.f29278K.get(i18)).get("category_id"));
                    button.setTypeface(F.n.b(ePGActivityXMLTV5, R.font.quicksand_regular));
                    ePGActivityXMLTV.f29293Z.addView(button);
                    if (i18 == 0 && ePGActivityXMLTV.f29286S == 0) {
                        button.setTypeface(F.n.b(ePGActivityXMLTV5, R.font.quicksand_bold));
                    }
                    if (i18 == 1 && ePGActivityXMLTV.f29286S == 1) {
                        button.setTypeface(F.n.b(ePGActivityXMLTV5, R.font.quicksand_bold));
                    }
                    button.setOnClickListener(new ViewOnClickListenerC2988c(ePGActivityXMLTV, i19));
                    button.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(11, ePGActivityXMLTV, button));
                    i18++;
                }
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                TextView textView3 = ((EPGActivityXMLTV) ((p171w0.j) this.f22557H).f30911H).f29289V;
                SharedPreferences sharedPreferences = Methods.f29416a;
                textView3.setText((com.google.protobuf.U2.z("ORT_TIME_FORMAT", "12", "24") ? new SimpleDateFormat("HH:mm") : new SimpleDateFormat("hh:mm a")).format(new Date()));
                return;
            case 27:
                if (EPGActivityXMLTV.f29253f0.isShowing()) {
                    EPGActivityXMLTV.f29253f0.dismiss();
                    return;
                }
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                OTRServices oTRServices = (OTRServices) this.f22557H;
                int i26 = OTRServices.f29311W;
                oTRServices.getClass();
                Thread thread = new Thread(new j7.a(oTRServices, i10));
                oTRServices.f29326U = thread;
                thread.start();
                oTRServices.f29315J.postDelayed(oTRServices.f29316K, oTRServices.f29317L);
                return;
            default:
                RecordingServices recordingServices = (RecordingServices) this.f22557H;
                int i27 = RecordingServices.f29328T;
                recordingServices.getClass();
                Log.d("XCIPTV_TAG", "RecordingServices  Network Checking....");
                if (!Methods.Q(recordingServices.f29329G)) {
                    Log.d("XCIPTV_TAG", "Background recording Service Schedule Job aborted. No internet");
                } else if (!z4.q0.q().a("ORT_isRecordingRunning", false)) {
                    recordingServices.f29331I = new c7.c(recordingServices, 2);
                    recordingServices.f29332J = recordingServices.getSharedPreferences("pe.hf.black20", 0);
                    recordingServices.f29333K.clear();
                    recordingServices.f29333K = recordingServices.f29331I.b0("Scheduled");
                    recordingServices.f29334L = new ArrayList();
                    int i28 = 0;
                    while (i28 < recordingServices.f29333K.size()) {
                        HashMap map = new HashMap();
                        map.put("id", ((h7.f) recordingServices.f29333K.get(i28)).f25453a);
                        map.put("title", ((h7.f) recordingServices.f29333K.get(i28)).f25454b);
                        map.put("path", ((h7.f) recordingServices.f29333K.get(i28)).f25455c);
                        map.put("stream", ((h7.f) recordingServices.f29333K.get(i28)).f25456d);
                        map.put("status", ((h7.f) recordingServices.f29333K.get(i28)).f25457e);
                        map.put("length", ((h7.f) recordingServices.f29333K.get(i28)).f25458f);
                        map.put("date", ((h7.f) recordingServices.f29333K.get(i28)).f25459g);
                        if (Methods.H().equals(((h7.f) recordingServices.f29333K.get(i28)).f25459g)) {
                            recordingServices.f29339Q = ((h7.f) recordingServices.f29333K.get(i28)).f25453a;
                            String str2 = ((h7.f) recordingServices.f29333K.get(i28)).f25454b;
                            recordingServices.f29341S = ((h7.f) recordingServices.f29333K.get(i28)).f25455c;
                            recordingServices.f29340R = ((h7.f) recordingServices.f29333K.get(i28)).f25456d;
                            ((h7.f) recordingServices.f29333K.get(i28)).getClass();
                            ((h7.f) recordingServices.f29333K.get(i28)).getClass();
                            int i29 = Integer.parseInt(((h7.f) recordingServices.f29333K.get(i28)).f25458f);
                            SimpleDateFormat simpleDateFormat7 = new SimpleDateFormat("MMM dd, yyyy HH:mm");
                            try {
                                date = simpleDateFormat7.parse(Methods.H());
                            } catch (ParseException unused3) {
                                date = null;
                            }
                            Calendar calendar2 = Calendar.getInstance();
                            calendar2.setTime(date);
                            calendar2.add(12, i29);
                            recordingServices.f29335M = simpleDateFormat7.format(calendar2.getTime());
                            z4.q0.q().e("ORT_isRecordingRunning", true);
                            String str3 = recordingServices.f29339Q;
                            String str4 = recordingServices.f29340R;
                            String str5 = recordingServices.f29341S;
                            recordingServices.f29331I = new c7.c(recordingServices, i9);
                            recordingServices.f29332J = recordingServices.getSharedPreferences("pe.hf.black20", 0);
                            String strReplaceAll = str4.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.add("--live-caching==300");
                            arrayList3.add("--file-caching=300");
                            arrayList3.add("--input-fast-seek");
                            LibVLC libVLC = new LibVLC(recordingServices, arrayList3);
                            libVLC.setUserAgent(recordingServices.f29332J.getString("agent", null), recordingServices.f29332J.getString("agent", null));
                            recordingServices.f29330H = new MediaPlayer(libVLC);
                            Media media = new Media(libVLC, Uri.parse(strReplaceAll));
                            media.addOption(":network-caching=300");
                            media.addOption(":no-sout-all");
                            media.addOption(":sout-keep");
                            recordingServices.f29331I.d0("Recording Now", str3);
                            media.addOption(":sout=#std{access=file,mux=mp4,dst=" + str5 + "}");
                            recordingServices.f29330H.setMedia(media);
                            recordingServices.f29330H.setVolume(95);
                            recordingServices.f29330H.play();
                            break;
                        }
                        recordingServices.f29334L.add(map);
                        i28++;
                        i9 = 2;
                    }
                } else if (Methods.H().equals(recordingServices.f29335M)) {
                    recordingServices.f29331I.d0("Recorded", recordingServices.f29339Q);
                    recordingServices.a();
                }
                recordingServices.f29336N.postDelayed(recordingServices.f29337O, recordingServices.f29338P);
                return;
        }
    }
}
