package D3;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.cast.AbstractC2501u;

/* JADX INFO: renamed from: D3.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0163g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final H3.b f2382c = new H3.b("SessionManager", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f2383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f2384b;

    public C0163g(z zVar, Context context) {
        this.f2383a = zVar;
        this.f2384b = context;
    }

    public final void a(InterfaceC0164h interfaceC0164h) {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        try {
            z zVar = this.f2383a;
            B b8 = new B(interfaceC0164h);
            Parcel parcelJ0 = zVar.j0();
            AbstractC2501u.d(parcelJ0, b8);
            zVar.r1(2, parcelJ0);
        } catch (RemoteException e8) {
            f2382c.a(e8, "Unable to call %s on %s.", "addSessionManagerListener", z.class.getSimpleName());
        }
    }

    public final void b(boolean z7) {
        H3.b bVar = f2382c;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        try {
            Log.i(bVar.f3679a, bVar.c("End session for %s", this.f2384b.getPackageName()));
            z zVar = this.f2383a;
            Parcel parcelJ0 = zVar.j0();
            int i8 = AbstractC2501u.f22800a;
            parcelJ0.writeInt(1);
            parcelJ0.writeInt(z7 ? 1 : 0);
            zVar.r1(6, parcelJ0);
        } catch (RemoteException e8) {
            bVar.a(e8, "Unable to call %s on %s.", "endCurrentSession", z.class.getSimpleName());
        }
    }

    public final AbstractC0162f c() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        try {
            z zVar = this.f2383a;
            Parcel parcelV0 = zVar.v0(1, zVar.j0());
            R3.a aVarJ0 = R3.b.j0(parcelV0.readStrongBinder());
            parcelV0.recycle();
            return (AbstractC0162f) R3.b.v0(aVarJ0);
        } catch (RemoteException e8) {
            f2382c.a(e8, "Unable to call %s on %s.", "getWrappedCurrentSession", z.class.getSimpleName());
            return null;
        }
    }
}
