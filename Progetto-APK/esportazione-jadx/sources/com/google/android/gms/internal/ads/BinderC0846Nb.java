package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Nb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0846Nb extends AbstractBinderC2328z5 implements InterfaceC0771Ib {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f14908H = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final RtbAdapter f14909G;

    public BinderC0846Nb(RtbAdapter rtbAdapter) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        this.f14909G = rtbAdapter;
    }

    public static final void A3(String str) throws RemoteException {
        p120p3.h.g("Server parameters: ".concat(String.valueOf(str)));
        try {
            new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle = new Bundle();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            }
        } catch (JSONException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            throw new RemoteException();
        }
    }

    public static final void B3(p090l3.b1 b1Var) {
        if (b1Var.f26522L) {
            return;
        }
        p120p3.d dVar = C3097p.f26618f.f26619a;
        p120p3.d.m();
    }

    public static final void C3(p090l3.b1 b1Var, String str) {
        String str2 = b1Var.f26537a0;
        try {
            new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void D1(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0741Gb interfaceC0741Gb, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        try {
            p004a3.b bVar = new p004a3.b(this, interfaceC0741Gb, interfaceC1416hb, 16, 0);
            RtbAdapter rtbAdapter = this.f14909G;
            A3(str2);
            z3(b1Var);
            B3(b1Var);
            C3(b1Var, str2);
            rtbAdapter.loadRtbRewardedInterstitialAd(new p136r3.m(), bVar);
        } catch (Throwable th) {
            p120p3.h.e("Adapter failed to render rewarded interstitial ad.", th);
            AbstractC2987b.e0(aVar, th, "adapter.loadRtbRewardedInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void F2(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC2297yb interfaceC2297yb, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        try {
            p004a3.b bVar = new p004a3.b(this, interfaceC2297yb, interfaceC1416hb, 15, 0);
            RtbAdapter rtbAdapter = this.f14909G;
            A3(str2);
            z3(b1Var);
            B3(b1Var);
            C3(b1Var, str2);
            rtbAdapter.loadRtbAppOpenAd(new p136r3.f(), bVar);
        } catch (Throwable th) {
            p120p3.h.e("Adapter failed to render app open ad.", th);
            AbstractC2987b.e0(aVar, th, "adapter.loadRtbAppOpenAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final boolean H(R3.a aVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final boolean K(R3.a aVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void T0(String str, String str2, p090l3.b1 b1Var, R3.b bVar, Zq zq, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        n1(str, str2, b1Var, bVar, zq, interfaceC1416hb, null);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final boolean V2(R3.b bVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void W(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0651Ab interfaceC0651Ab, InterfaceC1416hb interfaceC1416hb, p090l3.d1 d1Var) throws RemoteException {
        try {
            C0816Lb c0816Lb = new C0816Lb(interfaceC0651Ab, 1);
            RtbAdapter rtbAdapter = this.f14909G;
            A3(str2);
            z3(b1Var);
            B3(b1Var);
            C3(b1Var, str2);
            new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
            rtbAdapter.loadRtbInterscrollerAd(new p136r3.g(), c0816Lb);
        } catch (Throwable th) {
            p120p3.h.e("Adapter failed to render interscroller ad.", th);
            AbstractC2987b.e0(aVar, th, "adapter.loadRtbInterscrollerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void X1(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0741Gb interfaceC0741Gb, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        try {
            p004a3.b bVar = new p004a3.b(this, interfaceC0741Gb, interfaceC1416hb, 16, 0);
            RtbAdapter rtbAdapter = this.f14909G;
            A3(str2);
            z3(b1Var);
            B3(b1Var);
            C3(b1Var, str2);
            rtbAdapter.loadRtbRewardedAd(new p136r3.m(), bVar);
        } catch (Throwable th) {
            p120p3.h.e("Adapter failed to render rewarded ad.", th);
            AbstractC2987b.e0(aVar, th, "adapter.loadRtbRewardedAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void a3(String str) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void c3(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0651Ab interfaceC0651Ab, InterfaceC1416hb interfaceC1416hb, p090l3.d1 d1Var) throws RemoteException {
        try {
            C0816Lb c0816Lb = new C0816Lb(interfaceC0651Ab, 0);
            RtbAdapter rtbAdapter = this.f14909G;
            A3(str2);
            z3(b1Var);
            B3(b1Var);
            C3(b1Var, str2);
            new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
            rtbAdapter.loadRtbBannerAd(new p136r3.g(), c0816Lb);
        } catch (Throwable th) {
            p120p3.h.e("Adapter failed to render banner ad.", th);
            AbstractC2987b.e0(aVar, th, "adapter.loadRtbBannerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void n1(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0711Eb interfaceC0711Eb, InterfaceC1416hb interfaceC1416hb, M8 m8) throws RemoteException {
        RtbAdapter rtbAdapter = this.f14909G;
        try {
            C0831Mb c0831Mb = new C0831Mb(interfaceC0711Eb, 0);
            A3(str2);
            z3(b1Var);
            B3(b1Var);
            C3(b1Var, str2);
            rtbAdapter.loadRtbNativeAdMapper(new p136r3.k(), c0831Mb);
        } catch (Throwable th) {
            p120p3.h.e("Adapter failed to render native ad.", th);
            AbstractC2987b.e0(aVar, th, "adapter.loadRtbNativeAdMapper");
            String message = th.getMessage();
            if (TextUtils.isEmpty(message) || !message.equals("Method is not found")) {
                throw new RemoteException();
            }
            try {
                C0831Mb c0831Mb2 = new C0831Mb(interfaceC0711Eb, 1);
                A3(str2);
                z3(b1Var);
                B3(b1Var);
                C3(b1Var, str2);
                rtbAdapter.loadRtbNativeAd(new p136r3.k(), c0831Mb2);
            } catch (Throwable th2) {
                p120p3.h.e("Adapter failed to render native ad.", th2);
                AbstractC2987b.e0(aVar, th2, "adapter.loadRtbNativeAd");
                throw new RemoteException();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x0059  */
    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void v2(R3.a aVar, String str, Bundle bundle, Bundle bundle2, p090l3.d1 d1Var, InterfaceC0801Kb interfaceC0801Kb) throws RemoteException {
        byte b8;
        try {
            K4 k8 = new K4(22, interfaceC0801Kb);
            RtbAdapter rtbAdapter = this.f14909G;
            switch (str) {
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
                    p096m2.e eVar = new p096m2.e(14, aVar2, bundle2);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(eVar);
                    new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
                    rtbAdapter.collectSignals(new p152t3.a(arrayList), k8);
                    return;
                case 1:
                    aVar2 = p043f3.a.INTERSTITIAL;
                    p096m2.e eVar2 = new p096m2.e(14, aVar2, bundle2);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(eVar2);
                    new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
                    rtbAdapter.collectSignals(new p152t3.a(arrayList2), k8);
                    return;
                case 2:
                    aVar2 = p043f3.a.REWARDED;
                    p096m2.e eVar3 = new p096m2.e(14, aVar2, bundle2);
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(eVar3);
                    new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
                    rtbAdapter.collectSignals(new p152t3.a(arrayList3), k8);
                    return;
                case 3:
                    aVar2 = p043f3.a.REWARDED_INTERSTITIAL;
                    p096m2.e eVar4 = new p096m2.e(14, aVar2, bundle2);
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(eVar4);
                    new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
                    rtbAdapter.collectSignals(new p152t3.a(arrayList4), k8);
                    return;
                case 4:
                    aVar2 = p043f3.a.NATIVE;
                    p096m2.e eVar5 = new p096m2.e(14, aVar2, bundle2);
                    ArrayList arrayList5 = new ArrayList();
                    arrayList5.add(eVar5);
                    new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
                    rtbAdapter.collectSignals(new p152t3.a(arrayList5), k8);
                    return;
                case 5:
                    p096m2.e eVar6 = new p096m2.e(14, aVar2, bundle2);
                    ArrayList arrayList6 = new ArrayList();
                    arrayList6.add(eVar6);
                    new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
                    rtbAdapter.collectSignals(new p152t3.a(arrayList6), k8);
                    return;
                case 6:
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.cb)).booleanValue()) {
                        p096m2.e eVar7 = new p096m2.e(14, aVar2, bundle2);
                        ArrayList arrayList7 = new ArrayList();
                        arrayList7.add(eVar7);
                        new p043f3.g(d1Var.f26552K, d1Var.f26549H, d1Var.f26548G);
                        rtbAdapter.collectSignals(new p152t3.a(arrayList7), k8);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                default:
                    throw new IllegalArgumentException("Internal Error");
            }
        } catch (Throwable th) {
            p120p3.h.e("Error generating signals for RTB", th);
            AbstractC2987b.e0(aVar, th, "adapter.collectSignals");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void x0(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0681Cb interfaceC0681Cb, InterfaceC1416hb interfaceC1416hb) throws RemoteException {
        try {
            p004a3.b bVar = new p004a3.b(this, interfaceC0681Cb, interfaceC1416hb, 14, 0);
            RtbAdapter rtbAdapter = this.f14909G;
            A3(str2);
            z3(b1Var);
            B3(b1Var);
            C3(b1Var, str2);
            rtbAdapter.loadRtbInterstitialAd(new p136r3.i(), bVar);
        } catch (Throwable th) {
            p120p3.h.e("Adapter failed to render interstitial ad.", th);
            AbstractC2987b.e0(aVar, th, "adapter.loadRtbInterstitialAd");
            throw new RemoteException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [com.google.android.gms.internal.ads.Eb] */
    /* JADX WARN: Type inference failed for: r10v5, types: [com.google.android.gms.internal.ads.Ab] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11, types: [com.google.android.gms.internal.ads.yb] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.google.android.gms.internal.ads.Cb] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [com.google.android.gms.internal.ads.Gb] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [com.google.android.gms.internal.ads.Kb] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.google.android.gms.internal.ads.Ab] */
    /* JADX WARN: Type inference failed for: r18v1, types: [com.google.android.gms.internal.ads.Gb] */
    /* JADX WARN: Type inference failed for: r18v2, types: [com.google.android.gms.internal.ads.Eb] */
    /* JADX WARN: Type inference failed for: r21v0, types: [com.google.android.gms.internal.ads.Nb] */
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) throws RemoteException {
        ?? c0786Jb;
        ?? c0666Bb;
        ?? c2245xb;
        IInterface c2349zb = null;
        if (i8 == 1) {
            R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
            String string = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) A5.a(parcel, creator);
            Bundle bundle2 = (Bundle) A5.a(parcel, creator);
            p090l3.d1 d1Var = (p090l3.d1) A5.a(parcel, p090l3.d1.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                c0786Jb = c2349zb;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                if (iInterfaceQueryLocalInterface instanceof InterfaceC0801Kb) {
                    c2349zb = (InterfaceC0801Kb) iInterfaceQueryLocalInterface;
                    c0786Jb = c2349zb;
                } else {
                    c0786Jb = new C0786Jb(strongBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback", 0);
                }
            }
            A5.b(parcel);
            v2(aVarJ0, string, bundle, bundle2, d1Var, c0786Jb);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 2) {
            zzf();
            throw null;
        }
        if (i8 == 3) {
            zzg();
            throw null;
        }
        if (i8 == 5) {
            p090l3.B0 b0Zze = zze();
            parcel2.writeNoException();
            A5.e(parcel2, b0Zze);
            return true;
        }
        if (i8 == 10) {
            R3.b.j0(parcel.readStrongBinder());
            A5.b(parcel);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 11) {
            parcel.createStringArray();
            A5.b(parcel);
            parcel2.writeNoException();
            return true;
        }
        switch (i8) {
            case 13:
                String string2 = parcel.readString();
                String string3 = parcel.readString();
                p090l3.b1 b1Var = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                    c2349zb = iInterfaceQueryLocalInterface2 instanceof InterfaceC0651Ab ? (InterfaceC0651Ab) iInterfaceQueryLocalInterface2 : new C2349zb(strongBinder2);
                }
                ?? r18 = c2349zb;
                InterfaceC1416hb interfaceC1416hbZ3 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                p090l3.d1 d1Var2 = (p090l3.d1) A5.a(parcel, p090l3.d1.CREATOR);
                A5.b(parcel);
                c3(string2, string3, b1Var, aVarJ1, r18, interfaceC1416hbZ3, d1Var2);
                parcel2.writeNoException();
                return true;
            case 14:
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                p090l3.b1 b1Var2 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 == null) {
                    c0666Bb = c2349zb;
                } else {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                    if (iInterfaceQueryLocalInterface3 instanceof InterfaceC0681Cb) {
                        c2349zb = (InterfaceC0681Cb) iInterfaceQueryLocalInterface3;
                        c0666Bb = c2349zb;
                    } else {
                        c0666Bb = new C0666Bb(strongBinder3, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback", 0);
                    }
                }
                InterfaceC1416hb interfaceC1416hbZ4 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                A5.b(parcel);
                x0(string4, string5, b1Var2, aVarJ2, c0666Bb, interfaceC1416hbZ4);
                parcel2.writeNoException();
                return true;
            case 15:
                R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case 16:
                String string6 = parcel.readString();
                String string7 = parcel.readString();
                p090l3.b1 b1Var3 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                    c2349zb = iInterfaceQueryLocalInterface4 instanceof InterfaceC0741Gb ? (InterfaceC0741Gb) iInterfaceQueryLocalInterface4 : new C0726Fb(strongBinder4);
                }
                ?? r11 = c2349zb;
                InterfaceC1416hb interfaceC1416hbZ5 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                A5.b(parcel);
                X1(string6, string7, b1Var3, aVarJ3, r11, interfaceC1416hbZ5);
                parcel2.writeNoException();
                return true;
            case 17:
                R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case 18:
                String string8 = parcel.readString();
                String string9 = parcel.readString();
                p090l3.b1 b1Var4 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                    c2349zb = iInterfaceQueryLocalInterface5 instanceof InterfaceC0711Eb ? (InterfaceC0711Eb) iInterfaceQueryLocalInterface5 : new C0696Db(strongBinder5);
                }
                ?? r10 = c2349zb;
                InterfaceC1416hb interfaceC1416hbZ6 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                A5.b(parcel);
                n1(string8, string9, b1Var4, aVarJ4, r10, interfaceC1416hbZ6, null);
                parcel2.writeNoException();
                return true;
            case 19:
                parcel.readString();
                A5.b(parcel);
                parcel2.writeNoException();
                return true;
            case 20:
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                p090l3.b1 b1Var5 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ5 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                    c2349zb = iInterfaceQueryLocalInterface6 instanceof InterfaceC0741Gb ? (InterfaceC0741Gb) iInterfaceQueryLocalInterface6 : new C0726Fb(strongBinder6);
                }
                ?? r19 = c2349zb;
                InterfaceC1416hb interfaceC1416hbZ7 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                A5.b(parcel);
                D1(string10, string11, b1Var5, aVarJ5, r19, interfaceC1416hbZ7);
                parcel2.writeNoException();
                return true;
            case 21:
                String string12 = parcel.readString();
                String string13 = parcel.readString();
                p090l3.b1 b1Var6 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ6 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                    c2349zb = iInterfaceQueryLocalInterface7 instanceof InterfaceC0651Ab ? (InterfaceC0651Ab) iInterfaceQueryLocalInterface7 : new C2349zb(strongBinder7);
                }
                ?? r12 = c2349zb;
                InterfaceC1416hb interfaceC1416hbZ8 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                p090l3.d1 d1Var3 = (p090l3.d1) A5.a(parcel, p090l3.d1.CREATOR);
                A5.b(parcel);
                W(string12, string13, b1Var6, aVarJ6, r12, interfaceC1416hbZ8, d1Var3);
                parcel2.writeNoException();
                return true;
            case 22:
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                p090l3.b1 b1Var7 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ7 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                    c2349zb = iInterfaceQueryLocalInterface8 instanceof InterfaceC0711Eb ? (InterfaceC0711Eb) iInterfaceQueryLocalInterface8 : new C0696Db(strongBinder8);
                }
                ?? r110 = c2349zb;
                InterfaceC1416hb interfaceC1416hbZ9 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                M8 m8 = (M8) A5.a(parcel, M8.CREATOR);
                A5.b(parcel);
                n1(string14, string15, b1Var7, aVarJ7, r110, interfaceC1416hbZ9, m8);
                parcel2.writeNoException();
                return true;
            case 23:
                String string16 = parcel.readString();
                String string17 = parcel.readString();
                p090l3.b1 b1Var8 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                R3.a aVarJ8 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 == null) {
                    c2245xb = c2349zb;
                } else {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                    if (iInterfaceQueryLocalInterface9 instanceof InterfaceC2297yb) {
                        c2349zb = (InterfaceC2297yb) iInterfaceQueryLocalInterface9;
                        c2245xb = c2349zb;
                    } else {
                        c2245xb = new C2245xb(strongBinder9, "com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback", 0);
                    }
                }
                InterfaceC1416hb interfaceC1416hbZ10 = AbstractBinderC1364gb.z3(parcel.readStrongBinder());
                A5.b(parcel);
                F2(string16, string17, b1Var8, aVarJ8, c2245xb, interfaceC1416hbZ10);
                parcel2.writeNoException();
                return true;
            case 24:
                R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            default:
                return false;
        }
    }

    public final void z3(p090l3.b1 b1Var) {
        Bundle bundle = b1Var.f26529S;
        if (bundle == null || bundle.getBundle(this.f14909G.getClass().getName()) == null) {
            new Bundle();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final p090l3.B0 zze() {
        Object obj = this.f14909G;
        if (obj instanceof AbstractAdViewAdapter) {
            try {
                return ((AbstractAdViewAdapter) obj).getVideoController();
            } catch (Throwable th) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final C0860Ob zzf() {
        this.f14909G.getVersionInfo();
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final C0860Ob zzg() {
        this.f14909G.getSDKVersionInfo();
        throw null;
    }
}
