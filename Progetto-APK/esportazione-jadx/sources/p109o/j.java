package p109o;

import C0.C0084i;
import D0.D;
import D3.C0159c;
import J.b;
import R2.a;
import R2.d;
import U2.h;
import U2.i;
import U2.l;
import U2.p;
import U2.q;
import Y.C0395g;
import Y.d0;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC1656m8;
import com.google.android.gms.internal.ads.C1212de;
import com.google.android.gms.internal.ads.InterfaceC0974Wd;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.Ow;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Tw;
import com.google.android.gms.internal.cast.A0;
import com.google.android.gms.internal.cast.B0;
import com.google.android.gms.internal.cast.C0;
import com.google.android.gms.internal.cast.C2422a;
import com.google.android.gms.internal.cast.C2426b;
import com.google.android.gms.internal.cast.C2452h1;
import com.google.android.gms.internal.cast.C2463k0;
import com.google.android.gms.internal.cast.C2467l0;
import com.google.android.gms.internal.cast.C2490r0;
import com.google.android.gms.internal.cast.C2494s0;
import com.google.android.gms.internal.cast.C2498t0;
import com.google.android.gms.internal.cast.C2502u0;
import com.google.android.gms.internal.cast.C2506v0;
import com.google.android.gms.internal.cast.C2510w0;
import com.google.android.gms.internal.cast.C2514x0;
import com.google.android.gms.internal.cast.C2518y0;
import com.google.android.gms.internal.cast.C2522z0;
import com.google.android.gms.internal.cast.J0;
import com.google.android.gms.internal.cast.K0;
import com.google.android.gms.internal.cast.N;
import com.google.android.gms.internal.cast.Z2;
import com.google.android.gms.internal.cast.a3;
import com.google.android.gms.internal.pal.InterfaceC2784o3;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.json.JSONException;
import org.json.JSONObject;
import p086l.C3061x;
import p090l3.C3099q;
import p096m2.u;
import p167v3.r;

