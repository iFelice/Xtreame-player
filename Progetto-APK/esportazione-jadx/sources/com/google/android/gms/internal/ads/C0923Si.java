package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Si, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0923Si implements InterfaceC1022Zj, InterfaceC0925Sk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public C0931Tc f16499G;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Context f16501I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Uw f16502J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p120p3.a f16503K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Executor f16504L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f16505M = false;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f16506N = false;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicBoolean f16500H = new AtomicBoolean();

    public C0923Si(Context context, Uw uw, p120p3.a aVar, C1936re c1936re) {
        this.f16501I = context;
        this.f16502J = uw;
        this.f16503K = aVar;
        this.f16504L = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003a  */
    public final void a() {
        C0931Tc c0931Tc;
        int i8;
        C0887Qa c0887QaB;
        if (!this.f16500H.getAndSet(true)) {
            if (((Boolean) AbstractC1915r8.f20688k.l()).booleanValue()) {
                i8 = 2;
            } else {
                i8 = 3;
                if (!((Boolean) AbstractC1915r8.f20689l.l()).booleanValue()) {
                    if (((Boolean) AbstractC1915r8.f20687j.l()).booleanValue()) {
                        try {
                            String strOptString = new JSONObject(p083k3.l.f25980A.f25987g.d().y().f18944e).optString("local_flag_write");
                            if (TextUtils.equals(strOptString, "client")) {
                                i8 = 2;
                            } else if (!TextUtils.equals(strOptString, "service")) {
                                i8 = 1;
                            }
                        } catch (JSONException unused) {
                        }
                    } else {
                        i8 = 1;
                    }
                }
            }
            int i9 = i8 - 1;
            Uw uw = this.f16502J;
            Context context = this.f16501I;
            if (i9 == 1) {
                c0887QaB = p083k3.l.f25980A.f25996p.b(context, p120p3.a.i(), uw);
            } else if (i9 == 2) {
                c0887QaB = p083k3.l.f25980A.f25996p.n(context, p120p3.a.i(), uw);
            }
            C0650Aa c0650Aa = AbstractC0873Pa.f15389b;
            this.f16499G = new C0931Tc(context, c0887QaB.a("google.afma.sdkConstants.getSdkConstants", c0650Aa, c0650Aa), this.f16503K);
            this.f16505M = true;
        }
        if (this.f16505M && (c0931Tc = this.f16499G) != null) {
            D4.b bVarY = c0931Tc.y();
            if (!this.f16506N && ((Boolean) AbstractC1604l8.f19720i.l()).booleanValue()) {
                bVarY.a(new RunnableC0878Pf(this, 24), this.f16504L);
            }
            AbstractC2987b.d0(bVarY, "persistFlagsClient");
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void b(String str) {
        a();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void c(p167v3.r rVar) {
        a();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
        a();
    }
}
