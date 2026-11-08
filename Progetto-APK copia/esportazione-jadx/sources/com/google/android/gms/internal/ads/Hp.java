package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p021c4.C0621y;

/* JADX INFO: loaded from: classes.dex */
public final class Hp extends AbstractBinderC2328z5 implements InterfaceC0847Nc {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f13792G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2354zg f13793H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C2250xg f13794I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Mp f13795J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f13796K;

    public Hp(Context context, C2354zg c2354zg, C2250xg c2250xg, Mp mp, C1936re c1936re, C2272y1 c2272y1) {
        super("com.google.android.gms.ads.internal.request.IAdsService");
        this.f13792G = context;
        this.f13793H = c2354zg;
        this.f13794I = c2250xg;
        this.f13795J = mp;
        this.f13796K = c1936re;
    }

    public static void A3(D4.b bVar, InterfaceC0875Pc interfaceC0875Pc) {
        Cw.h2(Cw.d2(AbstractC1040aC.r(bVar), new C1422hh(15, 0), AbstractC1988se.f20906a), new C0864Of(19, interfaceC0875Pc), AbstractC1988se.f20911f);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0847Nc
    public final void R1(C0787Jc c0787Jc, InterfaceC0875Pc interfaceC0875Pc) {
        A3(z3(c0787Jc, Binder.getCallingUid()), interfaceC0875Pc);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0847Nc
    public final void o1(C0757Hc c0757Hc, InterfaceC0875Pc interfaceC0875Pc) {
        Kw kw;
        Ku ku = new Ku(c0757Hc, Binder.getCallingUid());
        C2354zg c2354zg = this.f13793H;
        c2354zg.getClass();
        C2302yg c2302yg = new C2302yg(c2354zg.f22179a, ku);
        switch (1) {
            case 0:
                kw = (Kw) c2302yg.f22042d.zzb();
                break;
            default:
                kw = (Kw) c2302yg.f22043e.zzb();
                break;
        }
        Fw fwC = kw.b(C1298fC.f18730H, Iw.GMS_SIGNALS).m(new No(c2302yg, 13)).k(new C0621y(12)).m(new C1422hh(14)).c();
        A3(fwC, interfaceC0875Pc);
        if (((Boolean) AbstractC1915r8.f20683f.l()).booleanValue()) {
            Mp mp = this.f13795J;
            Objects.requireNonNull(mp);
            fwC.a(new Cp(mp, 1), this.f13796K);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC0875Pc c0861Oc = null;
        if (i8 == 1) {
            C0757Hc c0757Hc = (C0757Hc) A5.a(parcel, C0757Hc.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                c0861Oc = iInterfaceQueryLocalInterface instanceof InterfaceC0875Pc ? (InterfaceC0875Pc) iInterfaceQueryLocalInterface : new C0861Oc(strongBinder);
            }
            A5.b(parcel);
            o1(c0757Hc, c0861Oc);
        } else if (i8 == 2) {
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                if (iInterfaceQueryLocalInterface2 instanceof InterfaceC0875Pc) {
                }
            }
            A5.b(parcel);
        } else {
            if (i8 != 3) {
                return false;
            }
            C0787Jc c0787Jc = (C0787Jc) A5.a(parcel, C0787Jc.CREATOR);
            IBinder strongBinder3 = parcel.readStrongBinder();
            if (strongBinder3 != null) {
                IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                c0861Oc = iInterfaceQueryLocalInterface3 instanceof InterfaceC0875Pc ? (InterfaceC0875Pc) iInterfaceQueryLocalInterface3 : new C0861Oc(strongBinder3);
            }
            A5.b(parcel);
            R1(c0787Jc, c0861Oc);
        }
        parcel2.writeNoException();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00ad A[EDGE_INSN: B:23:0x00ad->B:24:0x00b1 BREAK  A[LOOP:1: B:18:0x007e->B:37:?]] */
    public final JB z3(C0787Jc c0787Jc, int i8) {
        D4.b bVarN1;
        Kw kw;
        HashMap map = new HashMap();
        Bundle bundle = c0787Jc.f14165I;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (string != null) {
                    map.put(str, string);
                }
            }
        }
        String str2 = c0787Jc.f14163G;
        int i9 = c0787Jc.f14164H;
        byte[] bArr = c0787Jc.f14166J;
        boolean z7 = c0787Jc.f14167K;
        Ip ip = new Ip(str2, i9, map, bArr, HttpUrl.FRAGMENT_ENCODE_SET, z7);
        Pu pu = new Pu(c0787Jc);
        C2250xg c2250xg = this.f13794I;
        c2250xg.getClass();
        C2302yg c2302yg = new C2302yg(c2250xg.f21905a, pu);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f13796K;
        if (!z7) {
            bVarN1 = Cw.N1(ip);
            break;
        }
        String str3 = (String) AbstractC2279y8.f21996b.l();
        if (TextUtils.isEmpty(str3)) {
            bVarN1 = Cw.N1(ip);
            break;
        }
        String host = Uri.parse(c0787Jc.f14163G).getHost();
        if (TextUtils.isEmpty(host)) {
            bVarN1 = Cw.N1(ip);
            break;
        }
        Xu xuJ = Xu.j(new C2061tz(';'));
        str3.getClass();
        Iterator itT = xuJ.t(str3);
        while (true) {
            if (!itT.hasNext()) {
                bVarN1 = Cw.N1(ip);
                break;
            }
            if (host.endsWith((String) itT.next())) {
                bVarN1 = Cw.b2(c2302yg.a().a(new Bundle(), new JSONObject()), new C0917Sc(ip, 2), interfaceExecutorServiceC1504jC);
                break;
            }
        }
        switch (c2302yg.f22039a) {
            case 0:
                kw = (Kw) c2302yg.f22042d.zzb();
                break;
            default:
                kw = (Kw) c2302yg.f22043e.zzb();
                break;
        }
        return Cw.d2(kw.b(bVarN1, Iw.HTTP).k(new C0871Om(this.f13792G, HttpUrl.FRAGMENT_ENCODE_SET)).c(), new C1422hh(13), interfaceExecutorServiceC1504jC);
    }
}
