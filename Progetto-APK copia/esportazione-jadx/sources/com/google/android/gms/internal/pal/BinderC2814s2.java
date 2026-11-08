package com.google.android.gms.internal.pal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2814s2 extends AbstractBinderC2478o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ p052g4.i f23996H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC2814s2(p052g4.i iVar) {
        super("com.google.android.gms.ads.signalsdk.ISignalSdkCallback", 2);
        this.f23996H = iVar;
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        p052g4.i iVar = this.f23996H;
        if (i8 != 1) {
            if (i8 != 2) {
                return false;
            }
            int i9 = parcel.readInt();
            AbstractC2671a2.a(parcel);
            iVar.c(new C2806r2(i9));
            return true;
        }
        Parcelable.Creator creator = Bundle.CREATOR;
        int i10 = AbstractC2671a2.f23725a;
        Parcelable parcelable = parcel.readInt() == 0 ? null : (Parcelable) creator.createFromParcel(parcel);
        AbstractC2671a2.a(parcel);
        iVar.d(((Bundle) parcelable).getString("newToken"));
        return true;
    }
}
