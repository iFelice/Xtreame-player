package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0635k extends M3.a {
    public static final Parcelable.Creator<C0635k> CREATOR = new C3.H(27);

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final Scope[] f11859U = new Scope[0];

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final J3.d[] f11860V = new J3.d[0];

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11861G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f11862H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f11863I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f11864J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public IBinder f11865K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Scope[] f11866L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Bundle f11867M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Account f11868N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public J3.d[] f11869O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public J3.d[] f11870P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f11871Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f11872R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f11873S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final String f11874T;

    public C0635k(int i8, int i9, int i10, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, J3.d[] dVarArr, J3.d[] dVarArr2, boolean z7, int i11, boolean z8, String str2) {
        Account account2;
        Scope[] scopeArr2 = scopeArr == null ? f11859U : scopeArr;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        J3.d[] dVarArr3 = f11860V;
        J3.d[] dVarArr4 = dVarArr == null ? dVarArr3 : dVarArr;
        dVarArr3 = dVarArr2 != null ? dVarArr2 : dVarArr3;
        this.f11861G = i8;
        this.f11862H = i9;
        this.f11863I = i10;
        if ("com.google.android.gms".equals(str)) {
            this.f11864J = "com.google.android.gms";
        } else {
            this.f11864J = str;
        }
        if (i8 < 2) {
            account2 = null;
            if (iBinder != null) {
                int i12 = AbstractBinderC0625a.f11837H;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                IInterface y7 = iInterfaceQueryLocalInterface instanceof InterfaceC0638n ? (InterfaceC0638n) iInterfaceQueryLocalInterface : new Y(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 3);
                if (y7 != null) {
                    long jClearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        try {
                            Y y8 = (Y) y7;
                            Parcel parcelY = y8.Y(2, y8.j0());
                            Account account3 = (Account) Y3.a.a(parcelY, Account.CREATOR);
                            parcelY.recycle();
                            Binder.restoreCallingIdentity(jClearCallingIdentity);
                            account2 = account3;
                        } catch (RemoteException unused) {
                            Log.w("AccountAccessor", "Remote account accessor probably died");
                            Binder.restoreCallingIdentity(jClearCallingIdentity);
                        }
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                        throw th;
                    }
                }
            }
        } else {
            this.f11865K = iBinder;
            account2 = account;
        }
        this.f11868N = account2;
        this.f11866L = scopeArr2;
        this.f11867M = bundle2;
        this.f11869O = dVarArr4;
        this.f11870P = dVarArr3;
        this.f11871Q = z7;
        this.f11872R = i11;
        this.f11873S = z8;
        this.f11874T = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        C3.H.a(this, parcel, i8);
    }
}
