package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2037tb extends AbstractBinderC2328z5 implements InterfaceC1260eb {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f21077G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public p004a3.b f21078H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public InterfaceC1572kd f21079I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public R3.a f21080J;

    public BinderC2037tb(p136r3.a aVar) {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        this.f21077G = aVar;
    }

    public static final boolean C3(p090l3.b1 b1Var) {
        if (b1Var.f26522L) {
            return true;
        }
        p120p3.d dVar = C3097p.f26618f.f26619a;
        return p120p3.d.m();
    }

    public static final String D3(p090l3.b1 b1Var, String str) {
        String str2 = b1Var.f26537a0;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void A0() throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof p136r3.e) {
            try {
                ((p136r3.e) obj).onPause();
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                throw new RemoteException();
            }
        }
    }

    public final void A3(p090l3.b1 b1Var) {
        Bundle bundle = b1Var.f26529S;
        if (bundle == null || bundle.getBundle(this.f21077G.getClass().getName()) == null) {
            new Bundle();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void B() throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof p136r3.a) {
            p120p3.h.d("Can not show null mediated rewarded ad.");
            throw new RemoteException();
        }
        p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void B0(R3.a aVar) throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof p136r3.a) {
            p120p3.h.b("Show rewarded ad from adapter.");
            p120p3.h.d("Can not show null mediation rewarded ad.");
            throw new RemoteException();
        }
        p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    public final Bundle B3(p090l3.b1 b1Var, String str, String str2) throws RemoteException {
        p120p3.h.b("Server parameters: ".concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.f21077G instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (b1Var != null) {
                    bundle.putInt("tagForChildDirectedTreatment", b1Var.f26523M);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void D0(R3.a aVar, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb, M8 m8, ArrayList arrayList) throws RemoteException {
        Object obj = this.f21077G;
        boolean z7 = obj instanceof MediationNativeAdapter;
        if (!z7 && !(obj instanceof p136r3.a)) {
            p120p3.h.g(MediationNativeAdapter.class.getCanonicalName() + " or " + p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        p120p3.h.b("Requesting native ad from adapter.");
        if (z7) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                List list = b1Var.f26521K;
                HashSet hashSet = list != null ? new HashSet(list) : null;
                long j8 = b1Var.f26518H;
                if (j8 != -1) {
                    new Date(j8);
                }
                boolean zC3 = C3(b1Var);
                int i8 = b1Var.f26523M;
                boolean z8 = b1Var.f26534X;
                D3(b1Var, str);
                C2193wb c2193wb = new C2193wb(hashSet, zC3, i8, m8, arrayList, z8);
                Bundle bundle = b1Var.f26529S;
                Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
                this.f21078H = new p004a3.b(interfaceC1416hb);
                mediationNativeAdapter.requestNativeAd((Context) R3.b.v0(aVar), this.f21078H, B3(b1Var, str, str2), c2193wb, bundle2);
                return;
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                AbstractC2987b.e0(aVar, th, "adapter.requestNativeAd");
                throw new RemoteException();
            }
        }
        if (obj instanceof p136r3.a) {
            try {
                C1985sb c1985sb = new C1985sb(this, interfaceC1416hb, 3);
                B3(b1Var, str, str2);
                A3(b1Var);
                C3(b1Var);
                D3(b1Var, str);
                ((p136r3.a) obj).loadNativeAdMapper(new p136r3.k(), c1985sb);
            } catch (Throwable th2) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th2);
                AbstractC2987b.e0(aVar, th2, "adapter.loadNativeAdMapper");
                String message = th2.getMessage();
                if (TextUtils.isEmpty(message) || !message.equals("Method is not found")) {
                    throw new RemoteException();
                }
                try {
                    C1985sb c1985sb2 = new C1985sb(this, interfaceC1416hb, 2);
                    B3(b1Var, str, str2);
                    A3(b1Var);
                    C3(b1Var);
                    D3(b1Var, str);
                    ((p136r3.a) obj).loadNativeAd(new p136r3.k(), c1985sb2);
                } catch (Throwable th3) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th3);
                    AbstractC2987b.e0(aVar, th3, "adapter.loadNativeAd");
                    throw new RemoteException();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void E2(R3.a aVar, p090l3.d1 d1Var, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        p043f3.g gVar;
        Object obj = this.f21077G;
        boolean z7 = obj instanceof MediationBannerAdapter;
        if (!z7 && !(obj instanceof p136r3.a)) {
            p120p3.h.g(MediationBannerAdapter.class.getCanonicalName() + " or " + p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        p120p3.h.b("Requesting banner ad from adapter.");
        boolean z8 = d1Var.f26561T;
        int i8 = d1Var.f26549H;
        int i9 = d1Var.f26552K;
        if (z8) {
            p043f3.g gVar2 = new p043f3.g(i9, i8);
            gVar2.f25177d = true;
            gVar2.f25178e = i8;
            gVar = gVar2;
        } else {
            gVar = new p043f3.g(i9, i8, d1Var.f26548G);
        }
        if (!z7) {
            if (obj instanceof p136r3.a) {
                try {
                    C1985sb c1985sb = new C1985sb(this, interfaceC1416hb, 0);
                    B3(b1Var, str, str2);
                    A3(b1Var);
                    C3(b1Var);
                    D3(b1Var, str);
                    ((p136r3.a) obj).loadBannerAd(new p136r3.g(), c1985sb);
                    return;
                } catch (Throwable th) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                    AbstractC2987b.e0(aVar, th, "adapter.loadBannerAd");
                    throw new RemoteException();
                }
            }
            return;
        }
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj;
            List list = b1Var.f26521K;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j8 = b1Var.f26518H;
            if (j8 != -1) {
                new Date(j8);
            }
            boolean zC3 = C3(b1Var);
            int i10 = b1Var.f26523M;
            boolean z9 = b1Var.f26534X;
            D3(b1Var, str);
            C1933rb c1933rb = new C1933rb(hashSet, zC3, i10, z9);
            Bundle bundle = b1Var.f26529S;
            mediationBannerAdapter.requestBannerAd((Context) R3.b.v0(aVar), new p004a3.b(interfaceC1416hb), B3(b1Var, str, str2), gVar, c1933rb, bundle != null ? bundle.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } catch (Throwable th2) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th2);
            AbstractC2987b.e0(aVar, th2, "adapter.requestBannerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void H1(R3.a aVar) throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof p136r3.a) {
            p120p3.h.b("Show app open ad from adapter.");
            p120p3.h.d("Can not show null mediation app open ad.");
            throw new RemoteException();
        }
        p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void I0(R3.a aVar, InterfaceC1415ha interfaceC1415ha, List list) throws RemoteException {
        byte b8;
        Object obj = this.f21077G;
        if (!(obj instanceof p136r3.a)) {
            throw new RemoteException();
        }
        K4 k8 = new K4(20, interfaceC1415ha);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C1569ka c1569ka = (C1569ka) it.next();
            switch (c1569ka.f19616G) {
                case "banner":
                    b8 = 0;
                    break;
                case "native":
                    b8 = 4;
                    break;
                case "rewarded":
                    b8 = 2;
                    break;
                case "interstitial":
                    b8 = 1;
                    break;
                case "app_open":
                    b8 = 5;
                    break;
                case "app_open_ad":
                    b8 = 6;
                    break;
                case "rewarded_interstitial":
                    b8 = 3;
                    break;
                default:
                    b8 = -1;
                    break;
            }
            p043f3.a aVar2 = p043f3.a.APP_OPEN_AD;
            switch (b8) {
                case 0:
                    aVar2 = p043f3.a.BANNER;
                    break;
                case 1:
                    aVar2 = p043f3.a.INTERSTITIAL;
                    break;
                case 2:
                    aVar2 = p043f3.a.REWARDED;
                    break;
                case 3:
                    aVar2 = p043f3.a.REWARDED_INTERSTITIAL;
                    break;
                case 4:
                    aVar2 = p043f3.a.NATIVE;
                    break;
                case 5:
                    break;
                case 6:
                    if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.cb)).booleanValue()) {
                    }
                default:
                    aVar2 = null;
                    break;
            }
            if (aVar2 != null) {
                arrayList.add(new p096m2.e(14, aVar2, c1569ka.f19617H));
            }
        }
        ((p136r3.a) obj).initialize((Context) R3.b.v0(aVar), k8, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C1622lb N() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void O0(R3.a aVar) throws RemoteException {
        Object obj = this.f21077G;
        if ((obj instanceof p136r3.a) || (obj instanceof MediationInterstitialAdapter)) {
            if (obj instanceof MediationInterstitialAdapter) {
                T();
                return;
            } else {
                p120p3.h.b("Show interstitial ad from adapter.");
                p120p3.h.d("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
        p120p3.h.g(MediationInterstitialAdapter.class.getCanonicalName() + " or " + p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void O1(R3.a aVar, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        Object obj = this.f21077G;
        boolean z7 = obj instanceof MediationInterstitialAdapter;
        if (!z7 && !(obj instanceof p136r3.a)) {
            p120p3.h.g(MediationInterstitialAdapter.class.getCanonicalName() + " or " + p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        p120p3.h.b("Requesting interstitial ad from adapter.");
        if (!z7) {
            if (obj instanceof p136r3.a) {
                try {
                    C1985sb c1985sb = new C1985sb(this, interfaceC1416hb, 1);
                    B3(b1Var, str, str2);
                    A3(b1Var);
                    C3(b1Var);
                    D3(b1Var, str);
                    ((p136r3.a) obj).loadInterstitialAd(new p136r3.i(), c1985sb);
                    return;
                } catch (Throwable th) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                    AbstractC2987b.e0(aVar, th, "adapter.loadInterstitialAd");
                    throw new RemoteException();
                }
            }
            return;
        }
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj;
            List list = b1Var.f26521K;
            HashSet hashSet = list != null ? new HashSet(list) : null;
            long j8 = b1Var.f26518H;
            if (j8 != -1) {
                new Date(j8);
            }
            boolean zC3 = C3(b1Var);
            int i8 = b1Var.f26523M;
            boolean z8 = b1Var.f26534X;
            D3(b1Var, str);
            C1933rb c1933rb = new C1933rb(hashSet, zC3, i8, z8);
            Bundle bundle = b1Var.f26529S;
            mediationInterstitialAdapter.requestInterstitialAd((Context) R3.b.v0(aVar), new p004a3.b(interfaceC1416hb), B3(b1Var, str, str2), c1933rb, bundle != null ? bundle.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th2) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th2);
            AbstractC2987b.e0(aVar, th2, "adapter.requestInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void P0(R3.a aVar, InterfaceC1572kd interfaceC1572kd, List list) throws RemoteException {
        p120p3.h.g("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void T() throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof MediationInterstitialAdapter) {
            p120p3.h.b("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) obj).showInterstitial();
                return;
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                throw new RemoteException();
            }
        }
        p120p3.h.g(MediationInterstitialAdapter.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void W2(R3.a aVar, p090l3.d1 d1Var, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        Object obj = this.f21077G;
        if (!(obj instanceof p136r3.a)) {
            p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        p120p3.h.b("Requesting interscroller ad from adapter.");
        try {
            p136r3.a aVar2 = (p136r3.a) obj;
            p004a3.b bVar = new p004a3.b(this, interfaceC1416hb, aVar2, 12, 0);
            B3(b1Var, str, str2);
            A3(b1Var);
            C3(b1Var);
            D3(b1Var, str);
            int i8 = d1Var.f26552K;
            int i9 = d1Var.f26549H;
            p043f3.g gVar = new p043f3.g(i8, i9);
            gVar.f25179f = true;
            gVar.f25180g = i9;
            aVar2.loadInterscrollerAd(new p136r3.g(), bVar);
        } catch (Exception e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            AbstractC2987b.e0(aVar, e8, "adapter.loadInterscrollerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void f3(R3.a aVar, p090l3.b1 b1Var, InterfaceC1572kd interfaceC1572kd, String str) throws RemoteException {
        Object obj = this.f21077G;
        if ((obj instanceof p136r3.a) || Objects.equals(obj.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            this.f21080J = aVar;
            this.f21079I = interfaceC1572kd;
            interfaceC1572kd.zzl(new R3.b(obj));
            return;
        }
        p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void g2(R3.a aVar, p090l3.b1 b1Var, String str, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        Object obj = this.f21077G;
        if (!(obj instanceof p136r3.a)) {
            p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        p120p3.h.b("Requesting rewarded interstitial ad from adapter.");
        try {
            C1985sb c1985sb = new C1985sb(this, interfaceC1416hb, 4);
            B3(b1Var, str, null);
            A3(b1Var);
            C3(b1Var);
            D3(b1Var, str);
            ((p136r3.a) obj).loadRewardedInterstitialAd(new p136r3.m(), c1985sb);
        } catch (Exception e8) {
            AbstractC2987b.e0(aVar, e8, "adapter.loadRewardedInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void i0(R3.a aVar) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void j() throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof p136r3.e) {
            try {
                ((p136r3.e) obj).onResume();
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void k() throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof p136r3.e) {
            try {
                ((p136r3.e) obj).onDestroy();
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C1570kb l() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void l1(R3.a aVar, p090l3.b1 b1Var, String str, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        Object obj = this.f21077G;
        if (!(obj instanceof p136r3.a)) {
            p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        p120p3.h.b("Requesting rewarded ad from adapter.");
        try {
            C1985sb c1985sb = new C1985sb(this, interfaceC1416hb, 4);
            B3(b1Var, str, null);
            A3(b1Var);
            C3(b1Var);
            D3(b1Var, str);
            ((p136r3.a) obj).loadRewardedAd(new p136r3.m(), c1985sb);
        } catch (Exception e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            AbstractC2987b.e0(aVar, e8, "adapter.loadRewardedAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void l2(boolean z7) {
        Object obj = this.f21077G;
        if (obj instanceof AbstractAdViewAdapter) {
            try {
                ((AbstractAdViewAdapter) obj).onImmersiveModeUpdated(z7);
                return;
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                return;
            }
        }
        p120p3.h.b(AbstractAdViewAdapter.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void q1(R3.a aVar, p090l3.b1 b1Var, String str, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        Object obj = this.f21077G;
        if (!(obj instanceof p136r3.a)) {
            p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        p120p3.h.b("Requesting app open ad from adapter.");
        try {
            C1985sb c1985sb = new C1985sb(this, interfaceC1416hb, 5);
            B3(b1Var, str, null);
            A3(b1Var);
            C3(b1Var);
            D3(b1Var, str);
            ((p136r3.a) obj).loadAppOpenAd(new p136r3.f(), c1985sb);
        } catch (Exception e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            AbstractC2987b.e0(aVar, e8, "adapter.loadAppOpenAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void q3(p090l3.b1 b1Var, String str) throws RemoteException {
        z3(b1Var, str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final boolean r() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) throws RemoteException {
        InterfaceC1572kd c1470id;
        InterfaceC1416hb c1312fb = null;
        InterfaceC1416hb c1312fb2 = null;
        InterfaceC1416hb c1312fb3 = null;
        InterfaceC1416hb c1312fb4 = null;
        InterfaceC1415ha c1363ga = null;
        InterfaceC1416hb c1312fb5 = null;
        interfaceC1295f9 = null;
        InterfaceC1295f9 interfaceC1295f9 = null;
        InterfaceC1416hb c1312fb6 = null;
        InterfaceC1572kd c1470id2 = null;
        InterfaceC1416hb c1312fb7 = null;
        InterfaceC1416hb c1312fb8 = null;
        InterfaceC1416hb c1312fb9 = null;
        switch (i8) {
            case 1:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                p090l3.d1 d1Var = (p090l3.d1) A5.a(parcel, p090l3.d1.CREATOR);
                p090l3.b1 b1Var = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string = parcel.readString();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb = iInterfaceQueryLocalInterface instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface : new C1312fb(strongBinder);
                }
                InterfaceC1416hb interfaceC1416hb = c1312fb;
                A5.b(parcel);
                E2(aVarJ0, d1Var, b1Var, string, null, interfaceC1416hb);
                parcel2.writeNoException();
                return true;
            case 2:
                R3.a aVarZzn = zzn();
                parcel2.writeNoException();
                A5.e(parcel2, aVarZzn);
                return true;
            case 3:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                p090l3.b1 b1Var2 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string2 = parcel.readString();
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb9 = iInterfaceQueryLocalInterface2 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface2 : new C1312fb(strongBinder2);
                }
                InterfaceC1416hb interfaceC1416hb2 = c1312fb9;
                A5.b(parcel);
                O1(aVarJ1, b1Var2, string2, null, interfaceC1416hb2);
                parcel2.writeNoException();
                return true;
            case 4:
                T();
                parcel2.writeNoException();
                return true;
            case 5:
                k();
                parcel2.writeNoException();
                return true;
            case 6:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                p090l3.d1 d1Var2 = (p090l3.d1) A5.a(parcel, p090l3.d1.CREATOR);
                p090l3.b1 b1Var3 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb8 = iInterfaceQueryLocalInterface3 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface3 : new C1312fb(strongBinder3);
                }
                InterfaceC1416hb interfaceC1416hb3 = c1312fb8;
                A5.b(parcel);
                E2(aVarJ2, d1Var2, b1Var3, string3, string4, interfaceC1416hb3);
                parcel2.writeNoException();
                return true;
            case 7:
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                p090l3.b1 b1Var4 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb7 = iInterfaceQueryLocalInterface4 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface4 : new C1312fb(strongBinder4);
                }
                InterfaceC1416hb interfaceC1416hb4 = c1312fb7;
                A5.b(parcel);
                O1(aVarJ3, b1Var4, string5, string6, interfaceC1416hb4);
                parcel2.writeNoException();
                return true;
            case 8:
                A0();
                parcel2.writeNoException();
                return true;
            case 9:
                j();
                parcel2.writeNoException();
                return true;
            case 10:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                p090l3.b1 b1Var5 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                parcel.readString();
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
                    c1470id2 = iInterfaceQueryLocalInterface5 instanceof InterfaceC1572kd ? (InterfaceC1572kd) iInterfaceQueryLocalInterface5 : new C1470id(strongBinder5, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener", 0);
                }
                String string7 = parcel.readString();
                A5.b(parcel);
                f3(aVarJ4, b1Var5, c1470id2, string7);
                parcel2.writeNoException();
                return true;
            case 11:
                p090l3.b1 b1Var6 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string8 = parcel.readString();
                A5.b(parcel);
                z3(b1Var6, string8);
                parcel2.writeNoException();
                return true;
            case 12:
                B();
                throw null;
            case 13:
                boolean zZzN = zzN();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zZzN ? 1 : 0);
                return true;
            case 14:
                R3.a aVarJ5 = R3.b.j0(parcel.readStrongBinder());
                p090l3.b1 b1Var7 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb6 = iInterfaceQueryLocalInterface6 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface6 : new C1312fb(strongBinder6);
                }
                InterfaceC1416hb interfaceC1416hb5 = c1312fb6;
                M8 m8 = (M8) A5.a(parcel, M8.CREATOR);
                ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                A5.b(parcel);
                D0(aVarJ5, b1Var7, string9, string10, interfaceC1416hb5, m8, arrayListCreateStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 17:
                Bundle bundle = new Bundle();
                parcel2.writeNoException();
                A5.d(parcel2, bundle);
                return true;
            case 18:
                Bundle bundle2 = new Bundle();
                parcel2.writeNoException();
                A5.d(parcel2, bundle2);
                return true;
            case 19:
                Bundle bundle3 = new Bundle();
                parcel2.writeNoException();
                A5.d(parcel2, bundle3);
                return true;
            case 20:
                p090l3.b1 b1Var8 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string11 = parcel.readString();
                parcel.readString();
                A5.b(parcel);
                z3(b1Var8, string11);
                parcel2.writeNoException();
                return true;
            case 21:
                R3.a aVarJ6 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                i0(aVarJ6);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                ClassLoader classLoader2 = A5.f11962a;
                parcel2.writeInt(0);
                return true;
            case 23:
                R3.a aVarJ7 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
                    c1470id = iInterfaceQueryLocalInterface7 instanceof InterfaceC1572kd ? (InterfaceC1572kd) iInterfaceQueryLocalInterface7 : new C1470id(strongBinder7, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener", 0);
                } else {
                    c1470id = null;
                }
                ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
                A5.b(parcel);
                P0(aVarJ7, c1470id, arrayListCreateStringArrayList2);
                throw null;
            case 24:
                p004a3.b bVar = this.f21078H;
                if (bVar != null) {
                    C1347g9 c1347g9 = (C1347g9) bVar.f8652J;
                    if (c1347g9 instanceof C1347g9) {
                        interfaceC1295f9 = c1347g9.f18907a;
                    }
                }
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1295f9);
                return true;
            case 25:
                boolean zF = A5.f(parcel);
                A5.b(parcel);
                l2(zF);
                parcel2.writeNoException();
                return true;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                p090l3.B0 b0Zzh = zzh();
                parcel2.writeNoException();
                A5.e(parcel2, b0Zzh);
                return true;
            case 27:
                InterfaceC1830pb interfaceC1830pbZzk = zzk();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1830pbZzk);
                return true;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                R3.a aVarJ8 = R3.b.j0(parcel.readStrongBinder());
                p090l3.b1 b1Var9 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string12 = parcel.readString();
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb5 = iInterfaceQueryLocalInterface8 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface8 : new C1312fb(strongBinder8);
                }
                A5.b(parcel);
                l1(aVarJ8, b1Var9, string12, c1312fb5);
                parcel2.writeNoException();
                return true;
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
            default:
                return false;
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                R3.a aVarJ9 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                B0(aVarJ9);
                throw null;
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                R3.a aVarJ10 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
                    c1363ga = iInterfaceQueryLocalInterface9 instanceof InterfaceC1415ha ? (InterfaceC1415ha) iInterfaceQueryLocalInterface9 : new C1363ga(strongBinder9, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback", 0);
                }
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(C1569ka.CREATOR);
                A5.b(parcel);
                I0(aVarJ10, c1363ga, arrayListCreateTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                R3.a aVarJ11 = R3.b.j0(parcel.readStrongBinder());
                p090l3.b1 b1Var10 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string13 = parcel.readString();
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb4 = iInterfaceQueryLocalInterface10 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface10 : new C1312fb(strongBinder10);
                }
                A5.b(parcel);
                g2(aVarJ11, b1Var10, string13, c1312fb4);
                parcel2.writeNoException();
                return true;
            case 33:
                zzl();
                parcel2.writeNoException();
                A5.d(parcel2, null);
                return true;
            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                zzm();
                parcel2.writeNoException();
                A5.d(parcel2, null);
                return true;
            case 35:
                R3.a aVarJ12 = R3.b.j0(parcel.readStrongBinder());
                p090l3.d1 d1Var3 = (p090l3.d1) A5.a(parcel, p090l3.d1.CREATOR);
                p090l3.b1 b1Var11 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb3 = iInterfaceQueryLocalInterface11 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface11 : new C1312fb(strongBinder11);
                }
                InterfaceC1416hb interfaceC1416hb6 = c1312fb3;
                A5.b(parcel);
                W2(aVarJ12, d1Var3, b1Var11, string14, string15, interfaceC1416hb6);
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 37:
                R3.a aVarJ13 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                O0(aVarJ13);
                parcel2.writeNoException();
                return true;
            case 38:
                R3.a aVarJ14 = R3.b.j0(parcel.readStrongBinder());
                p090l3.b1 b1Var12 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                String string16 = parcel.readString();
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c1312fb2 = iInterfaceQueryLocalInterface12 instanceof InterfaceC1416hb ? (InterfaceC1416hb) iInterfaceQueryLocalInterface12 : new C1312fb(strongBinder12);
                }
                A5.b(parcel);
                q1(aVarJ14, b1Var12, string16, c1312fb2);
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                R3.a aVarJ15 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                H1(aVarJ15);
                throw null;
        }
    }

    public final void z3(p090l3.b1 b1Var, String str) throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof p136r3.a) {
            l1(this.f21080J, b1Var, str, new BinderC2089ub((p136r3.a) obj, this.f21079I));
            return;
        }
        p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final boolean zzN() throws RemoteException {
        Object obj = this.f21077G;
        if ((obj instanceof p136r3.a) || Objects.equals(obj.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            return this.f21079I != null;
        }
        p120p3.h.g(p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final p090l3.B0 zzh() {
        Object obj = this.f21077G;
        if (obj instanceof AbstractAdViewAdapter) {
            try {
                return ((AbstractAdViewAdapter) obj).getVideoController();
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final InterfaceC1518jb zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final InterfaceC1830pb zzk() {
        com.google.ads.mediation.a aVar;
        Object obj = this.f21077G;
        if (!(obj instanceof MediationNativeAdapter)) {
            boolean z7 = obj instanceof p136r3.a;
            return null;
        }
        p004a3.b bVar = this.f21078H;
        if (bVar == null || (aVar = (com.google.ads.mediation.a) bVar.f8651I) == null) {
            return null;
        }
        return new BinderC2141vb(aVar);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C0860Ob zzl() {
        Object obj = this.f21077G;
        if (!(obj instanceof p136r3.a)) {
            return null;
        }
        ((p136r3.a) obj).getVersionInfo();
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C0860Ob zzm() {
        Object obj = this.f21077G;
        if (!(obj instanceof p136r3.a)) {
            return null;
        }
        ((p136r3.a) obj).getSDKVersionInfo();
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final R3.a zzn() throws RemoteException {
        Object obj = this.f21077G;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return new R3.b(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
                throw new RemoteException();
            }
        }
        if (obj instanceof p136r3.a) {
            return new R3.b(null);
        }
        p120p3.h.g(MediationBannerAdapter.class.getCanonicalName() + " or " + p136r3.a.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    public BinderC2037tb(p136r3.e eVar) {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        this.f21077G = eVar;
    }
}
