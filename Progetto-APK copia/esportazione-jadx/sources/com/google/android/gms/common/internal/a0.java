package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;

/* JADX INFO: loaded from: classes.dex */
public abstract class a0 extends AbstractBinderC2478o implements F {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f11838H = 0;

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            R3.a aVarZzd = ((J3.p) this).zzd();
            parcel2.writeNoException();
            Y3.a.c(parcel2, aVarZzd);
        } else {
            if (i8 != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(((J3.p) this).f4163I);
        }
        return true;
    }
}
