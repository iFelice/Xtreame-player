package P1;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class f implements g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public IBinder f5791G;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f5791G;
    }

    @Override // P1.g
    public final void z0(String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
            parcelObtain.writeStringArray(strArr);
            this.f5791G.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
