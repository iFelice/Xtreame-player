package p167v3;

import C2.C0091g;
import D4.b;
import U2.m;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.leanback.widget.C0484j;
import com.google.android.gms.internal.ads.AbstractBinderC1002Yd;
import com.google.android.gms.internal.ads.AbstractC1040aC;
import com.google.android.gms.internal.ads.AbstractC1317fg;
import com.google.android.gms.internal.ads.AbstractC1656m8;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.AbstractC2073uA;
import com.google.android.gms.internal.ads.AbstractC2175w8;
import com.google.android.gms.internal.ads.C0671Bg;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C0907Rg;
import com.google.android.gms.internal.ads.C0941Tm;
import com.google.android.gms.internal.ads.C1139c8;
import com.google.android.gms.internal.ads.C1212de;
import com.google.android.gms.internal.ads.C1217dj;
import com.google.android.gms.internal.ads.C1246eC;
import com.google.android.gms.internal.ads.C1437hw;
import com.google.android.gms.internal.ads.C1488ix;
import com.google.android.gms.internal.ads.C1883qc;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C2298yc;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.H4;
import com.google.android.gms.internal.ads.IB;
import com.google.android.gms.internal.ads.InterfaceC0974Wd;
import com.google.android.gms.internal.ads.InterfaceC1986sc;
import com.google.android.gms.internal.ads.InterfaceC2165vz;
import com.google.android.gms.internal.ads.InterfaceExecutorServiceC1504jC;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.JB;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Ow;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.QB;
import com.google.android.gms.internal.ads.SB;
import com.google.android.gms.internal.ads.Tw;
import com.google.android.gms.internal.ads.Uw;
import com.google.android.gms.internal.ads.Xv;
import com.google.android.gms.internal.ads.Zv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p043f3.g;
import p083k3.l;
import p086l.RunnableC3036k;
import p090l3.C3099q;
import p090l3.b1;
import p090l3.d1;
import p120p3.a;
import p120p3.e;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class j extends AbstractBinderC1002Yd {

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final ArrayList f30620n0 = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final ArrayList f30621o0 = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final ArrayList f30622p0 = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final ArrayList f30623q0 = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AbstractC1317fg f30624H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Context f30625I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final H4 f30626J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Zv f30627K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1437hw f30628L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f30629M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final ScheduledExecutorService f30630N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C2298yc f30631O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Point f30632P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Point f30633Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final C0783In f30634R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final C1488ix f30635S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f30636T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final boolean f30637U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final boolean f30638V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final boolean f30639W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final String f30640X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final String f30641Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final AtomicInteger f30642Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final a f30643a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f30644b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final String f30645c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final ArrayList f30646d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final ArrayList f30647e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final ArrayList f30648f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final ArrayList f30649g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final AtomicBoolean f30650h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final AtomicBoolean f30651i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final AtomicInteger f30652j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final C1139c8 f30653k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final x f30654l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final C3194b f30655m0;

    public j(AbstractC1317fg abstractC1317fg, Context context, H4 h8, C1437hw c1437hw, C1936re c1936re, ScheduledExecutorService scheduledExecutorService, C0783In c0783In, C1488ix c1488ix, a aVar, C1139c8 c1139c8, Zv zv, x xVar, C3194b c3194b) {
        ArrayList arrayListH3;
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        this.f30632P = new Point();
        this.f30633Q = new Point();
        this.f30642Z = new AtomicInteger(0);
        this.f30650h0 = new AtomicBoolean(false);
        this.f30651i0 = new AtomicBoolean(false);
        this.f30652j0 = new AtomicInteger(0);
        this.f30624H = abstractC1317fg;
        this.f30625I = context;
        this.f30626J = h8;
        this.f30627K = zv;
        this.f30628L = c1437hw;
        this.f30629M = c1936re;
        this.f30630N = scheduledExecutorService;
        this.f30634R = c0783In;
        this.f30635S = c1488ix;
        this.f30643a0 = aVar;
        this.f30653k0 = c1139c8;
        J7 j8 = Q7.f15620F6;
        C3099q c3099q = C3099q.f26624d;
        this.f30636T = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        J7 j9 = Q7.f15612E6;
        O7 o7 = c3099q.f26627c;
        this.f30637U = ((Boolean) o7.a(j9)).booleanValue();
        this.f30638V = ((Boolean) o7.a(Q7.f15636H6)).booleanValue();
        this.f30639W = ((Boolean) o7.a(Q7.f15652J6)).booleanValue();
        this.f30640X = (String) o7.a(Q7.f15644I6);
        this.f30641Y = (String) o7.a(Q7.f15659K6);
        this.f30645c0 = (String) o7.a(Q7.f15667L6);
        this.f30654l0 = xVar;
        this.f30655m0 = c3194b;
        if (((Boolean) o7.a(Q7.f15675M6)).booleanValue()) {
            this.f30646d0 = H3((String) o7.a(Q7.f15683N6));
            this.f30647e0 = H3((String) o7.a(Q7.f15691O6));
            this.f30648f0 = H3((String) o7.a(Q7.f15699P6));
            arrayListH3 = H3((String) o7.a(Q7.f15707Q6));
        } else {
            this.f30646d0 = f30620n0;
            this.f30647e0 = f30621o0;
            this.f30648f0 = f30622p0;
            arrayListH3 = f30623q0;
        }
        this.f30649g0 = arrayListH3;
    }

    public static boolean F3(Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final Uri G3(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf("&adurl=");
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf("?adurl=");
        }
        if (iIndexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i8 = iIndexOf + 1;
        StringBuilder sb = new StringBuilder(string.substring(0, i8));
        p148t.a.h(sb, str, "=", str2, "&");
        sb.append(string.substring(i8));
        return Uri.parse(sb.toString());
    }

    public static final ArrayList H3(String str) {
        String[] strArrSplit = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            if (!AbstractC2987b.j0(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static Tw I3(b bVar, C1212de c1212de) {
        if (!Uw.a() || !((Boolean) AbstractC1656m8.f19915e.l()).booleanValue()) {
            return null;
        }
        try {
            Tw tw = (Tw) ((C0907Rg) Cw.f2(bVar)).f16296Q.zzb();
            tw.d(new ArrayList(Collections.singletonList(c1212de.f18338H)));
            b1 b1Var = c1212de.f18340J;
            tw.b(b1Var == null ? HttpUrl.FRAGMENT_ENCODE_SET : b1Var.f26532V);
            tw.f(b1Var.f26529S);
            return tw;
        } catch (ExecutionException e8) {
            l.f25980A.f25987g.i("SignalGeneratorImpl.getConfiguredCriticalUserJourney", e8);
            return null;
        }
    }

    public final AbstractC1040aC A3(String str) {
        final int i8 = 1;
        C0941Tm[] c0941TmArr = new C0941Tm[1];
        b bVarA = this.f30628L.a();
        final int i9 = 0;
        C3195c c3195c = new C3195c(this, c0941TmArr, str, i9);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f30629M;
        JB jbD2 = Cw.d2(bVarA, c3195c, interfaceExecutorServiceC1504jC);
        jbD2.a(new RunnableC3036k(this, c0941TmArr, 20), interfaceExecutorServiceC1504jC);
        return Cw.w1(Cw.b2((AbstractC1040aC) Cw.e2(AbstractC1040aC.r(jbD2), ((Integer) C3099q.f26624d.f26627c.a(Q7.f15762X6)).intValue(), TimeUnit.MILLISECONDS, this.f30630N), new InterfaceC2165vz() { // from class: v3.h
            @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
            public final Object apply(Object obj) {
                switch (i9) {
                    case 0:
                        ArrayList arrayList = j.f30620n0;
                        return ((JSONObject) obj).optString("nas");
                    default:
                        ArrayList arrayList2 = j.f30620n0;
                        p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, (Exception) obj);
                        return null;
                }
            }
        }, interfaceExecutorServiceC1504jC), Exception.class, new InterfaceC2165vz() { // from class: v3.h
            @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
            public final Object apply(Object obj) {
                switch (i8) {
                    case 0:
                        ArrayList arrayList = j.f30620n0;
                        return ((JSONObject) obj).optString("nas");
                    default:
                        ArrayList arrayList2 = j.f30620n0;
                        p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, (Exception) obj);
                        return null;
                }
            }
        }, interfaceExecutorServiceC1504jC);
    }

    public final void B3() {
        if (!((Boolean) AbstractC2175w8.f21644b.l()).booleanValue()) {
            Cw.h2(((Boolean) C3099q.f26624d.f26627c.a(Q7.sa)).booleanValue() ? Cw.W1(new QB() { // from class: v3.F
                @Override // com.google.android.gms.internal.ads.QB
                public final b zza() {
                    j jVar = this.f30583G;
                    return (b) jVar.z3(jVar.f30625I, null, "BANNER", null, null, new Bundle()).f16297R.zzb();
                }
            }, AbstractC1988se.f20906a) : (b) z3(this.f30625I, null, "BANNER", null, null, new Bundle()).f16297R.zzb(), new C0091g(this, 11), this.f30624H.a());
            return;
        }
        x xVar = this.f30654l0;
        synchronized (xVar) {
            xVar.c(true);
            xVar.c(false);
        }
    }

    public final void C3() {
        J7 j8 = Q7.O8;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            J7 j9 = Q7.R8;
            O7 o7 = c3099q.f26627c;
            if (((Boolean) o7.a(j9)).booleanValue()) {
                return;
            }
            if (((Boolean) o7.a(Q7.V8)).booleanValue() && this.f30650h0.getAndSet(true)) {
                return;
            }
            B3();
        }
    }

    public final void D3(ArrayList arrayList, R3.a aVar, InterfaceC1986sc interfaceC1986sc, boolean z7) {
        ArrayList arrayList2;
        ArrayList arrayList3;
        b bVarD2;
        Map map;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15754W6)).booleanValue()) {
            h.g("The updating URL feature is not enabled.");
            try {
                C1883qc c1883qc = (C1883qc) interfaceC1986sc;
                Parcel parcelJ0 = c1883qc.j0();
                parcelJ0.writeString("The updating URL feature is not enabled.");
                c1883qc.O2(2, parcelJ0);
                return;
            } catch (RemoteException e8) {
                h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                return;
            }
        }
        Iterator it = arrayList.iterator();
        int i8 = 0;
        int i9 = 0;
        while (true) {
            boolean zHasNext = it.hasNext();
            arrayList2 = this.f30647e0;
            arrayList3 = this.f30646d0;
            if (!zHasNext) {
                break;
            } else if (F3((Uri) it.next(), arrayList3, arrayList2)) {
                i9++;
            }
        }
        if (i9 > 1) {
            h.g("Multiple google urls found: ".concat(String.valueOf(arrayList)));
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Uri uri = (Uri) it2.next();
            if (F3(uri, arrayList3, arrayList2)) {
                CallableC3196d callableC3196d = new CallableC3196d(this, uri, aVar, i8);
                InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f30629M;
                b bVarB = ((IB) interfaceExecutorServiceC1504jC).b(callableC3196d);
                C2298yc c2298yc = this.f30631O;
                if (c2298yc == null || (map = c2298yc.f22035H) == null || map.isEmpty()) {
                    h.f("Asset view map is empty.");
                    bVarD2 = bVarB;
                } else {
                    bVarD2 = Cw.d2(bVarB, new C3197e(this, i8), interfaceExecutorServiceC1504jC);
                }
            } else {
                h.g("Not a Google URL: ".concat(String.valueOf(uri)));
                bVarD2 = Cw.N1(uri);
            }
            arrayList4.add(bVarD2);
        }
        Cw.h2(new SB(AbstractC2073uA.t(arrayList4), true), new i(this, interfaceC1986sc, z7, 1), this.f30624H.a());
    }

    public final void E3(ArrayList arrayList, R3.a aVar, InterfaceC1986sc interfaceC1986sc, boolean z7) {
        Map map;
        int i8 = 2;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15754W6)).booleanValue()) {
            try {
                C1883qc c1883qc = (C1883qc) interfaceC1986sc;
                Parcel parcelJ0 = c1883qc.j0();
                parcelJ0.writeString("The updating URL feature is not enabled.");
                c1883qc.O2(2, parcelJ0);
                return;
            } catch (RemoteException e8) {
                h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                return;
            }
        }
        CallableC3196d callableC3196d = new CallableC3196d(this, arrayList, aVar, i8);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f30629M;
        b bVarB = ((IB) interfaceExecutorServiceC1504jC).b(callableC3196d);
        C2298yc c2298yc = this.f30631O;
        if (c2298yc == null || (map = c2298yc.f22035H) == null || map.isEmpty()) {
            h.f("Asset view map is empty.");
        } else {
            bVarB = Cw.d2(bVarB, new C3197e(this, 1), interfaceExecutorServiceC1504jC);
        }
        Cw.h2(bVarB, new i(this, interfaceC1986sc, z7, 0), this.f30624H.a());
    }

    /* JADX WARN: Code duplicated, block: B:13:0x008c  */
    /* JADX WARN: Code duplicated, block: B:15:0x009a  */
    /* JADX WARN: Code duplicated, block: B:17:0x00b2  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1016Zd
    public final void t1(R3.a aVar, C1212de c1212de, InterfaceC0974Wd interfaceC0974Wd) {
        b bVarN1;
        b bVarD2;
        b bVarH1;
        b bVar;
        Bundle bundle = new Bundle();
        J7 j8 = Q7.f15734U1;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            bundle.putLong("api-call", c1212de.f18340J.f26542f0);
            p148t.a.g(l.f25980A.f25990j, bundle, "dynamite-enter");
        }
        Context context = (Context) R3.b.v0(aVar);
        this.f30625I = context;
        Ow owH = U4.a.h(context, 22);
        owH.zzi();
        boolean zEquals = "UNKNOWN".equals(c1212de.f18338H);
        O7 o7 = c3099q.f26627c;
        if (zEquals) {
            List arrayList = new ArrayList();
            J7 j9 = Q7.f15746V6;
            if (!((String) o7.a(j9)).isEmpty()) {
                arrayList = Arrays.asList(((String) o7.a(j9)).split(","));
            }
            if (arrayList.contains(m.k(c1212de.f18340J))) {
                C1246eC c1246eCH1 = Cw.H1(new IllegalArgumentException("Unknown format is no longer supported."));
                bVar = c1246eCH1;
                bVarH1 = Cw.H1(new IllegalArgumentException("Unknown format is no longer supported."));
            } else {
                if (((Boolean) o7.a(Q7.sa)).booleanValue()) {
                    C1936re c1936re = AbstractC1988se.f20906a;
                    bVarN1 = c1936re.b(new CallableC3196d(this, c1212de, bundle, 1));
                    bVarD2 = Cw.d2(bVarN1, new C3199g(), c1936re);
                } else {
                    C0907Rg c0907RgZ3 = z3(this.f30625I, c1212de.f18337G, c1212de.f18338H, c1212de.f18339I, c1212de.f18340J, bundle);
                    bVarN1 = Cw.N1(c0907RgZ3);
                    bVarD2 = (b) c0907RgZ3.f16297R.zzb();
                }
                bVarH1 = bVarD2;
                bVar = bVarN1;
            }
        } else {
            if (((Boolean) o7.a(Q7.sa)).booleanValue()) {
                C1936re c1936re2 = AbstractC1988se.f20906a;
                bVarN1 = c1936re2.b(new CallableC3196d(this, c1212de, bundle, 1));
                bVarD2 = Cw.d2(bVarN1, new C3199g(), c1936re2);
            } else {
                C0907Rg c0907RgZ4 = z3(this.f30625I, c1212de.f18337G, c1212de.f18338H, c1212de.f18339I, c1212de.f18340J, bundle);
                bVarN1 = Cw.N1(c0907RgZ4);
                bVarD2 = (b) c0907RgZ4.f16297R.zzb();
            }
            bVarH1 = bVarD2;
            bVar = bVarN1;
        }
        Cw.h2(bVarH1, new p109o.j(this, bVar, c1212de, interfaceC0974Wd, owH), this.f30624H.a());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:37:0x00cb  */
    public final C0907Rg z3(Context context, String str, String str2, d1 d1Var, b1 b1Var, Bundle bundle) {
        d1 d1Var2;
        byte b8;
        Xv xv = new Xv();
        boolean zEquals = "REWARDED".equals(str2);
        C0484j c0484j = xv.f17544o;
        if (zEquals) {
            c0484j.f9298H = 2;
        } else if ("REWARDED_INTERSTITIAL".equals(str2)) {
            c0484j.f9298H = 3;
        }
        C0671Bg c0671Bg = ((C0671Bg) this.f30624H).f12432c;
        C1217dj c1217dj = new C1217dj();
        c1217dj.f18346a = context;
        xv.f17532c = str == null ? "adUnitId" : str;
        xv.f17530a = b1Var == null ? new b1(8, -1L, new Bundle(), -1, new ArrayList(), false, -1, false, null, null, null, null, new Bundle(), new Bundle(), new ArrayList(), null, null, false, null, -1, null, new ArrayList(), 60000, null, 0, 0L) : b1Var;
        if (d1Var == null) {
            switch (str2) {
                case "NATIVE":
                    b8 = 3;
                    break;
                case "APP_OPEN_AD":
                    b8 = 4;
                    break;
                case "REWARDED":
                    b8 = 1;
                    break;
                case "REWARDED_INTERSTITIAL":
                    b8 = 2;
                    break;
                case "BANNER":
                    b8 = 0;
                    break;
                default:
                    b8 = -1;
                    break;
            }
            if (b8 == 0) {
                d1Var2 = new d1(context, g.f25164h);
            } else if (b8 == 1 || b8 == 2) {
                d1Var2 = new d1("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
            } else if (b8 != 3) {
                d1Var2 = b8 != 4 ? new d1() : d1.i();
            } else {
                d1Var2 = d1.l();
            }
        } else {
            d1Var2 = d1Var;
        }
        xv.f17531b = d1Var2;
        xv.f17548s = true;
        xv.f17549t = bundle;
        c1217dj.f18347b = xv.a();
        C1217dj c1217dj2 = new C1217dj(c1217dj);
        e eVar = new e(1);
        eVar.f28211H = str2;
        l lVar = new l(eVar);
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        new HashSet();
        return new C0907Rg(c0671Bg, lVar, c1217dj2);
    }
}
