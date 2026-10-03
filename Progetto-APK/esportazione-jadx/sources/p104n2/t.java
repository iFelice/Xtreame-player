package p104n2;

import B0.C0074y;
import B0.w0;
import F.d;
import Y5.B;
import Z3.C;
import Z3.C0427i;
import Z3.C0435q;
import Z3.RunnableC0439v;
import Z3.a0;
import Z3.g0;
import Z5.K;
import Z5.Y;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.C2246xc;
import com.google.android.gms.internal.measurement.M;
import com.google.protobuf.U2;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import k7.e;
import k7.g;
import k7.h;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p004a3.i;
import p021c4.A1;
import p021c4.BinderC0608r0;
import p021c4.C0574d1;
import p021c4.C0597l0;
import p021c4.G;
import p021c4.I;
import p021c4.I1;
import p021c4.J1;
import p021c4.T;
import p034e2.n;
import p043f3.f;
import p079k.RunnableC3015g;
import p096m2.q;
import p112o2.j;
import p168v4.b;
import p182x3.a;
import pe.hf.black20.R;
import pe.hf.black20.speedtest.SpeedTestActivity;

/* JADX INFO: loaded from: classes.dex */
public final class t implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27469G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f27470H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27471I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f27472J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f27473K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f27474L;

    public /* synthetic */ t(Context context, f fVar, a aVar) {
        p043f3.a aVar2 = p043f3.a.BANNER;
        this.f27469G = 1;
        this.f27470H = context;
        this.f27471I = aVar2;
        this.f27472J = fVar;
        this.f27473K = null;
        this.f27474L = aVar;
    }

    private final void a() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = (AtomicReference) this.f27471I;
        synchronized (atomicReference2) {
            try {
                try {
                    C0574d1 c0574d1 = (C0574d1) this.f27474L;
                    G g8 = c0574d1.f11146J;
                    if (g8 == null) {
                        T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11039L.d(null, (String) this.f27472J, (String) this.f27473K, "(legacy) Failed to get conditional properties; not connected to service");
                        atomicReference2.set(Collections.emptyList());
                        atomicReference2.notify();
                        return;
                    }
                    if (TextUtils.isEmpty(null)) {
                        J1 j8 = (J1) this.f27470H;
                        c.h(j8);
                        atomicReference2.set(g8.d0((String) this.f27472J, (String) this.f27473K, j8));
                    } else {
                        atomicReference2.set(g8.Z0(null, (String) this.f27472J, (String) this.f27473K));
                    }
                    c0574d1.D();
                    atomicReference = (AtomicReference) this.f27471I;
                    atomicReference.notify();
                } catch (RemoteException e8) {
                    T t8 = ((C0597l0) ((C0574d1) this.f27474L).f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.d(null, (String) this.f27472J, e8, "(legacy) Failed to get conditional properties; remote exception");
                    ((AtomicReference) this.f27471I).set(Collections.emptyList());
                    atomicReference = (AtomicReference) this.f27471I;
                }
            } catch (Throwable th) {
                ((AtomicReference) this.f27471I).notify();
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8;
        Boolean bool;
        Boolean bool2;
        k7.a aVar;
        double dDoubleValue;
        double d6;
        double dDoubleValue2;
        int i9 = 1;
        switch (this.f27469G) {
            case 0:
                try {
                    if (!(((j) this.f27471I).f27864G instanceof p112o2.a)) {
                        String string = ((UUID) this.f27472J).toString();
                        q qVarH = ((u) this.f27474L).f27477c.h(string);
                        if (qVarH == null || U2.d(qVarH.f27243b)) {
                            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                        }
                        ((n) ((u) this.f27474L).f27476b).i(string, (p027d2.f) this.f27473K);
                        ((Context) this.f27470H).startService(p089l2.c.a((Context) this.f27470H, p096m2.f.a(qVarH), (p027d2.f) this.f27473K));
                    }
                    ((j) this.f27471I).j(null);
                    return;
                } catch (Throwable th) {
                    ((j) this.f27471I).k(th);
                    return;
                }
            case 1:
                f fVar = (f) this.f27472J;
                new C2246xc((Context) this.f27470H, (p043f3.a) this.f27471I, fVar == null ? null : fVar.f25163a, (String) this.f27473K, 0).r((a) this.f27474L);
                return;
            case 2:
                g0 g0Var = (g0) this.f27471I;
                Activity activity = (Activity) this.f27472J;
                b bVar = (b) this.f27473K;
                i iVar = (i) this.f27470H;
                final C0074y c0074y = (C0074y) this.f27474L;
                try {
                    G.c cVar = bVar.f30724c;
                    if (cVar == null || !cVar.f3280H) {
                        Log.i("UserMessagingPlatform", "Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\"" + C.m(g0Var.f8325a) + "\") to set this as a debug device.");
                    }
                    d dVarI = new w0(g0Var.f8331g, g0Var.a(g0Var.f8330f.a(activity, bVar))).i();
                    C0427i c0427i = g0Var.f8328d;
                    c0427i.f8345b.edit().putInt("consent_status", dVarI.f2961H).commit();
                    c0427i.f8345b.edit().putString("privacy_options_requirement_status", ((p168v4.a) dVarI.f2962I).name()).commit();
                    g0Var.f8329e.f8375c.set((C0435q) dVarI.f2963J);
                    g0Var.f8332h.f8283a.execute(new RunnableC0439v(g0Var, iVar, dVarI, 1));
                    return;
                } catch (a0 e8) {
                    final int i10 = 0;
                    g0Var.f8326b.post(new Runnable() { // from class: Z3.f0
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i11 = i10;
                            C0074y c0074y2 = c0074y;
                            a0 a0Var = e8;
                            switch (i11) {
                                case 0:
                                    K.k kVarA = a0Var.a();
                                    c0074y2.getClass();
                                    C0074y.a(kVarA);
                                    break;
                                default:
                                    K.k kVarA2 = a0Var.a();
                                    c0074y2.getClass();
                                    C0074y.a(kVarA2);
                                    break;
                            }
                        }
                    });
                    return;
                } catch (RuntimeException e9) {
                    final int i11 = 1;
                    final a0 a0Var = new a0(1, "Caught exception when trying to request consent info update: ".concat(String.valueOf(Log.getStackTraceString(e9))));
                    g0Var.f8326b.post(new Runnable() { // from class: Z3.f0
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i12 = i11;
                            C0074y c0074y2 = c0074y;
                            a0 a0Var2 = a0Var;
                            switch (i12) {
                                case 0:
                                    K.k kVarA = a0Var2.a();
                                    c0074y2.getClass();
                                    C0074y.a(kVarA);
                                    break;
                                default:
                                    K.k kVarA2 = a0Var2.a();
                                    c0074y2.getClass();
                                    C0074y.a(kVarA2);
                                    break;
                            }
                        }
                    });
                    return;
                }
            case 3:
                BinderC0608r0 binderC0608r0 = (BinderC0608r0) this.f27471I;
                J1 j8 = (J1) this.f27472J;
                Bundle bundle = (Bundle) this.f27473K;
                I i12 = (I) this.f27470H;
                String str = (String) this.f27474L;
                A1 a8 = binderC0608r0.f11346G;
                a8.i();
                try {
                    i12.P2(a8.h(bundle, j8));
                    return;
                } catch (RemoteException e10) {
                    binderC0608r0.f11346G.b().f11039L.c(str, e10, "Failed to return trigger URIs for app");
                    return;
                }
            case 4:
                a();
                return;
            case 5:
                Object obj = this.f27474L;
                ArrayList arrayList = new ArrayList();
                try {
                    try {
                        C0574d1 c0574d1 = (C0574d1) obj;
                        G g8 = c0574d1.f11146J;
                        if (g8 == null) {
                            C0597l0 c0597l0 = (C0597l0) c0574d1.f10616G;
                            T t7 = c0597l0.f11258O;
                            C0597l0.k(t7);
                            t7.f11039L.c((String) this.f27471I, (String) this.f27472J, "Failed to get conditional properties; not connected to service");
                            I1 i13 = c0597l0.f11261R;
                            C0597l0.i(i13);
                            i13.J((M) this.f27470H, arrayList);
                            return;
                        }
                        J1 j9 = (J1) this.f27473K;
                        c.h(j9);
                        arrayList = I1.z(g8.d0((String) this.f27471I, (String) this.f27472J, j9));
                        c0574d1.D();
                        M m7 = (M) this.f27470H;
                        I1 i14 = ((C0597l0) ((C0574d1) obj).f10616G).f11261R;
                        C0597l0.i(i14);
                        i14.J(m7, arrayList);
                        return;
                    } catch (RemoteException e11) {
                        T t8 = ((C0597l0) ((C0574d1) obj).f10616G).f11258O;
                        C0597l0.k(t8);
                        t8.f11039L.d((String) this.f27471I, (String) this.f27472J, e11, "Failed to get conditional properties; remote exception");
                    }
                } catch (Throwable th2) {
                    M m8 = (M) this.f27470H;
                    I1 i15 = ((C0597l0) ((C0574d1) obj).f10616G).f11261R;
                    C0597l0.i(i15);
                    i15.J(m8, arrayList);
                    throw th2;
                }
                break;
            case 6:
                for (Y y7 : (Collection) this.f27471I) {
                    if (y7 != ((Y) this.f27472J)) {
                        y7.getClass();
                        B b8 = K.f8431b;
                        throw null;
                    }
                }
                Future future = (Future) this.f27473K;
                if (future != null) {
                    future.cancel(false);
                }
                Future future2 = (Future) this.f27470H;
                if (future2 != null) {
                    future2.cancel(false);
                }
                ((K) this.f27474L).getClass();
                throw null;
            default:
                W4.a aVar2 = (W4.a) this.f27474L;
                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new g(this, i9));
                int i16 = 600;
                do {
                    k7.j jVar = ((SpeedTestActivity) aVar2.f7482J).f29345H;
                    i8 = 2;
                    if (jVar.f26057K) {
                        HashMap map = jVar.f26053G;
                        HashMap map2 = jVar.f26054H;
                        double d8 = jVar.f26055I;
                        double d9 = jVar.f26056J;
                        Iterator it = map.keySet().iterator();
                        double d10 = 1.9349458E7d;
                        int i17 = 0;
                        double d11 = 0.0d;
                        while (it.hasNext()) {
                            Integer num = (Integer) it.next();
                            int iIntValue = num.intValue();
                            it = it;
                            if (!((SpeedTestActivity) aVar2.f7482J).f29346I.contains(((List) map2.get(num)).get(5))) {
                                Location location = new Location("Source");
                                location.setLatitude(d8);
                                location.setLongitude(d9);
                                List list = (List) map2.get(num);
                                Location location2 = new Location("Dest");
                                double d12 = d8;
                                location2.setLatitude(Double.parseDouble((String) list.get(0)));
                                location2.setLongitude(Double.parseDouble((String) list.get(1)));
                                double dDistanceTo = location.distanceTo(location2);
                                if (d10 > dDistanceTo) {
                                    d11 = dDistanceTo;
                                    d10 = d11;
                                    i17 = iIntValue;
                                }
                                d8 = d12;
                            }
                        }
                        String str2 = (String) map.get(Integer.valueOf(i17));
                        List list2 = (List) map2.get(Integer.valueOf(i17));
                        if (list2 == null) {
                            ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new g(this, 3));
                            return;
                        }
                        ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new h(this, list2, d11));
                        LinearLayout linearLayout = (LinearLayout) ((SpeedTestActivity) aVar2.f7482J).findViewById(R.id.chartPing);
                        V6.d dVar = new V6.d();
                        V6.c cVar2 = new V6.c();
                        cVar2.f7226H = Color.parseColor("#ffffff");
                        dVar.f7230J.add(cVar2);
                        dVar.f7234N = false;
                        dVar.f7228H = false;
                        dVar.f7227G = Color.parseColor("#1bfa08");
                        dVar.f7233M = 5.0f;
                        V6.b bVar2 = new V6.b();
                        bVar2.f7206h0 = 0;
                        bVar2.f7207i0 = 0;
                        bVar2.f7181J = Color.parseColor("#647488");
                        bVar2.f7180I = Color.parseColor("#ffffff");
                        bVar2.f7210l0 = true;
                        bVar2.f7211m0 = true;
                        bVar2.f7194W = false;
                        bVar2.f7214p0 = Color.argb(0, 255, 0, 0);
                        bVar2.f7191T.add(dVar);
                        LinearLayout linearLayout2 = (LinearLayout) ((SpeedTestActivity) aVar2.f7482J).findViewById(R.id.chartDownload);
                        V6.d dVar2 = new V6.d();
                        V6.c cVar3 = new V6.c();
                        cVar3.f7226H = Color.parseColor("#ffffff");
                        dVar2.f7230J.add(cVar3);
                        dVar2.f7234N = false;
                        dVar2.f7227G = Color.parseColor("#1bfa08");
                        dVar2.f7228H = false;
                        dVar2.f7233M = 5.0f;
                        V6.b bVar3 = new V6.b();
                        bVar3.f7206h0 = 0;
                        bVar3.f7207i0 = 0;
                        bVar3.f7181J = Color.parseColor("#647488");
                        bVar3.f7180I = Color.parseColor("#ffffff");
                        bVar3.f7210l0 = false;
                        bVar3.f7211m0 = false;
                        bVar3.f7194W = false;
                        bVar3.f7214p0 = Color.argb(0, 255, 0, 0);
                        bVar3.f7191T.add(dVar2);
                        LinearLayout linearLayout3 = (LinearLayout) ((SpeedTestActivity) aVar2.f7482J).findViewById(R.id.chartUpload);
                        V6.d dVar3 = new V6.d();
                        V6.c cVar4 = new V6.c();
                        cVar4.f7226H = Color.parseColor("#ffffff");
                        dVar3.f7230J.add(cVar4);
                        dVar3.f7234N = false;
                        dVar3.f7227G = Color.parseColor("#1bfa08");
                        dVar3.f7228H = false;
                        dVar3.f7233M = 5.0f;
                        V6.b bVar4 = new V6.b();
                        bVar4.f7206h0 = 0;
                        bVar4.f7207i0 = 0;
                        bVar4.f7181J = Color.parseColor("#647488");
                        bVar4.f7180I = Color.parseColor("#ffffff");
                        bVar4.f7210l0 = false;
                        bVar4.f7211m0 = false;
                        bVar4.f7194W = false;
                        bVar4.f7214p0 = Color.argb(0, 255, 0, 0);
                        bVar4.f7191T.add(dVar3);
                        ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new RunnableC3015g(this, linearLayout, linearLayout2, linearLayout3, 22));
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList();
                        Boolean bool3 = Boolean.FALSE;
                        String strReplace = ((String) list2.get(6)).replace(":8080", HttpUrl.FRAGMENT_ENCODE_SET);
                        k7.c cVar5 = new k7.c();
                        new HashMap();
                        cVar5.f26031I = 0.0d;
                        cVar5.f26032J = 0.0d;
                        cVar5.f26033K = false;
                        cVar5.f26029G = strReplace;
                        cVar5.f26030H = 6;
                        String strReplace2 = str2.replace(str2.split(MqttTopic.TOPIC_LEVEL_SEPARATOR)[str2.split(MqttTopic.TOPIC_LEVEL_SEPARATOR).length - 1], HttpUrl.FRAGMENT_ENCODE_SET);
                        k7.a aVar3 = new k7.a();
                        LinearLayout linearLayout4 = linearLayout2;
                        aVar3.f26016H = 0L;
                        aVar3.f26017I = 0.0d;
                        aVar3.f26018J = 0;
                        aVar3.f26019K = 0.0d;
                        aVar3.f26020L = false;
                        aVar3.f26021M = 0.0d;
                        aVar3.f26022N = 15;
                        aVar3.f26023O = null;
                        aVar3.f26015G = strReplace2;
                        k7.b bVar5 = new k7.b();
                        bVar5.f26026H = false;
                        bVar5.f26027I = 0.0d;
                        bVar5.f26025G = str2;
                        Boolean bool4 = bool3;
                        Boolean bool5 = bool4;
                        Boolean bool6 = bool5;
                        Boolean bool7 = bool6;
                        Boolean bool8 = bool7;
                        while (true) {
                            if (!bool3.booleanValue()) {
                                cVar5.start();
                                bool3 = Boolean.TRUE;
                            }
                            Boolean bool9 = bool3;
                            if (!bool6.booleanValue() || bool4.booleanValue()) {
                                bool = bool4;
                            } else {
                                aVar3.start();
                                bool = Boolean.TRUE;
                            }
                            if (!bool7.booleanValue() || bool5.booleanValue()) {
                                bool2 = bool5;
                            } else {
                                bVar5.start();
                                bool2 = Boolean.TRUE;
                            }
                            if (!bool6.booleanValue()) {
                                arrayList2.add(Double.valueOf(cVar5.f26031I));
                                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new k7.i(this, cVar5, 1));
                                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new e(this, arrayList2, bVar2, linearLayout, 2));
                            } else if (cVar5.f26032J == 0.0d) {
                                System.out.println("Ping error...");
                            } else {
                                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new k7.i(this, cVar5, 0));
                            }
                            if (!bool6.booleanValue()) {
                                aVar = aVar3;
                            } else if (bool7.booleanValue()) {
                                k7.a aVar4 = aVar3;
                                try {
                                    dDoubleValue2 = new BigDecimal(aVar4.f26019K).setScale(2, RoundingMode.HALF_UP).doubleValue();
                                    d6 = 0.0d;
                                } catch (Exception unused) {
                                    d6 = 0.0d;
                                    dDoubleValue2 = 0.0d;
                                }
                                if (dDoubleValue2 == d6) {
                                    System.out.println("Download error...");
                                } else {
                                    ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new k7.d(this, aVar4, 1));
                                }
                                aVar = aVar4;
                            } else {
                                k7.a aVar5 = aVar3;
                                double d13 = aVar5.f26021M;
                                arrayList3.add(Double.valueOf(d13));
                                ((SpeedTestActivity) aVar2.f7482J).getClass();
                                SpeedTestActivity.f29342J = SpeedTestActivity.a(d13);
                                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new k7.d(this, aVar5, 0));
                                SpeedTestActivity.f29343K = SpeedTestActivity.f29342J;
                                LinearLayout linearLayout5 = linearLayout4;
                                aVar = aVar5;
                                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new e(this, arrayList3, bVar3, linearLayout5, 0));
                            }
                            if (bool7.booleanValue()) {
                                if (bool8.booleanValue()) {
                                    try {
                                        dDoubleValue = new BigDecimal(bVar5.f26027I).setScale(2, RoundingMode.HALF_UP).doubleValue();
                                    } catch (Exception unused2) {
                                        dDoubleValue = 0.0d;
                                    }
                                    if (dDoubleValue == 0.0d) {
                                        System.out.println("Upload error...");
                                    } else {
                                        ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new k7.f(this, bVar5, 0));
                                    }
                                } else {
                                    double dA = bVar5.a();
                                    arrayList4.add(Double.valueOf(dA));
                                    ((SpeedTestActivity) aVar2.f7482J).getClass();
                                    SpeedTestActivity.f29342J = SpeedTestActivity.a(dA);
                                    ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new k7.f(this, bVar5, 1));
                                    SpeedTestActivity.f29343K = SpeedTestActivity.f29342J;
                                    ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new e(this, arrayList4, bVar4, linearLayout3, 1));
                                }
                            }
                            if (bool6.booleanValue() && bool7.booleanValue() && bVar5.f26026H) {
                                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new g(this, 0));
                                return;
                            }
                            if (cVar5.f26033K) {
                                bool6 = Boolean.TRUE;
                            }
                            if (aVar.f26020L) {
                                bool7 = Boolean.TRUE;
                            }
                            if (bVar5.f26026H) {
                                bool8 = Boolean.TRUE;
                            }
                            if (!bool9.booleanValue() || bool6.booleanValue()) {
                                try {
                                    Thread.sleep(100L);
                                } catch (InterruptedException unused3) {
                                }
                            } else {
                                try {
                                    Thread.sleep(300L);
                                    break;
                                } catch (InterruptedException unused4) {
                                }
                            }
                            aVar3 = aVar;
                            cVar5 = cVar5;
                            bool3 = bool9;
                            bool4 = bool;
                            bool5 = bool2;
                            arrayList2 = arrayList2;
                            linearLayout4 = linearLayout4;
                            arrayList4 = arrayList4;
                            bVar2 = bVar2;
                            linearLayout = linearLayout;
                        }
                    } else {
                        i16--;
                        try {
                            Thread.sleep(100L);
                        } catch (InterruptedException unused5) {
                        }
                    }
                } while (i16 > 0);
                ((SpeedTestActivity) aVar2.f7482J).runOnUiThread(new g(this, i8));
                ((SpeedTestActivity) aVar2.f7482J).f29345H = null;
                return;
        }
    }

    public t(C0574d1 c0574d1, AtomicReference atomicReference, String str, String str2, J1 j8) {
        this.f27469G = 4;
        this.f27471I = atomicReference;
        this.f27472J = str;
        this.f27473K = str2;
        this.f27470H = j8;
        this.f27474L = c0574d1;
    }

    public /* synthetic */ t(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i8) {
        this.f27469G = i8;
        this.f27474L = obj;
        this.f27471I = obj2;
        this.f27472J = obj3;
        this.f27473K = obj4;
        this.f27470H = obj5;
    }

    public /* synthetic */ t(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i8, int i9) {
        this.f27469G = i8;
        this.f27471I = obj;
        this.f27472J = obj2;
        this.f27473K = obj3;
        this.f27470H = obj4;
        this.f27474L = obj5;
    }

    public t(W4.a aVar) {
        this.f27469G = 7;
        this.f27474L = aVar;
        this.f27472J = (TextView) ((SpeedTestActivity) aVar.f7482J).findViewById(R.id.pingTextView);
        Object obj = aVar.f7482J;
        this.f27473K = (TextView) ((SpeedTestActivity) obj).findViewById(R.id.downloadTextView);
        this.f27470H = (TextView) ((SpeedTestActivity) obj).findViewById(R.id.uploadTextView);
    }
}
