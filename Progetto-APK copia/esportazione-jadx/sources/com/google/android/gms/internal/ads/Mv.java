package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p090l3.C3099q;
import p090l3.InterfaceC3113x0;

/* JADX INFO: loaded from: classes.dex */
public final class Mv extends AbstractBinderC2328z5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Jv f14826G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Gv f14827H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Uv f14828I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C1118bn f14829J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f14830K;

    public Mv(Jv jv, Gv gv, Uv uv) {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        this.f14830K = false;
        this.f14826G = jv;
        this.f14827H = gv;
        this.f14828I = uv;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        if (((java.lang.Boolean) p090l3.C3099q.f26624d.f26627c.a(com.google.android.gms.internal.ads.Q7.f15760X4)).booleanValue() == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void A3(com.google.android.gms.internal.ads.C1418hd r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.bumptech.glide.c.d(r0)     // Catch: java.lang.Throwable -> L20
            java.lang.String r0 = r6.f19109H     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.J7 r1 = com.google.android.gms.internal.ads.Q7.f15744V4     // Catch: java.lang.Throwable -> L20
            l3.q r2 = p090l3.C3099q.f26624d     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.O7 r2 = r2.f26627c     // Catch: java.lang.Throwable -> L20
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L20
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L2c
            if (r0 != 0) goto L19
            goto L2c
        L19:
            boolean r0 = java.util.regex.Pattern.matches(r1, r0)     // Catch: java.lang.Throwable -> L20 java.lang.RuntimeException -> L22
            if (r0 == 0) goto L2c
            goto L44
        L20:
            r6 = move-exception
            goto L66
        L22:
            r0 = move-exception
            java.lang.String r1 = "NonagonUtil.isPatternMatched"
            k3.l r2 = p083k3.l.f25980A     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.le r2 = r2.f25987g     // Catch: java.lang.Throwable -> L20
            r2.i(r1, r0)     // Catch: java.lang.Throwable -> L20
        L2c:
            boolean r0 = r5.E3()     // Catch: java.lang.Throwable -> L20
            if (r0 == 0) goto L46
            com.google.android.gms.internal.ads.J7 r0 = com.google.android.gms.internal.ads.Q7.f15760X4     // Catch: java.lang.Throwable -> L20
            l3.q r1 = p090l3.C3099q.f26624d     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.O7 r1 = r1.f26627c     // Catch: java.lang.Throwable -> L20
            java.lang.Object r0 = r1.a(r0)     // Catch: java.lang.Throwable -> L20
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L20
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L20
            if (r0 != 0) goto L46
        L44:
            monitor-exit(r5)
            return
        L46:
            com.google.android.gms.internal.ads.Hv r0 = new com.google.android.gms.internal.ads.Hv     // Catch: java.lang.Throwable -> L20
            r0.<init>()     // Catch: java.lang.Throwable -> L20
            r1 = 0
            r5.f14829J = r1     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.Jv r1 = r5.f14826G     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.Xv r2 = r1.f14246N     // Catch: java.lang.Throwable -> L20
            androidx.leanback.widget.j r2 = r2.f17544o     // Catch: java.lang.Throwable -> L20
            r3 = 1
            r2.f9298H = r3     // Catch: java.lang.Throwable -> L20
            l3.b1 r2 = r6.f19108G     // Catch: java.lang.Throwable -> L20
            java.lang.String r6 = r6.f19109H     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.Xu r3 = new com.google.android.gms.internal.ads.Xu     // Catch: java.lang.Throwable -> L20
            r4 = 6
            r3.<init>(r5, r4)     // Catch: java.lang.Throwable -> L20
            r1.b(r2, r6, r0, r3)     // Catch: java.lang.Throwable -> L20
            monitor-exit(r5)
            return
        L66:
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.Mv.A3(com.google.android.gms.internal.ads.hd):void");
    }

    public final synchronized void B3(String str) {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.: setCustomData");
        this.f14828I.f16905b = str;
    }

    public final synchronized void C3(String str) {
        com.bumptech.glide.c.d("setUserId must be called on the main UI thread.");
        this.f14828I.f16904a = str;
    }

    public final synchronized void D3(R3.a aVar) {
        try {
            com.bumptech.glide.c.d("showAd must be called on the main UI thread.");
            if (this.f14829J != null) {
                Activity activity = null;
                if (aVar != null) {
                    Object objV0 = R3.b.v0(aVar);
                    if (objV0 instanceof Activity) {
                        activity = (Activity) objV0;
                    }
                }
                this.f14829J.c(activity, this.f14830K);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean E3() {
        C1118bn c1118bn = this.f14829J;
        return (c1118bn == null || c1118bn.f18091p.f13625H.get()) ? false : true;
    }

    public final synchronized void p1(R3.a aVar) {
        com.bumptech.glide.c.d("resume must be called on the main UI thread.");
        if (this.f14829J != null) {
            Context context = aVar == null ? null : (Context) R3.b.v0(aVar);
            C0689Cj c0689Cj = this.f14829J.f21914c;
            c0689Cj.getClass();
            c0689Cj.Z0(new I7(context, 2));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        IInterface m7;
        InterfaceC0715Ef interfaceC0715Ef;
        if (i8 == 1) {
            C1418hd c1418hd = (C1418hd) A5.a(parcel, C1418hd.CREATOR);
            A5.b(parcel);
            A3(c1418hd);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 2) {
            zzq();
            parcel2.writeNoException();
            return true;
        }
        IInterface c1262ed = null;
        if (i8 == 3) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                c1262ed = iInterfaceQueryLocalInterface instanceof InterfaceC1366gd ? (InterfaceC1366gd) iInterfaceQueryLocalInterface : new C1314fd(strongBinder);
            }
            A5.b(parcel);
            com.bumptech.glide.c.d("setRewardedVideoAdListener can only be called from the UI thread.");
            this.f14827H.f13659K.set(c1262ed);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 34) {
            boolean zF = A5.f(parcel);
            A5.b(parcel);
            synchronized (this) {
                com.bumptech.glide.c.d("setImmersiveMode must be called on the main UI thread.");
                this.f14830K = zF;
            }
            parcel2.writeNoException();
            return true;
        }
        int i9 = 0;
        switch (i8) {
            case 5:
                com.bumptech.glide.c.d("isLoaded must be called on the main UI thread.");
                boolean zE3 = E3();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zE3 ? 1 : 0);
                return true;
            case 6:
                zzi(null);
                parcel2.writeNoException();
                return true;
            case 7:
                p1(null);
                parcel2.writeNoException();
                return true;
            case 8:
                zzf(null);
                parcel2.writeNoException();
                return true;
            case 9:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                zzi(aVarJ0);
                parcel2.writeNoException();
                return true;
            case 10:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                p1(aVarJ1);
                parcel2.writeNoException();
                return true;
            case 11:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                zzf(aVarJ2);
                parcel2.writeNoException();
                return true;
            case 12:
                String strZ3 = z3();
                parcel2.writeNoException();
                parcel2.writeString(strZ3);
                return true;
            case 13:
                String string = parcel.readString();
                A5.b(parcel);
                C3(string);
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 == null) {
                    m7 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    m7 = iInterfaceQueryLocalInterface2 instanceof p090l3.N ? (p090l3.N) iInterfaceQueryLocalInterface2 : new p090l3.M(strongBinder2);
                }
                A5.b(parcel);
                com.bumptech.glide.c.d("setAdMetadataListener can only be called from the UI thread.");
                Gv gv = this.f14827H;
                if (m7 == null) {
                    gv.f13656H.set(null);
                } else {
                    gv.f13656H.set(new Kv(this, m7, 1));
                }
                parcel2.writeNoException();
                return true;
            case 15:
                com.bumptech.glide.c.d("getAdMetadata can only be called from the UI thread.");
                C1118bn c1118bn = this.f14829J;
                Bundle bundleB = c1118bn != null ? c1118bn.b() : new Bundle();
                parcel2.writeNoException();
                A5.d(parcel2, bundleB);
                return true;
            case 16:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                    c1262ed = iInterfaceQueryLocalInterface3 instanceof C1262ed ? (C1262ed) iInterfaceQueryLocalInterface3 : new C1262ed(strongBinder3, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener", 0);
                }
                A5.b(parcel);
                com.bumptech.glide.c.d("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
                this.f14827H.f13661M.set(c1262ed);
                parcel2.writeNoException();
                return true;
            case 17:
                parcel.readString();
                A5.b(parcel);
                parcel2.writeNoException();
                return true;
            case 18:
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                D3(aVarJ3);
                parcel2.writeNoException();
                return true;
            case 19:
                String string2 = parcel.readString();
                A5.b(parcel);
                B3(string2);
                parcel2.writeNoException();
                return true;
            case 20:
                C1118bn c1118bn2 = this.f14829J;
                if (c1118bn2 != null && (interfaceC0715Ef = (InterfaceC0715Ef) c1118bn2.f18086k.get()) != null && !interfaceC0715Ef.J0()) {
                    i9 = 1;
                }
                parcel2.writeNoException();
                ClassLoader classLoader2 = A5.f11962a;
                parcel2.writeInt(i9);
                return true;
            case 21:
                InterfaceC3113x0 interfaceC3113x0Zzc = zzc();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC3113x0Zzc);
                return true;
            default:
                return false;
        }
    }

    public final synchronized String z3() {
        BinderC1630lj binderC1630lj;
        C1118bn c1118bn = this.f14829J;
        if (c1118bn == null || (binderC1630lj = c1118bn.f21917f) == null) {
            return null;
        }
        return binderC1630lj.f19824G;
    }

    public final synchronized InterfaceC3113x0 zzc() {
        C1118bn c1118bn;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15873k6)).booleanValue() && (c1118bn = this.f14829J) != null) {
            return c1118bn.f21917f;
        }
        return null;
    }

    public final synchronized void zzf(R3.a aVar) {
        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
        Context context = null;
        this.f14827H.f13656H.set(null);
        if (this.f14829J != null) {
            if (aVar != null) {
                context = (Context) R3.b.v0(aVar);
            }
            C0689Cj c0689Cj = this.f14829J.f21914c;
            c0689Cj.getClass();
            c0689Cj.Z0(new I7(context, 3));
        }
    }

    public final synchronized void zzi(R3.a aVar) {
        com.bumptech.glide.c.d("pause must be called on the main UI thread.");
        if (this.f14829J != null) {
            Context context = aVar == null ? null : (Context) R3.b.v0(aVar);
            C0689Cj c0689Cj = this.f14829J.f21914c;
            c0689Cj.getClass();
            c0689Cj.Z0(new I7(context, 1));
        }
    }

    public final synchronized void zzq() {
        D3(null);
    }
}
