package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1054ab extends AbstractBinderC2328z5 implements InterfaceC1157cb {
    public BinderC1054ab() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static InterfaceC1157cb z3(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1157cb ? (InterfaceC1157cb) iInterfaceQueryLocalInterface : new C1106bb(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final InterfaceC0771Ib i(String str) throws RemoteException {
        try {
            return new BinderC0846Nb((RtbAdapter) Class.forName(str, false, p113o3.r.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable unused) {
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final InterfaceC1260eb m(String str) throws RemoteException {
        BinderC2037tb binderC2037tb;
        try {
            try {
                Class<?> cls = Class.forName(str, false, BinderC1054ab.class.getClassLoader());
                if (p136r3.e.class.isAssignableFrom(cls)) {
                    return new BinderC2037tb((p136r3.e) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                if (p136r3.a.class.isAssignableFrom(cls)) {
                    return new BinderC2037tb((p136r3.a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                p120p3.h.g("Could not instantiate mediation adapter: " + str + " (not a valid adapter).");
                throw new RemoteException();
            } catch (Throwable unused) {
                p120p3.h.b("Reflection failed, retrying using direct instantiation");
                if (!"com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                    if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                        binderC2037tb = new BinderC2037tb(new CustomEventAdapter());
                    }
                    throw new RemoteException();
                }
                binderC2037tb = new BinderC2037tb(new AdMobAdapter());
                return binderC2037tb;
            }
        } catch (Throwable th) {
            p120p3.h.h("Could not instantiate mediation adapter: " + str + ". ", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final boolean o(String str) {
        try {
            return p144s3.a.class.isAssignableFrom(Class.forName(str, false, BinderC1054ab.class.getClassLoader()));
        } catch (Throwable unused) {
            p120p3.h.g("Could not load custom event implementation class: " + str + ", trying Adapter implementation class.");
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1157cb
    public final boolean s(String str) {
        try {
            return p136r3.a.class.isAssignableFrom(Class.forName(str, false, BinderC1054ab.class.getClassLoader()));
        } catch (Throwable unused) {
            p120p3.h.g("Could not load custom event implementation class as Adapter: " + str + ", assuming old custom event implementation.");
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i8 == 1) {
            String string = parcel.readString();
            A5.b(parcel);
            InterfaceC1260eb interfaceC1260ebM = m(string);
            parcel2.writeNoException();
            A5.e(parcel2, interfaceC1260ebM);
            return true;
        }
        if (i8 == 2) {
            String string2 = parcel.readString();
            A5.b(parcel);
            boolean zO = o(string2);
            parcel2.writeNoException();
            parcel2.writeInt(zO ? 1 : 0);
            return true;
        }
        if (i8 == 3) {
            String string3 = parcel.readString();
            A5.b(parcel);
            InterfaceC0771Ib interfaceC0771IbI = i(string3);
            parcel2.writeNoException();
            A5.e(parcel2, interfaceC0771IbI);
            return true;
        }
        if (i8 != 4) {
            return false;
        }
        String string4 = parcel.readString();
        A5.b(parcel);
        boolean zS = s(string4);
        parcel2.writeNoException();
        parcel2.writeInt(zS ? 1 : 0);
        return true;
    }
}
