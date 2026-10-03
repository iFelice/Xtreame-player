package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import java.util.Collections;
import java.util.List;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3080g0;
import p090l3.C3099q;
import p090l3.InterfaceC3082h0;
import p090l3.InterfaceC3086j0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Lm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0827Lm extends AbstractBinderC2328z5 implements B9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f14547G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0721El f14548H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0781Il f14549I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0738Fn f14550J;

    public BinderC0827Lm(String str, C0721El c0721El, C0781Il c0781Il, C0738Fn c0738Fn) {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
        this.f14547G = str;
        this.f14548H = c0721El;
        this.f14549I = c0781Il;
        this.f14550J = c0738Fn;
    }

    public final void A3(InterfaceC3082h0 interfaceC3082h0) {
        C0721El c0721El = this.f14548H;
        synchronized (c0721El) {
            c0721El.f13188l.n(interfaceC3082h0);
        }
    }

    public final void B3(C2332z9 c2332z9) {
        C0721El c0721El = this.f14548H;
        synchronized (c0721El) {
            c0721El.f13188l.e(c2332z9);
        }
    }

    public final boolean C3() {
        List list;
        C0781Il c0781Il = this.f14549I;
        synchronized (c0781Il) {
            list = c0781Il.f14026f;
        }
        return (list.isEmpty() || c0781Il.K() == null) ? false : true;
    }

    public final void D3(InterfaceC3086j0 interfaceC3086j0) {
        C0721El c0721El = this.f14548H;
        synchronized (c0721El) {
            c0721El.f13188l.p(interfaceC3086j0);
        }
    }

    public final boolean Q() {
        boolean zT;
        C0721El c0721El = this.f14548H;
        synchronized (c0721El) {
            zT = c0721El.f13188l.t();
        }
        return zT;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String e() {
        return this.f14549I.d();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final List g() {
        List list;
        C0781Il c0781Il = this.f14549I;
        synchronized (c0781Il) {
            list = c0781Il.f14026f;
        }
        return (list.isEmpty() || c0781Il.K() == null) ? Collections.emptyList() : this.f14549I.g();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final void m1(Bundle bundle) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.ic)).booleanValue()) {
            C0721El c0721El = this.f14548H;
            InterfaceC0715Ef interfaceC0715EfR = c0721El.f13187k.R();
            if (interfaceC0715EfR == null) {
                p120p3.h.d("Video webview is null");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                for (String str : bundle.keySet()) {
                    jSONObject.put(str, bundle.get(str));
                }
                c0721El.f13186j.execute(new RunnableC2355zh(interfaceC0715EfR, jSONObject, 1));
            } catch (JSONException e8) {
                p120p3.h.e("Error reading event signals", e8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final List u() {
        return this.f14549I.f();
    }

    public final void v() {
        C0721El c0721El = this.f14548H;
        synchronized (c0721El) {
            InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm = c0721El.f13197u;
            if (interfaceViewOnClickListenerC1220dm == null) {
                p120p3.h.b("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            } else {
                c0721El.f13186j.execute(new p017c0.a(6, c0721El, interfaceViewOnClickListenerC1220dm instanceof ViewTreeObserverOnGlobalLayoutListenerC0898Ql));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        C2332z9 c2332z9 = null;
        InterfaceC3082h0 c3080g0 = null;
        switch (i8) {
            case 2:
                String strB = this.f14549I.b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 3:
                List listF = this.f14549I.f();
                parcel2.writeNoException();
                parcel2.writeList(listF);
                return true;
            case 4:
                String strX = this.f14549I.X();
                parcel2.writeNoException();
                parcel2.writeString(strX);
                return true;
            case 5:
                T8 t8N = this.f14549I.N();
                parcel2.writeNoException();
                A5.e(parcel2, t8N);
                return true;
            case 6:
                String strY = this.f14549I.Y();
                parcel2.writeNoException();
                parcel2.writeString(strY);
                return true;
            case 7:
                String strW = this.f14549I.W();
                parcel2.writeNoException();
                parcel2.writeString(strW);
                return true;
            case 8:
                double dV = this.f14549I.v();
                parcel2.writeNoException();
                parcel2.writeDouble(dV);
                return true;
            case 9:
                String strD = this.f14549I.d();
                parcel2.writeNoException();
                parcel2.writeString(strD);
                return true;
            case 10:
                String strC = this.f14549I.c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 11:
                p090l3.B0 b0J = this.f14549I.J();
                parcel2.writeNoException();
                A5.e(parcel2, b0J);
                return true;
            case 12:
                String str = this.f14547G;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 13:
                this.f14548H.w();
                parcel2.writeNoException();
                return true;
            case 14:
                P8 p8L = this.f14549I.L();
                parcel2.writeNoException();
                A5.e(parcel2, p8L);
                return true;
            case 15:
                Bundle bundle = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                this.f14548H.f(bundle);
                parcel2.writeNoException();
                return true;
            case 16:
                Bundle bundle2 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                boolean zO = this.f14548H.o(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(zO ? 1 : 0);
                return true;
            case 17:
                Bundle bundle3 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                this.f14548H.i(bundle3);
                parcel2.writeNoException();
                return true;
            case 18:
                R3.a aVarZzm = zzm();
                parcel2.writeNoException();
                A5.e(parcel2, aVarZzm);
                return true;
            case 19:
                R3.a aVarU = this.f14549I.U();
                parcel2.writeNoException();
                A5.e(parcel2, aVarU);
                return true;
            case 20:
                Bundle bundleE = this.f14549I.E();
                parcel2.writeNoException();
                A5.d(parcel2, bundleE);
                return true;
            case 21:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    c2332z9 = iInterfaceQueryLocalInterface instanceof C2332z9 ? (C2332z9) iInterfaceQueryLocalInterface : new C2332z9(strongBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener", 0);
                }
                A5.b(parcel);
                B3(c2332z9);
                parcel2.writeNoException();
                return true;
            case 22:
                this.f14548H.A();
                parcel2.writeNoException();
                return true;
            case 23:
                List listG = g();
                parcel2.writeNoException();
                parcel2.writeList(listG);
                return true;
            case 24:
                boolean zC3 = C3();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zC3 ? 1 : 0);
                return true;
            case 25:
                InterfaceC3086j0 interfaceC3086j0Z3 = p090l3.K0.z3(parcel.readStrongBinder());
                A5.b(parcel);
                D3(interfaceC3086j0Z3);
                parcel2.writeNoException();
                return true;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
                    c3080g0 = iInterfaceQueryLocalInterface2 instanceof InterfaceC3082h0 ? (InterfaceC3082h0) iInterfaceQueryLocalInterface2 : new C3080g0(strongBinder2, "com.google.android.gms.ads.internal.client.IMuteThisAdListener", 0);
                }
                A5.b(parcel);
                A3(c3080g0);
                parcel2.writeNoException();
                return true;
            case 27:
                z3();
                parcel2.writeNoException();
                return true;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                v();
                parcel2.writeNoException();
                return true;
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                R8 r8A = this.f14548H.f13182C.a();
                parcel2.writeNoException();
                A5.e(parcel2, r8A);
                return true;
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                boolean zQ = Q();
                parcel2.writeNoException();
                ClassLoader classLoader2 = A5.f11962a;
                parcel2.writeInt(zQ ? 1 : 0);
                return true;
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                InterfaceC3113x0 interfaceC3113x0Zzg = zzg();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC3113x0Zzg);
                return true;
            case 32:
                InterfaceC3100q0 interfaceC3100q0Z3 = p090l3.S0.z3(parcel.readStrongBinder());
                A5.b(parcel);
                try {
                    if (!interfaceC3100q0Z3.zzf()) {
                        this.f14550J.b();
                    }
                    break;
                } catch (RemoteException e8) {
                    p120p3.h.c("Error in making CSI ping for reporting paid event callback", e8);
                }
                C0721El c0721El = this.f14548H;
                synchronized (c0721El) {
                    c0721El.f13183D.f19370G.set(interfaceC3100q0Z3);
                }
                parcel2.writeNoException();
                return true;
            case 33:
                Bundle bundle4 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                m1(bundle4);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }

    public final void z3() {
        C0721El c0721El = this.f14548H;
        synchronized (c0721El) {
            c0721El.f13188l.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final double zze() {
        return this.f14549I.v();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final InterfaceC3113x0 zzg() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15873k6)).booleanValue()) {
            return this.f14548H.f21917f;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final p090l3.B0 zzh() {
        return this.f14549I.J();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final P8 zzi() {
        return this.f14549I.L();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final T8 zzk() {
        return this.f14549I.N();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final R3.a zzl() {
        return this.f14549I.U();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final R3.a zzm() {
        return new R3.b(this.f14548H);
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzn() {
        return this.f14549I.W();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzo() {
        return this.f14549I.X();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzp() {
        return this.f14549I.Y();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzq() {
        return this.f14549I.b();
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzs() {
        return this.f14549I.c();
    }
}
