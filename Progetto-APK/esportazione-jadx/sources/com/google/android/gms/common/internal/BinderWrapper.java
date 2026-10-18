package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new C3.H(24);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final IBinder f11781G;

    public BinderWrapper(H3.w wVar) {
        this.f11781G = wVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeStrongBinder(this.f11781G);
    }

    public /* synthetic */ BinderWrapper(Parcel parcel) {
        this.f11781G = parcel.readStrongBinder();
    }
}
