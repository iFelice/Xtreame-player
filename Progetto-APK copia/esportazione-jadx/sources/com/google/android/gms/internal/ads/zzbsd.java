package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class zzbsd implements MediationInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Activity f22241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p136r3.j f22242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Uri f22243c;

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onDestroy() {
        p120p3.h.b("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onPause() {
        p120p3.h.b("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void onResume() {
        p120p3.h.b("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, p136r3.j jVar, Bundle bundle, p136r3.d dVar, Bundle bundle2) {
        this.f22242b = jVar;
        if (jVar == null) {
            p120p3.h.g("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            p120p3.h.g("AdMobCustomTabs can only work with Activity context. Bailing out.");
            ((p004a3.b) this.f22242b).f();
            return;
        }
        if (!C1036a8.a(context)) {
            p120p3.h.g("Default browser does not support custom tabs. Bailing out.");
            ((p004a3.b) this.f22242b).f();
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            p120p3.h.g("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            ((p004a3.b) this.f22242b).f();
        } else {
            this.f22241a = (Activity) context;
            this.f22243c = Uri.parse(string);
            ((p004a3.b) this.f22242b).j();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        p096m2.l lVarA = new p109o.g().a();
        ((Intent) lVarA.f27231H).setData(this.f22243c);
        p113o3.O.f27924l.post(new RunnableC0755Ha(this, new AdOverlayInfoParcel(new p105n3.f((Intent) lVarA.f27231H, null), null, new C0874Pb(this), null, new p120p3.a(0, 0, false, false), null, null), 10));
        p083k3.l lVar = p083k3.l.f25980A;
        C1573ke c1573ke = lVar.f25987g.f19816l;
        c1573ke.getClass();
        lVar.f25990j.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (c1573ke.f19618a) {
            try {
                if (c1573ke.f19620c == 3) {
                    if (c1573ke.f19619b + ((Long) C3099q.f26624d.f26627c.a(Q7.f15975x5)).longValue() <= jCurrentTimeMillis) {
                        c1573ke.f19620c = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        lVar.f25990j.getClass();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        synchronized (c1573ke.f19618a) {
            try {
                if (c1573ke.f19620c != 2) {
                    return;
                }
                c1573ke.f19620c = 3;
                if (c1573ke.f19620c == 3) {
                    c1573ke.f19619b = jCurrentTimeMillis2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
