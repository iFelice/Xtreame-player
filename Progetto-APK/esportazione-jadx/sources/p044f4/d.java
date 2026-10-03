package p044f4;

import K3.N;
import X3.a;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends Binder implements e, IInterface {
    @Override // android.os.Binder
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final boolean onTransact(int i8, Parcel parcel, Parcel parcel2, int i9) {
        if (i8 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i8, parcel, parcel2, i9)) {
            return true;
        }
        switch (i8) {
            case 3:
                a.b(parcel);
                break;
            case 4:
                a.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                a.b(parcel);
                break;
            case 7:
                a.b(parcel);
                break;
            case 8:
                i iVar = (i) a.a(parcel, i.CREATOR);
                a.b(parcel);
                N n7 = (N) this;
                n7.f4503H.post(new RunnableC3036k(29, n7, iVar));
                break;
            case 9:
                a.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
