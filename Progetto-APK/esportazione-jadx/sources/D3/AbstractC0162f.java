package D3;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.AbstractC2434d;
import com.google.android.gms.internal.cast.C2442f;

/* JADX INFO: renamed from: D3.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0162f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final H3.b f2380b = new H3.b("Session", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f2381a;

    public AbstractC0162f(Context context, String str, String str2) {
        y yVarB3;
        try {
            yVarB3 = AbstractC2434d.b(context).B3(str, str2, new A(this));
        } catch (C0160d | RemoteException e8) {
            AbstractC2434d.f22665a.a(e8, "Unable to call %s on %s.", "newSessionImpl", C2442f.class.getSimpleName());
            yVarB3 = null;
        }
        this.f2381a = yVarB3;
    }

    public final void a(int i8) {
        y yVar = this.f2381a;
        if (yVar == null) {
            return;
        }
        try {
            w wVar = (w) yVar;
            Parcel parcelJ0 = wVar.j0();
            parcelJ0.writeInt(i8);
            wVar.r1(13, parcelJ0);
        } catch (RemoteException e8) {
            f2380b.a(e8, "Unable to call %s on %s.", "notifySessionEnded", y.class.getSimpleName());
        }
    }

    public final int b() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        y yVar = this.f2381a;
        if (yVar != null) {
            try {
                w wVar = (w) yVar;
                Parcel parcelV0 = wVar.v0(17, wVar.j0());
                int i8 = parcelV0.readInt();
                parcelV0.recycle();
                if (i8 >= 211100000) {
                    w wVar2 = (w) yVar;
                    Parcel parcelV1 = wVar2.v0(18, wVar2.j0());
                    int i9 = parcelV1.readInt();
                    parcelV1.recycle();
                    return i9;
                }
            } catch (RemoteException e8) {
                f2380b.a(e8, "Unable to call %s on %s.", "getSessionStartType", y.class.getSimpleName());
            }
        }
        return 0;
    }

    public final R3.a c() {
        y yVar = this.f2381a;
        if (yVar != null) {
            try {
                w wVar = (w) yVar;
                Parcel parcelV0 = wVar.v0(1, wVar.j0());
                R3.a aVarJ0 = R3.b.j0(parcelV0.readStrongBinder());
                parcelV0.recycle();
                return aVarJ0;
            } catch (RemoteException e8) {
                f2380b.a(e8, "Unable to call %s on %s.", "getWrappedObject", y.class.getSimpleName());
            }
        }
        return null;
    }
}
