package P1;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class o extends Binder implements g {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f5819H = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ q f5820G;

    public o(q qVar) {
        this.f5820G = qVar;
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
    }

    @Override // android.os.Binder
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final boolean onTransact(int i8, Parcel parcel, Parcel parcel2, int i9) {
        if (i8 >= 1 && i8 <= 16777215) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
        }
        if (i8 == 1598968902) {
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
            return true;
        }
        if (i8 != 1) {
            return super.onTransact(i8, parcel, parcel2, i9);
        }
        z0(parcel.createStringArray());
        return true;
    }

    @Override // P1.g
    public final void z0(String[] strArr) {
        q0.h(strArr, "tables");
        q qVar = this.f5820G;
        qVar.f5824c.execute(new U0.r(6, qVar, strArr));
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
