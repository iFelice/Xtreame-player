package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p021c4.C0621y;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Km, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0812Km extends AbstractBinderC2328z5 implements InterfaceC1295f9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f14399G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0781Il f14400H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C0926Sl f14401I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C0721El f14402J;

    public BinderC0812Km(Context context, C0781Il c0781Il, C0926Sl c0926Sl, C0721El c0721El) {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        this.f14399G = context;
        this.f14400H = c0781Il;
        this.f14401I = c0926Sl;
        this.f14402J = c0721El;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final boolean H(R3.a aVar) {
        C0926Sl c0926Sl;
        Object objV0 = R3.b.v0(aVar);
        if (!(objV0 instanceof ViewGroup) || (c0926Sl = this.f14401I) == null || !c0926Sl.c((ViewGroup) objV0, true)) {
            return false;
        }
        this.f14400H.R().M0(new C2218x(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final boolean K(R3.a aVar) {
        C0926Sl c0926Sl;
        Object objV0 = R3.b.v0(aVar);
        if (!(objV0 instanceof ViewGroup) || (c0926Sl = this.f14401I) == null || !c0926Sl.c((ViewGroup) objV0, false)) {
            return false;
        }
        this.f14400H.P().M0(new C2218x(this));
        return true;
    }

    public final void k() {
        C0721El c0721El = this.f14402J;
        if (c0721El != null) {
            synchronized (c0721El) {
                if (!c0721El.f13199w) {
                    c0721El.f13188l.zzr();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        String str;
        List<String> arrayList;
        C0721El c0721El;
        int i9 = 0;
        R8 r8A = null;
        switch (i8) {
            case 1:
                String string = parcel.readString();
                A5.b(parcel);
                String str2 = (String) this.f14400H.I().get(string);
                parcel2.writeNoException();
                parcel2.writeString(str2);
                return true;
            case 2:
                String string2 = parcel.readString();
                A5.b(parcel);
                T8 t8 = (T8) this.f14400H.H().get(string2);
                parcel2.writeNoException();
                A5.e(parcel2, t8);
                return true;
            case 3:
                C0781Il c0781Il = this.f14400H;
                try {
                    p132r.m mVarH = c0781Il.H();
                    p132r.m mVarI = c0781Il.I();
                    String[] strArr = new String[mVarH.f29684I + mVarI.f29684I];
                    int i10 = 0;
                    for (int i11 = 0; i11 < mVarH.f29684I; i11++) {
                        strArr[i10] = (String) mVarH.f(i11);
                        i10++;
                    }
                    while (i9 < mVarI.f29684I) {
                        strArr[i10] = (String) mVarI.f(i9);
                        i10++;
                        i9++;
                    }
                    arrayList = Arrays.asList(strArr);
                    break;
                } catch (NullPointerException e8) {
                    p083k3.l.f25980A.f25987g.i("InternalNativeCustomTemplateAdShim.getAvailableAssetNames", e8);
                    arrayList = new ArrayList<>();
                }
                parcel2.writeNoException();
                parcel2.writeStringList(arrayList);
                return true;
            case 4:
                String strA = this.f14400H.a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 5:
                String string3 = parcel.readString();
                A5.b(parcel);
                C0721El c0721El2 = this.f14402J;
                if (c0721El2 != null) {
                    c0721El2.e(string3);
                }
                parcel2.writeNoException();
                return true;
            case 6:
                k();
                parcel2.writeNoException();
                return true;
            case 7:
                p090l3.B0 b0J = this.f14400H.J();
                parcel2.writeNoException();
                A5.e(parcel2, b0J);
                return true;
            case 8:
                C0721El c0721El3 = this.f14402J;
                if (c0721El3 != null) {
                    c0721El3.w();
                }
                this.f14402J = null;
                this.f14401I = null;
                parcel2.writeNoException();
                return true;
            case 9:
                R3.a aVarZzh = zzh();
                parcel2.writeNoException();
                A5.e(parcel2, aVarZzh);
                return true;
            case 10:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                boolean zH = H(aVarJ0);
                parcel2.writeNoException();
                parcel2.writeInt(zH ? 1 : 0);
                return true;
            case 11:
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 12:
                C0721El c0721El4 = this.f14402J;
                if (c0721El4 == null || c0721El4.f13190n.c()) {
                    C0781Il c0781Il2 = this.f14400H;
                    if (c0781Il2.Q() != null && c0781Il2.R() == null) {
                        i9 = 1;
                    }
                }
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(i9);
                return true;
            case 13:
                C0781Il c0781Il3 = this.f14400H;
                C1689mq c1689mqT = c0781Il3.T();
                if (c1689mqT != null) {
                    C0621y c0621y = p083k3.l.f25980A.f26002v;
                    C2267xx c2267xx = c1689mqT.f20002a;
                    c0621y.getClass();
                    C0621y.f(c2267xx);
                    if (c0781Il3.Q() != null) {
                        c0781Il3.Q().w("onSdkLoaded", new p132r.f(0));
                    }
                    i9 = 1;
                } else {
                    p120p3.h.g("Trying to start OMID session before creation.");
                }
                parcel2.writeNoException();
                ClassLoader classLoader2 = A5.f11962a;
                parcel2.writeInt(i9);
                return true;
            case 14:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                Object objV0 = R3.b.v0(aVarJ1);
                if ((objV0 instanceof View) && this.f14400H.T() != null && (c0721El = this.f14402J) != null) {
                    c0721El.g((View) objV0);
                }
                parcel2.writeNoException();
                return true;
            case 15:
                try {
                    C0781Il c0781Il4 = this.f14400H;
                    synchronized (c0781Il4) {
                        str = c0781Il4.f14045y;
                    }
                    if (Objects.equals(str, "Google")) {
                        p120p3.h.g("Illegal argument specified for omid partner name.");
                    } else if (TextUtils.isEmpty(str)) {
                        p120p3.h.g("Not starting OMID session. OM partner name has not been configured.");
                    } else {
                        C0721El c0721El5 = this.f14402J;
                        if (c0721El5 != null) {
                            c0721El5.x(str, false);
                        }
                    }
                } catch (NullPointerException e9) {
                    p083k3.l.f25980A.f25987g.i("InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement", e9);
                }
                parcel2.writeNoException();
                return true;
            case 16:
                try {
                    r8A = this.f14402J.f13182C.a();
                    break;
                } catch (NullPointerException e10) {
                    p083k3.l.f25980A.f25987g.i("InternalNativeCustomTemplateAdShim.getMediaContent", e10);
                }
                parcel2.writeNoException();
                A5.e(parcel2, r8A);
                return true;
            case 17:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                boolean zK = K(aVarJ2);
                parcel2.writeNoException();
                parcel2.writeInt(zK ? 1 : 0);
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final R3.a zzh() {
        return new R3.b(this.f14399G);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final String zzi() {
        return this.f14400H.a();
    }
}