/* JADX INFO: loaded from: classes.dex */
public final class j implements b, InterfaceC1195dC, InterfaceC2784o3 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object f27592G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f27593H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27594I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f27595J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f27596K;

    public j(int i8) {
        if (i8 != 8) {
            return;
        }
        this.f27592G = null;
        this.f27593H = null;
        this.f27594I = null;
        this.f27595J = null;
        this.f27596K = null;
    }

    public static void c(j jVar, a3 a3Var) {
        int i8 = a3Var.f22631e;
        if (i8 == 2 && ((Z2) jVar.f27595J) != null) {
            jVar.f();
        }
        if (i8 == 2) {
            jVar.f27595J = new Z2((N) jVar.f27592G, (String) jVar.f27594I);
        } else {
            jVar.f27595J = jVar.d();
        }
        Z2 z7 = (Z2) jVar.f27595J;
        c.h(z7);
        a3Var.f22630d = z7.f22607h;
        z7.f22601b.add(a3Var);
    }

    public final void a(String str) {
        Bundle bundle = new Bundle();
        PendingIntent pendingIntent = (PendingIntent) this.f27596K;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
        synchronized (this.f27592G) {
            try {
                try {
                    ((ICustomTabsService) this.f27593H).postMessage((ICustomTabsCallback) this.f27594I, str, bundle);
                } catch (RemoteException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(a aVar) {
        C0084i c0084i = new C0084i(11);
        p pVar = (p) this.f27596K;
        j jVar = new j(2);
        i iVar = (i) this.f27592G;
        if (iVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        jVar.f27592G = iVar;
        jVar.f27594I = aVar;
        String str = (String) this.f27593H;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        jVar.f27593H = str;
        d dVar = (d) this.f27595J;
        if (dVar == null) {
            throw new NullPointerException("Null transformer");
        }
        jVar.f27595J = dVar;
        R2.b bVar = (R2.b) this.f27594I;
        if (bVar == null) {
            throw new NullPointerException("Null encoding");
        }
        jVar.f27596K = bVar;
        if (!HttpUrl.FRAGMENT_ENCODE_SET.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(HttpUrl.FRAGMENT_ENCODE_SET));
        }
        i iVar2 = (i) jVar.f27592G;
        String str2 = (String) jVar.f27593H;
        a aVar2 = (a) jVar.f27594I;
        d dVar2 = (d) jVar.f27595J;
        R2.b bVar2 = (R2.b) jVar.f27596K;
        q qVar = (q) pVar;
        qVar.getClass();
        R2.c cVar = aVar2.f6283c;
        iVar2.getClass();
        u uVarA = i.a();
        uVarA.R(iVar2.f6952a);
        uVarA.S(cVar);
        uVarA.f27279I = iVar2.f6953b;
        i iVarJ = uVarA.j();
        C3061x c3061x = new C3061x(3);
        c3061x.f26415L = new HashMap();
        c3061x.f26413J = Long.valueOf(((p028d3.c) qVar.f6969a).a());
        c3061x.f26414K = Long.valueOf(((p028d3.c) qVar.f6970b).a());
        if (str2 == null) {
            throw new NullPointerException("Null transportName");
        }
        c3061x.f26410G = str2;
        c3061x.m(new l(bVar2, (byte[]) dVar2.apply(aVar2.f6282b)));
        c3061x.f26411H = aVar2.f6281a;
        h hVarE = c3061x.e();
        Z2.a aVar3 = (Z2.a) qVar.f6971c;
        aVar3.getClass();
        aVar3.f8227b.execute(new D(aVar3, iVarJ, c0084i, hVarE, 1));
    }

    public final Z2 d() {
        if (((Z2) this.f27595J) == null) {
            Z2 z7 = new Z2((N) this.f27592G, (String) this.f27594I);
            this.f27595J = z7;
            z7.b(1);
        }
        return (Z2) this.f27595J;
    }

    @Override // J.b
    public final void e() {
        ((View) this.f27592G).clearAnimation();
        ((ViewGroup) this.f27593H).endViewTransition((View) this.f27592G);
        ((C0395g) this.f27594I).c();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animation from operation " + ((d0) this.f27595J) + " has been cancelled.");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:126:0x0307  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void f() {
        long jLongValue;
        C2490r0 c2490r0;
        byte b8;
        int i8;
        Z2 z7 = (Z2) this.f27595J;
        if (z7 != null) {
            C0159c c0159c = z7.f22609j;
            if (c0159c != null) {
                c0159c.f2378l = null;
                z7.f22609j = null;
            }
            C2490r0 c2490r0M = C2494s0.m();
            c2490r0M.d();
            C2494s0.t((C2494s0) c2490r0M.f22745H, z7.f22608i);
            String str = z7.f22611l;
            if (str != null) {
                c2490r0M.d();
                C2494s0.y((C2494s0) c2490r0M.f22745H, str);
            }
            String str2 = z7.f22612m;
            if (str2 != null) {
                c2490r0M.d();
                C2494s0.u((C2494s0) c2490r0M.f22745H, str2);
            }
            C2463k0 c2463k0L = C2467l0.l();
            String str3 = Z2.f22598o;
            c2463k0L.d();
            C2467l0.n((C2467l0) c2463k0L.f22745H, str3);
            c2463k0L.d();
            C2467l0.m((C2467l0) c2463k0L.f22745H, z7.f22606g);
            C2467l0 c2467l0 = (C2467l0) c2463k0L.b();
            c2490r0M.d();
            C2494s0.r((C2494s0) c2490r0M.f22745H, c2467l0);
            C2514x0 c2514x0L = C2518y0.l();
            Object objZza = z7.f22600a.zza();
            if (objZza != null) {
                J0 j0L = K0.l();
                j0L.d();
                K0.m((K0) j0L.f22745H, (String) objZza);
                K0 k8 = (K0) j0L.b();
                c2514x0L.d();
                C2518y0.m((C2518y0) c2514x0L.f22745H, k8);
            }
            String str4 = z7.f22610k;
            if (str4 != null) {
                try {
                    String strReplace = str4.replace("-", HttpUrl.FRAGMENT_ENCODE_SET);
                    jLongValue = new BigInteger(strReplace.substring(0, Math.min(16, strReplace.length())), 16).longValue();
                } catch (NumberFormatException e8) {
                    Object[] objArr = {str4};
                    H3.b bVar = Z2.f22597n;
                    Log.w(bVar.f3679a, bVar.c("receiverSessionId %s is not valid for hash", objArr), e8);
                    jLongValue = 0;
                }
                c2514x0L.d();
                C2518y0.n((C2518y0) c2514x0L.f22745H, jLongValue);
            }
            List<a3> list = z7.f22601b;
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (a3 a3Var : list) {
                    a3Var.getClass();
                    C2506v0 c2506v0L = C2510w0.l();
                    c2506v0L.d();
                    C2510w0.p((C2510w0) c2506v0L.f22745H, a3Var.f22631e);
                    int i9 = (int) (a3Var.f22628b - a3Var.f22630d);
                    c2506v0L.d();
                    C2510w0.m((C2510w0) c2506v0L.f22745H, i9);
                    Integer num = a3Var.f22627a;
                    if (num != null) {
                        int iIntValue = num.intValue();
                        c2506v0L.d();
                        C2510w0.n((C2510w0) c2506v0L.f22745H, iIntValue);
                    }
                    Boolean bool = a3Var.f22629c;
                    if (bool != null) {
                        boolean zBooleanValue = bool.booleanValue();
                        c2506v0L.d();
                        C2510w0.o((C2510w0) c2506v0L.f22745H, zBooleanValue);
                    }
                    arrayList.add((C2510w0) c2506v0L.b());
                }
                c2514x0L.d();
                C2518y0.o((C2518y0) c2514x0L.f22745H, arrayList);
            }
            List<C2422a> list2 = z7.f22602c;
            if (list2.isEmpty()) {
                c2490r0 = c2490r0M;
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (C2422a c2422a : list2) {
                    c2422a.getClass();
                    B0 b0L = C0.l();
                    C2490r0 c2490r1 = c2490r0M;
                    int i10 = (int) (c2422a.f22614b - c2422a.f22615c);
                    b0L.d();
                    C0.m((C0) b0L.f22745H, i10);
                    int i11 = c2422a.f22613a;
                    if (i11 == 1) {
                        i8 = 2;
                    } else if (i11 != 2) {
                        i8 = i11 != 3 ? 1 : 4;
                    } else {
                        i8 = 3;
                    }
                    b0L.d();
                    C0.n((C0) b0L.f22745H, i8);
                    arrayList2.add((C0) b0L.b());
                    c2490r0M = c2490r1;
                }
                c2490r0 = c2490r0M;
                c2514x0L.d();
                C2518y0.q((C2518y0) c2514x0L.f22745H, arrayList2);
            }
            List<C2452h1> list3 = z7.f22603d;
            if (!list3.isEmpty()) {
                ArrayList arrayList3 = new ArrayList();
                for (C2452h1 c2452h1 : list3) {
                    c2452h1.getClass();
                    C2498t0 c2498t0L = C2502u0.l();
                    String str5 = c2452h1.f22738a;
                    int i12 = 11;
                    switch (str5.hashCode()) {
                        case -1189611734:
                            if (str5.equals("queueInsert")) {
                                b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -1109843021:
                            if (str5.equals("launch")) {
                                b8 = 20;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -940430091:
                            if (str5.equals("queueRemove")) {
                                b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -936597225:
                            if (str5.equals("queueFetchItems")) {
                                b8 = 17;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -930425472:
                            if (str5.equals("setPlaybackDevices")) {
                                b8 = 21;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -921113364:
                            if (str5.equals("volume-mute")) {
                                b8 = 7;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -900560382:
                            if (str5.equals("skipAd")) {
                                b8 = 19;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -892481550:
                            if (str5.equals("status")) {
                                b8 = 8;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -844665542:
                            if (str5.equals("queueUpdate")) {
                                b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -810883302:
                            if (str5.equals("volume")) {
                                b8 = 5;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case -402284771:
                            if (str5.equals("setPlaybackRate")) {
                                b8 = 18;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 3327206:
                            if (str5.equals("load")) {
                                b8 = 0;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 3363353:
                            if (str5.equals("mute")) {
                                b8 = 6;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 3443508:
                            if (str5.equals("play")) {
                                b8 = 1;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 3526264:
                            if (str5.equals("seek")) {
                                b8 = 4;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 3540994:
                            if (str5.equals("stop")) {
                                b8 = 3;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 106440182:
                            if (str5.equals("pause")) {
                                b8 = 2;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 525402049:
                            if (str5.equals("queueFetchItemRange")) {
                                b8 = 16;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 913357482:
                            if (str5.equals("queueReorder")) {
                                b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 1148867366:
                            if (str5.equals("trackStyle")) {
                                b8 = 10;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 1451542318:
                            if (str5.equals("activeTracks")) {
                                b8 = 9;
                            } else {
                                b8 = -1;
                            }
                            break;
                        case 1873161788:
                            if (str5.equals("queueFetchItemIds")) {
                                b8 = 15;
                            } else {
                                b8 = -1;
                            }
                            break;
                        default:
                            b8 = -1;
                            break;
                    }
                    switch (b8) {
                        case 0:
                            i12 = 2;
                            break;
                        case 1:
                            i12 = 3;
                            break;
                        case 2:
                            i12 = 4;
                            break;
                        case 3:
                            i12 = 5;
                            break;
                        case 4:
                            i12 = 6;
                            break;
                        case 5:
                            i12 = 7;
                            break;
                        case 6:
                            i12 = 8;
                            break;
                        case 7:
                            i12 = 9;
                            break;
                        case 8:
                            i12 = 10;
                            break;
                        case 9:
                            break;
                        case 10:
                            i12 = 12;
                            break;
                        case 11:
                            i12 = 13;
                            break;
                        case 12:
                            i12 = 14;
                            break;
                        case 13:
                            i12 = 15;
                            break;
                        case 14:
                            i12 = 16;
                            break;
                        case 15:
                            i12 = 17;
                            break;
                        case 16:
                            i12 = 18;
                            break;
                        case 17:
                            i12 = 19;
                            break;
                        case 18:
                            i12 = 20;
                            break;
                        case 19:
                            i12 = 21;
                            break;
                        case 20:
                            i12 = 22;
                            break;
                        case 21:
                            i12 = 23;
                            break;
                        default:
                            i12 = 1;
                            break;
                    }
                    c2498t0L.d();
                    C2502u0.q((C2502u0) c2498t0L.f22745H, i12);
                    int i13 = (int) c2452h1.f22739b;
                    c2498t0L.d();
                    C2502u0.m((C2502u0) c2498t0L.f22745H, i13);
                    c2498t0L.d();
                    C2502u0.n((C2502u0) c2498t0L.f22745H, c2452h1.f22740c);
                    int i14 = (int) (c2452h1.f22741d - c2452h1.f22743f);
                    c2498t0L.d();
                    C2502u0.o((C2502u0) c2498t0L.f22745H, i14);
                    int i15 = (int) (c2452h1.f22742e - c2452h1.f22743f);
                    c2498t0L.d();
                    C2502u0.p((C2502u0) c2498t0L.f22745H, i15);
                    arrayList3.add((C2502u0) c2498t0L.b());
                }
                c2514x0L.d();
                C2518y0.p((C2518y0) c2514x0L.f22745H, arrayList3);
            }
            Map map = z7.f22604e;
            if (!map.isEmpty()) {
                ArrayList arrayList4 = new ArrayList();
                for (C2426b c2426b : map.values()) {
                    c2426b.getClass();
                    C2522z0 c2522z0L = A0.l();
                    c2522z0L.d();
                    A0.p((A0) c2522z0L.f22745H, c2426b.f22636e);
                    int i16 = c2426b.f22635d.get();
                    c2522z0L.d();
                    A0.m((A0) c2522z0L.f22745H, i16);
                    int i17 = (int) (c2426b.f22632a - c2426b.f22634c);
                    c2522z0L.d();
                    A0.n((A0) c2522z0L.f22745H, i17);
                    int i18 = (int) (c2426b.f22633b - c2426b.f22634c);
                    c2522z0L.d();
                    A0.o((A0) c2522z0L.f22745H, i18);
                    arrayList4.add((A0) c2522z0L.b());
                }
                c2514x0L.d();
                C2518y0.r((C2518y0) c2514x0L.f22745H, arrayList4);
            }
            C2518y0 c2518y0 = (C2518y0) c2514x0L.b();
            c2490r0.d();
            C2490r0 c2490r2 = c2490r0;
            C2494s0.q((C2494s0) c2490r2.f22745H, c2518y0);
            z7.f22605f.a((C2494s0) c2490r2.b(), 233);
            this.f27595J = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        String message = th.getMessage();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15794b7)).booleanValue()) {
            p083k3.l.f25980A.f25987g.h("SignalGeneratorImpl.generateSignals", th);
        } else {
            p083k3.l.f25980A.f25987g.i("SignalGeneratorImpl.generateSignals", th);
        }
        Tw twI3 = p167v3.j.I3((D4.b) this.f27592G, (C1212de) this.f27593H);
        if (((Boolean) AbstractC1656m8.f19915e.l()).booleanValue() && twI3 != null) {
            Ow ow = (Ow) this.f27595J;
            ow.d(th);
            ow.e(false);
            twI3.a(ow);
            twI3.h();
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                message = "Internal error. " + message;
            }
            ((InterfaceC0974Wd) this.f27594I).m(message);
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        r rVar = (r) obj;
        Tw twI3 = p167v3.j.I3((D4.b) this.f27592G, (C1212de) this.f27593H);
        ((p167v3.j) this.f27596K).f30651i0.set(true);
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15754W6)).booleanValue()) {
            try {
                ((InterfaceC0974Wd) this.f27594I).m("QueryInfo generation has been disabled.");
            } catch (RemoteException e8) {
                p120p3.h.d("QueryInfo generation has been disabled.".concat(e8.toString()));
            }
            if (!((Boolean) AbstractC1656m8.f19915e.l()).booleanValue() || twI3 == null) {
                return;
            }
            Ow ow = (Ow) this.f27595J;
            ow.i("QueryInfo generation has been disabled.");
            ow.e(false);
            twI3.a(ow);
            twI3.h();
            return;
        }
        try {
            if (rVar == null) {
                ((InterfaceC0974Wd) this.f27594I).F0(null, null, null);
                ((Ow) this.f27595J).e(true);
                if (!((Boolean) AbstractC1656m8.f19915e.l()).booleanValue() || twI3 == null) {
                    return;
                }
                twI3.a((Ow) this.f27595J);
                twI3.h();
                return;
            }
            try {
                if (TextUtils.isEmpty(new JSONObject(rVar.f30682b).optString("request_id", HttpUrl.FRAGMENT_ENCODE_SET))) {
                    p120p3.h.g("The request ID is empty in request JSON.");
                    ((InterfaceC0974Wd) this.f27594I).m("Internal error: request ID is empty in request JSON.");
                    Ow ow2 = (Ow) this.f27595J;
                    ow2.i("Request ID empty");
                    ow2.e(false);
                    if (!((Boolean) AbstractC1656m8.f19915e.l()).booleanValue() || twI3 == null) {
                        return;
                    }
                    twI3.a((Ow) this.f27595J);
                    twI3.h();
                    return;
                }
                Bundle bundle = rVar.f30684d;
                p167v3.j jVar = (p167v3.j) this.f27596K;
                if (jVar.f30639W && bundle != null && bundle.getInt(jVar.f30641Y, -1) == -1) {
                    p167v3.j jVar2 = (p167v3.j) this.f27596K;
                    bundle.putInt(jVar2.f30641Y, jVar2.f30642Z.get());
                }
                p167v3.j jVar3 = (p167v3.j) this.f27596K;
                if (jVar3.f30638V && bundle != null && TextUtils.isEmpty(bundle.getString(jVar3.f30640X))) {
                    if (TextUtils.isEmpty(((p167v3.j) this.f27596K).f30644b0)) {
                        Object obj2 = this.f27596K;
                        p167v3.j jVar4 = (p167v3.j) obj2;
                        p167v3.j jVar5 = (p167v3.j) obj2;
                        jVar4.f30644b0 = p083k3.l.f25980A.f25983c.w(jVar5.f30625I, jVar5.f30643a0.f28196G);
                    }
                    p167v3.j jVar6 = (p167v3.j) this.f27596K;
                    bundle.putString(jVar6.f30640X, jVar6.f30644b0);
                }
                ((InterfaceC0974Wd) this.f27594I).F0(rVar.f30681a, rVar.f30682b, bundle);
                ((Ow) this.f27595J).e(true);
                if (!((Boolean) AbstractC1656m8.f19915e.l()).booleanValue() || twI3 == null) {
                    return;
                }
                twI3.a((Ow) this.f27595J);
                twI3.h();
            } catch (JSONException e9) {
                p120p3.h.g("Failed to create JSON object from the request string.");
                ((InterfaceC0974Wd) this.f27594I).m("Internal error for request JSON: " + e9.toString());
                Ow ow3 = (Ow) this.f27595J;
                ow3.d(e9);
                ow3.e(false);
                p083k3.l.f25980A.f25987g.i("SignalGeneratorImpl.generateSignals.onSuccess", e9);
                if (!((Boolean) AbstractC1656m8.f19915e.l()).booleanValue() || twI3 == null) {
                    return;
                }
                twI3.a((Ow) this.f27595J);
                twI3.h();
            }
        } catch (RemoteException e10) {
            Ow ow4 = (Ow) this.f27595J;
            ow4.d(e10);
            ow4.e(false);
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e10);
            p083k3.l.f25980A.f25987g.i("SignalGeneratorImpl.generateSignals.onSuccess", e10);
        } finally {
            if (((Boolean) AbstractC1656m8.f19915e.l()).booleanValue() && twI3 != null) {
                twI3.a((Ow) this.f27595J);
                twI3.h();
            }
        }
    }

    public /* synthetic */ j(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        this.f27596K = obj;
        this.f27592G = obj2;
        this.f27593H = obj3;
        this.f27594I = obj4;
        this.f27595J = obj5;
    }
}
