package com.google.android.gms.internal.cast;

import E1.AbstractC0182q;
import E1.C0181p;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC2446g extends AbstractBinderC2478o implements InterfaceC2450h {
    /* JADX WARN: Code duplicated, block: B:45:0x0112  */
    /* JADX WARN: Code duplicated, block: B:46:0x0117  */
    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        C2454i c2454i;
        C0181p c0181p = null;
        Bundle bundle = null;
        C0181p c0181p2 = null;
        C0181p c0181p3 = null;
        C0181p c0181p4 = null;
        int i9 = 0;
        switch (i8) {
            case 1:
                Bundle bundle2 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    c2454i = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
                    c2454i = iInterfaceQueryLocalInterface instanceof C2454i ? (C2454i) iInterfaceQueryLocalInterface : new C2454i(strongBinder, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback", 2);
                }
                AbstractC2501u.b(parcel);
                BinderC2486q binderC2486q = (BinderC2486q) this;
                if (bundle2 != null) {
                    c0181p = new C0181p(null, bundle2);
                } else {
                    C0181p c0181p5 = C0181p.f2795c;
                }
                if (c0181p != null) {
                    HashMap map = binderC2486q.f22783J;
                    if (!map.containsKey(c0181p)) {
                        map.put(c0181p, new HashSet());
                    }
                    ((Set) map.get(c0181p)).add(new C2458j(c2454i));
                }
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle bundle3 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                int i10 = parcel.readInt();
                AbstractC2501u.b(parcel);
                BinderC2486q binderC2486q2 = (BinderC2486q) this;
                if (bundle3 != null) {
                    c0181p4 = new C0181p(null, bundle3);
                } else {
                    C0181p c0181p6 = C0181p.f2795c;
                }
                if (c0181p4 != null) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        binderC2486q2.v0(c0181p4, i10);
                    } else {
                        new X3.d(Looper.getMainLooper(), 1).post(new p000a.g(binderC2486q2, c0181p4, i10, 7));
                    }
                }
                parcel2.writeNoException();
                return true;
            case 3:
                Bundle bundle4 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                AbstractC2501u.b(parcel);
                BinderC2486q binderC2486q3 = (BinderC2486q) this;
                if (bundle4 != null) {
                    c0181p3 = new C0181p(null, bundle4);
                } else {
                    C0181p c0181p7 = C0181p.f2795c;
                }
                if (c0181p3 != null) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        binderC2486q3.r1(c0181p3);
                    } else {
                        new X3.d(Looper.getMainLooper(), 1).post(new K3.V(binderC2486q3, c0181p3, 2));
                    }
                }
                parcel2.writeNoException();
                return true;
            case 4:
                Bundle bundle5 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                int i11 = parcel.readInt();
                AbstractC2501u.b(parcel);
                BinderC2486q binderC2486q4 = (BinderC2486q) this;
                if (bundle5 != null) {
                    c0181p2 = new C0181p(null, bundle5);
                } else {
                    C0181p c0181p8 = C0181p.f2795c;
                }
                if (c0181p2 != null) {
                    binderC2486q4.f22781H.getClass();
                    E1.H.b();
                    E1.A aC = E1.H.c();
                    aC.getClass();
                    c0181p2.a();
                    if (!c0181p2.f2797b.isEmpty()) {
                        if ((i11 & 2) == 0 && aC.f2598o) {
                            i9 = 1;
                        } else {
                            E1.Q q7 = aC.f2600q;
                            boolean z7 = q7 != null && q7.f2665b && aC.g();
                            ArrayList arrayList = aC.f2591h;
                            int size = arrayList.size();
                            for (int i12 = 0; i12 < size; i12++) {
                                E1.F f8 = (E1.F) arrayList.get(i12);
                                if (((i11 & 1) == 0 || !f8.c()) && ((!z7 || f8.c() || f8.a() == aC.f2589f) && f8.e(c0181p2))) {
                                    i9 = 1;
                                }
                            }
                        }
                    }
                }
                parcel2.writeNoException();
                parcel2.writeInt(i9);
                return true;
            case 5:
                String string = parcel.readString();
                AbstractC2501u.b(parcel);
                H3.b bVar = BinderC2486q.f22780M;
                bVar.b("select route with routeId = %s", string);
                ((BinderC2486q) this).f22781H.getClass();
                E1.H.b();
                E1.A aC2 = E1.H.c();
                for (E1.F f9 : aC2 == null ? Collections.emptyList() : aC2.f2591h) {
                    if (f9.f2629c.equals(string)) {
                        bVar.b("media route is found and selected", new Object[0]);
                        E1.H.b();
                        E1.H.c().k(f9, 3);
                        parcel2.writeNoException();
                        return true;
                    }
                }
                parcel2.writeNoException();
                return true;
            case 6:
                ((BinderC2486q) this).f22781H.getClass();
                E1.H.b();
                E1.F f10 = E1.H.c().f2601r;
                if (f10 == null) {
                    throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
                }
                E1.H.b();
                E1.H.c().k(f10, 3);
                parcel2.writeNoException();
                return true;
            case 7:
                ((BinderC2486q) this).f22781H.getClass();
                E1.H.b();
                E1.F f11 = E1.H.c().f2601r;
                if (f11 == null) {
                    throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
                }
                E1.H.b();
                boolean zEquals = E1.H.c().f().f2629c.equals(f11.f2629c);
                parcel2.writeNoException();
                int i13 = AbstractC2501u.f22800a;
                parcel2.writeInt(zEquals ? 1 : 0);
                return true;
            case 8:
                String string2 = parcel.readString();
                AbstractC2501u.b(parcel);
                ((BinderC2486q) this).f22781H.getClass();
                E1.H.b();
                E1.A aC3 = E1.H.c();
                for (E1.F f12 : aC3 == null ? Collections.emptyList() : aC3.f2591h) {
                    if (f12.f2629c.equals(string2)) {
                        bundle = f12.f2644r;
                        parcel2.writeNoException();
                        if (bundle == null) {
                            parcel2.writeInt(0);
                        } else {
                            parcel2.writeInt(1);
                            bundle.writeToParcel(parcel2, 1);
                        }
                        return true;
                    }
                }
                parcel2.writeNoException();
                if (bundle == null) {
                    parcel2.writeInt(0);
                } else {
                    parcel2.writeInt(1);
                    bundle.writeToParcel(parcel2, 1);
                }
                return true;
            case 9:
                ((BinderC2486q) this).f22781H.getClass();
                E1.H.b();
                String str = E1.H.c().f().f2629c;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 10:
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            case 11:
                BinderC2486q binderC2486q5 = (BinderC2486q) this;
                HashMap map2 = binderC2486q5.f22783J;
                Iterator it = map2.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        binderC2486q5.f22781H.e((AbstractC0182q) it2.next());
                    }
                }
                map2.clear();
                parcel2.writeNoException();
                return true;
            case 12:
                ((BinderC2486q) this).f22781H.getClass();
                E1.H.b();
                E1.A aC4 = E1.H.c();
                E1.F f13 = aC4 != null ? aC4.f2602s : null;
                if (f13 != null) {
                    E1.H.b();
                    if (E1.H.c().f().f2629c.equals(f13.f2629c)) {
                        i9 = 1;
                    }
                }
                parcel2.writeNoException();
                int i14 = AbstractC2501u.f22800a;
                parcel2.writeInt(i9);
                return true;
            case 13:
                int i15 = parcel.readInt();
                AbstractC2501u.b(parcel);
                ((BinderC2486q) this).f22781H.getClass();
                if (i15 < 0 || i15 > 3) {
                    throw new IllegalArgumentException("Unsupported reason to unselect route");
                }
                E1.H.b();
                E1.A aC5 = E1.H.c();
                E1.F fC = aC5.c();
                if (aC5.f() != fC) {
                    aC5.k(fC, i15);
                }
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
