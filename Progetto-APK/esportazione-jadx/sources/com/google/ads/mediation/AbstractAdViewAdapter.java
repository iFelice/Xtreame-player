package com.google.ads.mediation;

import D0.C0117g;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.internal.ads.BinderC1107bc;
import com.google.android.gms.internal.ads.C1932ra;
import com.google.android.gms.internal.ads.C2193wb;
import com.google.android.gms.internal.ads.C9;
import com.google.android.gms.internal.ads.D9;
import com.google.android.gms.internal.ads.M8;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import p043f3.e;
import p043f3.f;
import p043f3.g;
import p090l3.B0;
import p090l3.C3097p;
import p090l3.F;
import p090l3.F0;
import p090l3.J;
import p090l3.N0;
import p090l3.O0;
import p090l3.W0;
import p090l3.Y0;
import p120p3.h;
import p136r3.j;
import p136r3.l;
import p136r3.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private p043f3.d adLoader;
    protected AdView mAdView;
    protected p128q3.a mInterstitialAd;

    public f buildAdRequest(Context context, p136r3.d dVar, Bundle bundle, Bundle bundle2) {
        e eVar = new e(3);
        Set setD = dVar.d();
        if (setD != null) {
            Iterator it = setD.iterator();
            while (it.hasNext()) {
                ((F0) eVar.f10616G).f26449a.add((String) it.next());
            }
        }
        if (dVar.c()) {
            p120p3.d dVar2 = C3097p.f26618f.f26619a;
            ((F0) eVar.f10616G).f26452d.add(p120p3.d.p(context));
        }
        if (dVar.a() != -1) {
            ((F0) eVar.f10616G).f26456h = dVar.a() != 1 ? 0 : 1;
        }
        ((F0) eVar.f10616G).f26457i = dVar.b();
        eVar.e(buildExtrasBundle(bundle, bundle2));
        return new f(eVar);
    }

    public abstract Bundle buildExtrasBundle(Bundle bundle, Bundle bundle2);

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.mAdView;
    }

    public p128q3.a getInterstitialAd() {
        return this.mInterstitialAd;
    }

    public B0 getVideoController() {
        B0 b8;
        AdView adView = this.mAdView;
        if (adView == null) {
            return null;
        }
        p004a3.b bVar = adView.f25183G.f26475c;
        synchronized (bVar.f8650H) {
            b8 = (B0) bVar.f8651I;
        }
        return b8;
    }

    public p043f3.c newAdLoader(Context context, String str) {
        return new p043f3.c(context, str);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p136r3.e, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onDestroy() {
        AdView adView = this.mAdView;
        if (adView != null) {
            adView.a();
            this.mAdView = null;
        }
        if (this.mInterstitialAd != null) {
            this.mInterstitialAd = null;
        }
        if (this.adLoader != null) {
            this.adLoader = null;
        }
    }

    public void onImmersiveModeUpdated(boolean z7) {
        p128q3.a aVar = this.mInterstitialAd;
        if (aVar != null) {
            try {
                J j8 = ((C1932ra) aVar).f20740c;
                if (j8 != null) {
                    j8.H2(z7);
                }
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p136r3.e, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onPause() {
        AdView adView = this.mAdView;
        if (adView != null) {
            adView.c();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, p136r3.e, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onResume() {
        AdView adView = this.mAdView;
        if (adView != null) {
            adView.d();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, p136r3.h hVar, Bundle bundle, g gVar, p136r3.d dVar, Bundle bundle2) {
        AdView adView = new AdView(context);
        this.mAdView = adView;
        adView.setAdSize(new g(gVar.f25174a, gVar.f25175b));
        this.mAdView.setAdUnitId(getAdUnitId(bundle));
        this.mAdView.setAdListener(new b(this, hVar));
        this.mAdView.b(buildAdRequest(context, dVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, j jVar, Bundle bundle, p136r3.d dVar, Bundle bundle2) {
        p128q3.a.a(context, getAdUnitId(bundle), buildAdRequest(context, dVar, bundle2, bundle), new c(this, jVar));
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d5  */
    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, l lVar, Bundle bundle, n nVar, Bundle bundle2) {
        boolean z7;
        int i8;
        int i9;
        p067i3.c cVar;
        C0117g c0117g;
        boolean z8;
        int i10;
        int i11;
        int i12;
        boolean z9;
        int i13;
        int i14;
        C0117g c0117g2;
        u3.c cVar2;
        int i15;
        p043f3.d dVar;
        d dVar2 = new d(this, lVar);
        p043f3.c cVarNewAdLoader = newAdLoader(context, bundle.getString(AD_UNIT_ID_PARAMETER));
        cVarNewAdLoader.getClass();
        F f8 = cVarNewAdLoader.f25160b;
        try {
            f8.J1(new W0(dVar2));
        } catch (RemoteException e8) {
            h.h("Failed to set AdListener.", e8);
        }
        C2193wb c2193wb = (C2193wb) nVar;
        M8 m8 = c2193wb.f21702d;
        C0117g c0117g3 = null;
        if (m8 == null) {
            cVar = new p067i3.c();
            cVar.f25563a = false;
            cVar.f25564b = -1;
            cVar.f25565c = 0;
            cVar.f25566d = false;
            cVar.f25567e = 1;
            cVar.f25568f = null;
            cVar.f25569g = false;
        } else {
            int i16 = m8.f14643G;
            if (i16 != 2) {
                if (i16 != 3) {
                    if (i16 != 4) {
                        z7 = false;
                        i9 = 1;
                        i8 = 0;
                    } else {
                        z7 = m8.f14649M;
                        i8 = m8.f14650N;
                    }
                    p067i3.c cVar3 = new p067i3.c();
                    cVar3.f25563a = m8.f14644H;
                    cVar3.f25564b = m8.f14645I;
                    cVar3.f25565c = i8;
                    cVar3.f25566d = m8.f14646J;
                    cVar3.f25567e = i9;
                    cVar3.f25568f = c0117g3;
                    cVar3.f25569g = z7;
                    cVar = cVar3;
                } else {
                    z7 = false;
                    i8 = 0;
                }
                Y0 y7 = m8.f14648L;
                c0117g3 = y7 != null ? new C0117g(y7) : null;
            } else {
                c0117g3 = null;
                z7 = false;
                i8 = 0;
            }
            i9 = m8.f14647K;
            p067i3.c cVar4 = new p067i3.c();
            cVar4.f25563a = m8.f14644H;
            cVar4.f25564b = m8.f14645I;
            cVar4.f25565c = i8;
            cVar4.f25566d = m8.f14646J;
            cVar4.f25567e = i9;
            cVar4.f25568f = c0117g3;
            cVar4.f25569g = z7;
            cVar = cVar4;
        }
        try {
            f8.i3(new M8(cVar));
        } catch (RemoteException e9) {
            h.h("Failed to specify native ad options", e9);
        }
        M8 m9 = c2193wb.f21702d;
        if (m9 == null) {
            cVar2 = new u3.c();
            cVar2.f30496a = false;
            cVar2.f30497b = 0;
            cVar2.f30498c = false;
            cVar2.f30499d = 1;
            cVar2.f30500e = null;
            cVar2.f30501f = false;
            cVar2.f30502g = false;
            cVar2.f30503h = 0;
            cVar2.f30504i = 1;
        } else {
            boolean z10 = false;
            int i17 = m9.f14643G;
            if (i17 != 2) {
                if (i17 != 3) {
                    if (i17 != 4) {
                        c0117g2 = null;
                        i13 = 1;
                        z8 = false;
                        i14 = 1;
                        i11 = 0;
                        i12 = 0;
                        z9 = false;
                    } else {
                        int i18 = m9.f14653Q;
                        if (i18 == 0) {
                            i15 = 1;
                        } else if (i18 == 2) {
                            i15 = 3;
                        } else if (i18 == 1) {
                            i15 = 2;
                        } else {
                            i15 = 1;
                        }
                        boolean z11 = m9.f14649M;
                        int i19 = m9.f14650N;
                        i11 = m9.f14651O;
                        z9 = m9.f14652P;
                        i12 = i19;
                        z10 = z11;
                    }
                    u3.c cVar5 = new u3.c();
                    cVar5.f30496a = m9.f14644H;
                    cVar5.f30497b = i12;
                    cVar5.f30498c = m9.f14646J;
                    cVar5.f30499d = i14;
                    cVar5.f30500e = c0117g2;
                    cVar5.f30501f = z8;
                    cVar5.f30502g = z9;
                    cVar5.f30503h = i11;
                    cVar5.f30504i = i13;
                    cVar2 = cVar5;
                } else {
                    i15 = 1;
                    i11 = 0;
                    i12 = 0;
                    z9 = false;
                }
                Y0 y8 = m9.f14648L;
                boolean z12 = z10;
                if (y8 != null) {
                    C0117g c0117g4 = new C0117g(y8);
                    i10 = i15;
                    z8 = z12;
                    c0117g = c0117g4;
                } else {
                    i10 = i15;
                    z8 = z12;
                    c0117g = null;
                }
            } else {
                c0117g = null;
                z8 = false;
                i10 = 1;
                i11 = 0;
                i12 = 0;
                z9 = false;
            }
            i13 = i10;
            i14 = m9.f14647K;
            c0117g2 = c0117g;
            u3.c cVar6 = new u3.c();
            cVar6.f30496a = m9.f14644H;
            cVar6.f30497b = i12;
            cVar6.f30498c = m9.f14646J;
            cVar6.f30499d = i14;
            cVar6.f30500e = c0117g2;
            cVar6.f30501f = z8;
            cVar6.f30502g = z9;
            cVar6.f30503h = i11;
            cVar6.f30504i = i13;
            cVar2 = cVar6;
        }
        try {
            boolean z13 = cVar2.f30496a;
            boolean z14 = cVar2.f30498c;
            int i20 = cVar2.f30499d;
            C0117g c0117g5 = cVar2.f30500e;
            f8.i3(new M8(4, z13, -1, z14, i20, c0117g5 != null ? new Y0(c0117g5) : null, cVar2.f30501f, cVar2.f30497b, cVar2.f30503h, cVar2.f30502g, cVar2.f30504i - 1));
        } catch (RemoteException e10) {
            h.h("Failed to specify native ad options", e10);
        }
        ArrayList arrayList = c2193wb.f21703e;
        if (arrayList.contains("6")) {
            try {
                f8.e1(new BinderC1107bc(dVar2, 1));
            } catch (RemoteException e11) {
                h.h("Failed to add google native ad listener", e11);
            }
        }
        if (arrayList.contains("3")) {
            HashMap map = c2193wb.f21705g;
            for (String str : map.keySet()) {
                p004a3.b bVar = new p004a3.b(dVar2, true != ((Boolean) map.get(str)).booleanValue() ? null : dVar2);
                try {
                    f8.L2(str, new D9(bVar), ((d) bVar.f8651I) == null ? null : new C9(bVar));
                } catch (RemoteException e12) {
                    h.h("Failed to add custom template ad listener", e12);
                }
            }
        }
        Context context2 = cVarNewAdLoader.f25159a;
        try {
            dVar = new p043f3.d(context2, f8.zze());
        } catch (RemoteException e13) {
            h.e("Failed to build AdLoader.", e13);
            dVar = new p043f3.d(context2, new N0(new O0()));
        }
        this.adLoader = dVar;
        dVar.a(buildAdRequest(context, nVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        p128q3.a aVar = this.mInterstitialAd;
        if (aVar != null) {
            aVar.b(null);
        }
    }
}
