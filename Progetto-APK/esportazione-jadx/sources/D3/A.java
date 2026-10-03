package D3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class A extends AbstractBinderC2478o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AbstractC0162f f2324H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(AbstractC0162f abstractC0162f) {
        super("com.google.android.gms.cast.framework.ISessionProxy", 0);
        this.f2324H = abstractC0162f;
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        CastDevice castDevice;
        CastDevice castDevice2;
        AbstractC0162f abstractC0162f = this.f2324H;
        switch (i8) {
            case 1:
                R3.b bVar = new R3.b(abstractC0162f);
                parcel2.writeNoException();
                AbstractC2501u.d(parcel2, bVar);
                return true;
            case 2:
                Bundle bundle = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                AbstractC2501u.b(parcel);
                ((C0159c) abstractC0162f).f(bundle);
                parcel2.writeNoException();
                return true;
            case 3:
                Bundle bundle2 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                AbstractC2501u.b(parcel);
                ((C0159c) abstractC0162f).f(bundle2);
                parcel2.writeNoException();
                return true;
            case 4:
                int i9 = AbstractC2501u.f22800a;
                int i10 = parcel.readInt() != 0 ? 1 : 0;
                AbstractC2501u.b(parcel);
                C0159c c0159c = (C0159c) abstractC0162f;
                r rVar = c0159c.f2371e;
                if (rVar != null) {
                    try {
                        p pVar = (p) rVar;
                        Parcel parcelJ0 = pVar.j0();
                        parcelJ0.writeInt(i10);
                        parcelJ0.writeInt(0);
                        pVar.r1(6, parcelJ0);
                    } catch (RemoteException e8) {
                        C0159c.f2368m.a(e8, "Unable to call %s on %s.", "disconnectFromDevice", r.class.getSimpleName());
                    }
                    c0159c.a(0);
                    break;
                }
                parcel2.writeNoException();
                return true;
            case 5:
                C0159c c0159c2 = (C0159c) abstractC0162f;
                c0159c2.getClass();
                com.bumptech.glide.c.d("Must be called from the main thread.");
                E3.j jVar = c0159c2.f2376j;
                long jF = jVar == null ? 0L : jVar.f() - c0159c2.f2376j.a();
                parcel2.writeNoException();
                parcel2.writeLong(jF);
                return true;
            case 6:
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            case 7:
                Bundle bundle3 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                AbstractC2501u.b(parcel);
                C0159c c0159c3 = (C0159c) abstractC0162f;
                c0159c3.getClass();
                c0159c3.f2377k = CastDevice.i(bundle3);
                parcel2.writeNoException();
                return true;
            case 8:
                Bundle bundle4 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                AbstractC2501u.b(parcel);
                C0159c c0159c4 = (C0159c) abstractC0162f;
                c0159c4.getClass();
                c0159c4.f2377k = CastDevice.i(bundle4);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle bundle5 = (Bundle) AbstractC2501u.a(parcel, Bundle.CREATOR);
                AbstractC2501u.b(parcel);
                C0159c c0159c5 = (C0159c) abstractC0162f;
                c0159c5.getClass();
                CastDevice castDeviceI = CastDevice.i(bundle5);
                if (castDeviceI != null && !castDeviceI.equals(c0159c5.f2377k)) {
                    String str = castDeviceI.f11681J;
                    boolean z7 = !TextUtils.isEmpty(str) && ((castDevice2 = c0159c5.f2377k) == null || !TextUtils.equals(castDevice2.f11681J, str));
                    c0159c5.f2377k = castDeviceI;
                    Object[] objArr = new Object[2];
                    objArr[0] = castDeviceI;
                    objArr[1] = true != z7 ? "unchanged" : "changed";
                    C0159c.f2368m.b("update to device (%s) with name %s", objArr);
                    if (z7 && (castDevice = c0159c5.f2377k) != null) {
                        F3.l lVar = c0159c5.f2374h;
                        if (lVar != null) {
                            H3.b bVar2 = F3.l.f3223v;
                            Log.i(bVar2.f3679a, bVar2.c("update Cast device to %s", castDevice));
                            lVar.f3238o = castDevice;
                            lVar.b();
                        }
                        Iterator it = new HashSet(c0159c5.f2370d).iterator();
                        while (it.hasNext()) {
                            ((I) it.next()).getClass();
                        }
                    }
                }
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
