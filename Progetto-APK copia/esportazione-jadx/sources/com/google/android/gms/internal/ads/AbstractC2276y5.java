package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.y5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2276y5 implements IInterface {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21991G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final IBinder f21992H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f21993I;

    public /* synthetic */ AbstractC2276y5(IBinder iBinder, String str, int i8) {
        this.f21991G = i8;
        this.f21992H = iBinder;
        this.f21993I = str;
    }

    public final void O2(int i8, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f21992H.transact(i8, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    public final Parcel Y(int i8, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f21992H.transact(i8, parcel, parcelObtain, 0);
                parcelObtain.readException();
                parcel.recycle();
                return parcelObtain;
            } catch (RuntimeException e8) {
                parcelObtain.recycle();
                throw e8;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f21992H;
    }

    public final void i2(int i8, Parcel parcel) {
        int i9 = this.f21991G;
        IBinder iBinder = this.f21992H;
        switch (i9) {
            case 2:
                try {
                    iBinder.transact(i8, parcel, null, 1);
                    return;
                } finally {
                    parcel.recycle();
                }
            default:
                try {
                    iBinder.transact(2, parcel, null, 1);
                    return;
                } finally {
                    parcel.recycle();
                }
        }
    }

    public final Parcel j0() {
        int i8 = this.f21991G;
        String str = this.f21993I;
        switch (i8) {
            case 0:
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken(str);
                return parcelObtain;
            case 1:
            default:
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain2.writeInterfaceToken(str);
                return parcelObtain2;
            case 2:
                Parcel parcelObtain3 = Parcel.obtain();
                parcelObtain3.writeInterfaceToken(str);
                return parcelObtain3;
            case 3:
                Parcel parcelObtain4 = Parcel.obtain();
                parcelObtain4.writeInterfaceToken(str);
                return parcelObtain4;
            case 4:
                Parcel parcelObtain5 = Parcel.obtain();
                parcelObtain5.writeInterfaceToken(str);
                return parcelObtain5;
        }
    }

    public final void k3(int i8, Parcel parcel) {
        try {
            this.f21992H.transact(i8, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    public final Parcel n2(int i8, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f21992H.transact(i8, parcel, parcelObtain, 0);
                parcelObtain.readException();
                parcel.recycle();
                return parcelObtain;
            } catch (RuntimeException e8) {
                parcelObtain.recycle();
                throw e8;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    public final void r1(int i8, Parcel parcel) {
        int i9 = this.f21991G;
        IBinder iBinder = this.f21992H;
        switch (i9) {
            case 2:
                Parcel parcelObtain = Parcel.obtain();
                try {
                    iBinder.transact(i8, parcel, parcelObtain, 0);
                    parcelObtain.readException();
                    return;
                } finally {
                    parcel.recycle();
                    parcelObtain.recycle();
                }
            default:
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    iBinder.transact(i8, parcel, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return;
                } finally {
                    parcel.recycle();
                    parcelObtain2.recycle();
                }
        }
    }

    public final Parcel u3(int i8, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f21992H.transact(i8, parcel, parcelObtain, 0);
                parcelObtain.readException();
                parcel.recycle();
                return parcelObtain;
            } catch (RuntimeException e8) {
                parcelObtain.recycle();
                throw e8;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    public final Parcel v0(int i8, Parcel parcel) {
        int i9 = this.f21991G;
        IBinder iBinder = this.f21992H;
        switch (i9) {
            case 2:
                Parcel parcelObtain = Parcel.obtain();
                try {
                    try {
                        iBinder.transact(i8, parcel, parcelObtain, 0);
                        parcelObtain.readException();
                        parcel.recycle();
                        return parcelObtain;
                    } catch (Throwable th) {
                        parcel.recycle();
                        throw th;
                    }
                } catch (RuntimeException e8) {
                    parcelObtain.recycle();
                    throw e8;
                }
            default:
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    try {
                        iBinder.transact(i8, parcel, parcelObtain2, 0);
                        parcelObtain2.readException();
                        parcel.recycle();
                        return parcelObtain2;
                    } catch (Throwable th2) {
                        parcel.recycle();
                        throw th2;
                    }
                } catch (RuntimeException e9) {
                    parcelObtain2.recycle();
                    throw e9;
                }
        }
    }

    public final void y3(int i8, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f21992H.transact(i8, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }
}
