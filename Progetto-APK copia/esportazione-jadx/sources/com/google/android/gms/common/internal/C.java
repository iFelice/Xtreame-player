package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class C extends M3.a {
    public static final Parcelable.Creator<C> CREATOR = new C3.H(21);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11782G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Account f11783H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f11784I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final GoogleSignInAccount f11785J;

    public C(int i8, Account account, int i9, GoogleSignInAccount googleSignInAccount) {
        this.f11782G = i8;
        this.f11783H = account;
        this.f11784I = i9;
        this.f11785J = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11782G);
        AbstractC2987b.P(parcel, 2, this.f11783H, i8);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11784I);
        AbstractC2987b.P(parcel, 4, this.f11785J, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
