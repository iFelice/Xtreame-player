package com.google.android.gms.internal.cast;

import E1.AbstractC0182q;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2458j extends AbstractC0182q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final H3.b f22746b = new H3.b("MediaRouterCallback", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2454i f22747a;

    public C2458j(C2454i c2454i) {
        com.bumptech.glide.c.h(c2454i);
        this.f22747a = c2454i;
    }

    @Override // E1.AbstractC0182q
    public final void a(E1.F f8) {
        try {
            C2454i c2454i = this.f22747a;
            String str = f8.f2629c;
            Bundle bundle = f8.f2644r;
            Parcel parcelJ0 = c2454i.j0();
            parcelJ0.writeString(str);
            AbstractC2501u.c(parcelJ0, bundle);
            c2454i.r1(1, parcelJ0);
        } catch (RemoteException e8) {
            f22746b.a(e8, "Unable to call %s on %s.", "onRouteAdded", C2454i.class.getSimpleName());
        }
    }

    @Override // E1.AbstractC0182q
    public final void b(E1.F f8) {
        try {
            C2454i c2454i = this.f22747a;
            String str = f8.f2629c;
            Bundle bundle = f8.f2644r;
            Parcel parcelJ0 = c2454i.j0();
            parcelJ0.writeString(str);
            AbstractC2501u.c(parcelJ0, bundle);
            c2454i.r1(2, parcelJ0);
        } catch (RemoteException e8) {
            f22746b.a(e8, "Unable to call %s on %s.", "onRouteChanged", C2454i.class.getSimpleName());
        }
    }

    @Override // E1.AbstractC0182q
    public final void c(E1.F f8) {
        try {
            C2454i c2454i = this.f22747a;
            String str = f8.f2629c;
            Bundle bundle = f8.f2644r;
            Parcel parcelJ0 = c2454i.j0();
            parcelJ0.writeString(str);
            AbstractC2501u.c(parcelJ0, bundle);
            c2454i.r1(3, parcelJ0);
        } catch (RemoteException e8) {
            f22746b.a(e8, "Unable to call %s on %s.", "onRouteRemoved", C2454i.class.getSimpleName());
        }
    }

    @Override // E1.AbstractC0182q
    public final void d(E1.H h8, E1.F f8, int i8) {
        CastDevice castDeviceI;
        String str;
        CastDevice castDeviceI2;
        C2454i c2454i = this.f22747a;
        Integer numValueOf = Integer.valueOf(i8);
        String str2 = f8.f2629c;
        Object[] objArr = {numValueOf, str2};
        H3.b bVar = f22746b;
        Log.i(bVar.f3679a, bVar.c("onRouteSelected with reason = %d, routeId = %s", objArr));
        if (f8.f2637k != 1) {
            return;
        }
        if (str2 == null) {
            str = str2;
            break;
        }
        try {
            if (str2.endsWith("-groupRoute") && (castDeviceI = CastDevice.i(f8.f2644r)) != null) {
                String strSubstring = castDeviceI.f11678G;
                if (strSubstring.startsWith("__cast_nearby__")) {
                    strSubstring = strSubstring.substring(16);
                }
                h8.getClass();
                E1.H.b();
                E1.A aC = E1.H.c();
                Iterator it = (aC == null ? Collections.emptyList() : aC.f2591h).iterator();
                while (true) {
                    if (it.hasNext()) {
                        E1.F f9 = (E1.F) it.next();
                        str = f9.f2629c;
                        if (str != null && !str.endsWith("-groupRoute") && (castDeviceI2 = CastDevice.i(f9.f2644r)) != null) {
                            String strSubstring2 = castDeviceI2.f11678G;
                            if (strSubstring2.startsWith("__cast_nearby__")) {
                                strSubstring2 = strSubstring2.substring(16);
                            }
                            if (TextUtils.equals(strSubstring2, strSubstring)) {
                                bVar.b("routeId is changed from %s to %s", str2, str);
                                break;
                            }
                        }
                    }
                }
            }
            str = str2;
            break;
        } catch (RemoteException e8) {
            bVar.a(e8, "Unable to call %s on %s.", "onRouteSelected", C2454i.class.getSimpleName());
            return;
        }
        Parcel parcelV0 = c2454i.v0(7, c2454i.j0());
        int i9 = parcelV0.readInt();
        parcelV0.recycle();
        if (i9 < 220400000) {
            Bundle bundle = f8.f2644r;
            Parcel parcelJ0 = c2454i.j0();
            parcelJ0.writeString(str);
            AbstractC2501u.c(parcelJ0, bundle);
            c2454i.r1(4, parcelJ0);
            return;
        }
        Bundle bundle2 = f8.f2644r;
        Parcel parcelJ1 = c2454i.j0();
        parcelJ1.writeString(str);
        parcelJ1.writeString(str2);
        AbstractC2501u.c(parcelJ1, bundle2);
        c2454i.r1(8, parcelJ1);
    }

    @Override // E1.AbstractC0182q
    public final void e(E1.F f8, int i8) {
        Integer numValueOf = Integer.valueOf(i8);
        String str = f8.f2629c;
        Object[] objArr = {numValueOf, str};
        H3.b bVar = f22746b;
        Log.i(bVar.f3679a, bVar.c("onRouteUnselected with reason = %d, routeId = %s", objArr));
        if (f8.f2637k != 1) {
            bVar.b("skip route unselection for non-cast route", new Object[0]);
            return;
        }
        try {
            C2454i c2454i = this.f22747a;
            Bundle bundle = f8.f2644r;
            Parcel parcelJ0 = c2454i.j0();
            parcelJ0.writeString(str);
            AbstractC2501u.c(parcelJ0, bundle);
            parcelJ0.writeInt(i8);
            c2454i.r1(6, parcelJ0);
        } catch (RemoteException e8) {
            bVar.a(e8, "Unable to call %s on %s.", "onRouteUnselected", C2454i.class.getSimpleName());
        }
    }
}
