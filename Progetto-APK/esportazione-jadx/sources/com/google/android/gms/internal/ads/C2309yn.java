package com.google.android.gms.internal.ads;

import A0.C0022w;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p090l3.C3099q;
import p090l3.C3117z0;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2309yn implements InterfaceC1476ik, InterfaceC3067a, InterfaceC0659Aj, InterfaceC2045tj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f22053G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1229dw f22054H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0738Fn f22055I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Tv f22056J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Ov f22057K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1172cq f22058L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f22059M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Boolean f22060N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f22061O = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15905o6)).booleanValue();

    public C2309yn(Context context, C1229dw c1229dw, C0738Fn c0738Fn, Tv tv, Ov ov, C1172cq c1172cq, String str) {
        this.f22053G = context;
        this.f22054H = c1229dw;
        this.f22055I = c0738Fn;
        this.f22056J = tv;
        this.f22057K = ov;
        this.f22058L = c1172cq;
        this.f22059M = str;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2045tj
    public final void H(C1322fl c1322fl) {
        if (this.f22061O) {
            C0871Om c0871OmA = a("ifts");
            c0871OmA.n("reason", "exception");
            if (!TextUtils.isEmpty(c1322fl.getMessage())) {
                c0871OmA.n("msg", c1322fl.getMessage());
            }
            c0871OmA.u();
        }
    }

    public final C0871Om a(String str) {
        Tv tv = this.f22056J;
        C2246xc c2246xc = tv.f16755b;
        C0871Om c0871OmA = this.f22055I.a();
        c0871OmA.n("gqi", ((Qv) c2246xc.f21883I).f16150b);
        Ov ov = this.f22057K;
        c0871OmA.q(ov);
        c0871OmA.n("action", str);
        c0871OmA.n("ad_format", this.f22059M.toUpperCase(Locale.ROOT));
        List list = ov.f15284t;
        if (!list.isEmpty()) {
            c0871OmA.n("ancn", (String) list.get(0));
        }
        if (ov.f15263i0) {
            p083k3.l lVar = p083k3.l.f25980A;
            c0871OmA.n("device_connectivity", true != lVar.f25987g.a(this.f22053G) ? "offline" : "online");
            lVar.f25990j.getClass();
            c0871OmA.n("event_timestamp", String.valueOf(System.currentTimeMillis()));
            c0871OmA.n("offline_ad", "1");
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15968w6)).booleanValue()) {
            Xu xu = tv.f16754a;
            boolean z7 = U2.m.p((Yv) xu.f17529H) != 1;
            c0871OmA.n("scar", String.valueOf(z7));
            if (z7) {
                p090l3.b1 b1Var = ((Yv) xu.f17529H).f17677d;
                c0871OmA.n("ragent", b1Var.f26532V);
                c0871OmA.n("rtype", U2.m.j(U2.m.k(b1Var)));
            }
        }
        return c0871OmA;
    }

    public final void b(C0871Om c0871Om) {
        if (!this.f22057K.f15263i0) {
            c0871Om.u();
            return;
        }
        C0783In c0783In = ((C0738Fn) c0871Om.f15196H).f13412a;
        String strA = c0783In.f14208f.a((Map) c0871Om.f15197I);
        p083k3.l.f25980A.f25990j.getClass();
        this.f22058L.E(new C0022w(System.currentTimeMillis(), 2, ((Qv) this.f22056J.f16755b.f21883I).f16150b, strA));
    }

    public final boolean c() {
        String strE;
        if (this.f22060N == null) {
            synchronized (this) {
                if (this.f22060N == null) {
                    String str = (String) C3099q.f26624d.f26627c.a(Q7.f15877l1);
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    try {
                        strE = p113o3.O.E(this.f22053G);
                    } catch (RemoteException unused) {
                        strE = null;
                    }
                    boolean zMatches = false;
                    if (str != null && strE != null) {
                        try {
                            zMatches = Pattern.matches(str, strE);
                        } catch (RuntimeException e8) {
                            p083k3.l.f25980A.f25987g.i("CsiActionsListener.isPatternMatched", e8);
                        }
                    }
                    this.f22060N = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.f22060N.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    @Override // com.google.android.gms.internal.ads.InterfaceC2045tj
    public final void g(C3117z0 c3117z0) {
        String strGroup;
        C3117z0 c3117z1;
        if (this.f22061O) {
            C0871Om c0871OmA = a("ifts");
            c0871OmA.n("reason", "adapter");
            int i8 = c3117z0.f26629G;
            if (c3117z0.f26631I.equals("com.google.android.gms.ads") && (c3117z1 = c3117z0.f26632J) != null && !c3117z1.f26631I.equals("com.google.android.gms.ads")) {
                c3117z0 = c3117z0.f26632J;
                i8 = c3117z0.f26629G;
            }
            String str = c3117z0.f26630H;
            if (i8 >= 0) {
                c0871OmA.n("arec", String.valueOf(i8));
            }
            Pattern pattern = this.f22054H.f18389a;
            if (pattern == null || str == null) {
                strGroup = null;
            } else {
                Matcher matcher = pattern.matcher(str);
                if (matcher.find()) {
                    strGroup = matcher.group();
                } else {
                    strGroup = null;
                }
            }
            if (strGroup != null) {
                c0871OmA.n("areec", strGroup);
            }
            c0871OmA.u();
        }
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        if (this.f22057K.f15263i0) {
            b(a("click"));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2045tj
    public final void zzb() {
        if (this.f22061O) {
            C0871Om c0871OmA = a("ifts");
            c0871OmA.n("reason", "blocked");
            c0871OmA.u();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1476ik
    public final void zzi() {
        if (c()) {
            a("adapter_shown").u();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1476ik
    public final void zzj() {
        if (c()) {
            a("adapter_impression").u();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        if (c() || this.f22057K.f15263i0) {
            b(a("impression"));
        }
    }
}
