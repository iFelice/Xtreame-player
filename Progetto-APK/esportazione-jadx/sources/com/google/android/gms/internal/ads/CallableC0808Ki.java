package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ki, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallableC0808Ki implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f14393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f14395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f14396e;

    public /* synthetic */ CallableC0808Ki(Object obj, Object obj2, Object obj3, Object obj4, int i8) {
        this.f14392a = i8;
        this.f14396e = obj;
        this.f14393b = obj2;
        this.f14394c = obj3;
        this.f14395d = obj4;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle;
        Bundle bundle2;
        int i8 = this.f14392a;
        Object obj = this.f14395d;
        Object obj2 = this.f14394c;
        Object obj3 = this.f14393b;
        Object obj4 = this.f14396e;
        switch (i8) {
            case 0:
                C0823Li c0823Li = (C0823Li) obj4;
                c0823Li.getClass();
                C0973Wc c0973Wc = (C0973Wc) ((D4.b) obj3).get();
                JSONObject jSONObject = (JSONObject) ((D4.b) obj2).get();
                C0987Xc c0987Xc = (C0987Xc) ((D4.b) obj).get();
                C1999sp c1999sp = c0823Li.f14544n;
                c1999sp.f20984a.z(c0973Wc);
                Context context = c1999sp.f20991h;
                Lp lp = new Lp(c0973Wc.f17256M, c1999sp.f20990g, U4.a.h(context, 9));
                Iw iw = Iw.PREPARE_HTTP_REQUEST;
                C1298fC c1298fCN1 = Cw.N1(new Kp(jSONObject, c0987Xc));
                Kw kw = c1999sp.f20986c;
                Fw fwC = kw.b(c1298fCN1, iw).k(lp).c();
                C0929Ta c0929Ta = new C0929Ta(2, c1999sp, c0973Wc);
                InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = c1999sp.f20992i;
                C1950rs c1950rsB = kw.b(Cw.b2(fwC, c0929Ta, interfaceExecutorServiceC1504jC), Iw.PROXY);
                C1636lp c1636lp = c1999sp.f20985b;
                Objects.requireNonNull(c1636lp);
                Fw fwC2 = c1950rsB.m(new No(c1636lp, 12)).c();
                c1999sp.getClass();
                JB jbD2 = Cw.d2(kw.b(fwC2, Iw.PRE_PROCESS).k(new C0871Om(4, jSONObject, c0987Xc)).m(p083k3.l.f25980A.f25996p.b(context, c1999sp.f20988e, c1999sp.f20989f).a("google.afma.response.normalize", Fp.f13417d, AbstractC0873Pa.f15390c)).c(), new C0957Va(9, c1999sp, c0973Wc), interfaceExecutorServiceC1504jC);
                Cw.h2(jbD2, new C0864Of(c1999sp, 18), interfaceExecutorServiceC1504jC);
                return jbD2;
            case 1:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() && (bundle = ((C0973Wc) obj4).f17262S) != null) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, bundle, "http-response-ready");
                }
                return new Fp((Jp) ((D4.b) obj3).get(), (JSONObject) ((D4.b) obj2).get(), (C0987Xc) ((D4.b) obj).get());
            default:
                Iterator it = ((List) obj4).iterator();
                while (it.hasNext()) {
                    InterfaceC2056tu interfaceC2056tu = (InterfaceC2056tu) ((D4.b) it.next()).get();
                    if (interfaceC2056tu != null) {
                        interfaceC2056tu.a(obj3);
                    }
                }
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() && (bundle2 = (Bundle) obj2) != null) {
                    Bundle bundle3 = (Bundle) obj;
                    p083k3.l.f25980A.f25990j.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (obj3 instanceof Bundle) {
                        bundle2.putLong("client-signals-end", jCurrentTimeMillis);
                        bundle2.putBundle("client_sig_latency_key", bundle3);
                    } else {
                        bundle2.putLong("gms-signals-end", jCurrentTimeMillis);
                        bundle2.putBundle("gms_sig_latency_key", bundle3);
                    }
                }
                return obj3;
        }
    }
}
