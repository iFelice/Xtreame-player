package W3;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends Binder implements IInterface {
    @Override // android.os.Binder
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final boolean onTransact(int i8, Parcel parcel, Parcel parcel2, int i9) {
        if (i8 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i8, parcel, parcel2, i9)) {
            return true;
        }
        if (i8 != 1) {
            return false;
        }
        Parcelable.Creator<Status> creator = Status.CREATOR;
        int i10 = a.f7468a;
        Status statusCreateFromParcel = parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
        A3.d dVarCreateFromParcel = parcel.readInt() == 0 ? null : A3.d.CREATOR.createFromParcel(parcel);
        g gVar = (g) this;
        A3.b bVar = dVarCreateFromParcel != null ? new A3.b(dVarCreateFromParcel.f639G, dVarCreateFromParcel.f640H) : null;
        boolean z7 = statusCreateFromParcel.f11756G <= 0;
        p052g4.i iVar = gVar.f7473G;
        if (z7) {
            iVar.b(bVar);
            return true;
        }
        iVar.a(statusCreateFromParcel.f11758I != null ? new n(statusCreateFromParcel) : new com.google.android.gms.common.api.h(statusCreateFromParcel));
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
