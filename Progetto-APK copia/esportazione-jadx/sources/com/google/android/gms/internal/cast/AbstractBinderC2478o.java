package com.google.android.gms.internal.cast;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC2478o extends Binder implements IInterface {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22762G;

    public AbstractBinderC2478o(String str, int i8) {
        this.f22762G = i8;
        if (i8 == 1) {
            attachInterface(this, str);
        } else if (i8 != 2) {
            attachInterface(this, str);
        } else {
            attachInterface(this, str);
        }
    }

    public boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        return false;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i8, Parcel parcel, Parcel parcel2, int i9) {
        switch (this.f22762G) {
            case 0:
                if (i8 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i8, parcel, parcel2, i9)) {
                    return true;
                }
                return Y(i8, parcel, parcel2);
            case 1:
                if (i8 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i8, parcel, parcel2, i9)) {
                    return true;
                }
                return Y(i8, parcel, parcel2);
            default:
                if (i8 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i8, parcel, parcel2, i9)) {
                    return true;
                }
                return Y(i8, parcel, parcel2);
        }
    }
}
