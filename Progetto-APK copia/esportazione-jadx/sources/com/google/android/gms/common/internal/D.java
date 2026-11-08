package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class D extends M3.a {
    public static final Parcelable.Creator<D> CREATOR = new C3.H(22);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11786G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final IBinder f11787H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final J3.b f11788I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f11789J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f11790K;

    public D(int i8, IBinder iBinder, J3.b bVar, boolean z7, boolean z8) {
        this.f11786G = i8;
        this.f11787H = iBinder;
        this.f11788I = bVar;
        this.f11789J = z7;
        this.f11790K = z8;
    }

    public final boolean equals(Object obj) {
        Object y7;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d6 = (D) obj;
        if (this.f11788I.equals(d6.f11788I)) {
            Object y8 = null;
            IBinder iBinder = this.f11787H;
            if (iBinder == null) {
                y7 = null;
            } else {
                int i8 = AbstractBinderC0625a.f11837H;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                y7 = iInterfaceQueryLocalInterface instanceof InterfaceC0638n ? (InterfaceC0638n) iInterfaceQueryLocalInterface : new Y(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 3);
            }
            IBinder iBinder2 = d6.f11787H;
            if (iBinder2 != null) {
                int i9 = AbstractBinderC0625a.f11837H;
                IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                y8 = iInterfaceQueryLocalInterface2 instanceof InterfaceC0638n ? (InterfaceC0638n) iInterfaceQueryLocalInterface2 : new Y(iBinder2, "com.google.android.gms.common.internal.IAccountAccessor", 3);
            }
            if (U4.a.c(y7, y8)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11786G);
        AbstractC2987b.L(parcel, 2, this.f11787H);
        AbstractC2987b.P(parcel, 3, this.f11788I, i8);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f11789J ? 1 : 0);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f11790K ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
