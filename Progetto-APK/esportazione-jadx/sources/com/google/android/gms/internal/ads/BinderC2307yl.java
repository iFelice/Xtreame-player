package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2307yl extends AbstractBinderC2328z5 implements R8 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0781Il f22050G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public R3.a f22051H;

    public BinderC2307yl(C0781Il c0781Il) {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
        this.f22050G = c0781Il;
    }

    public static float z3(R3.a aVar) {
        Drawable drawable;
        if (aVar == null || (drawable = (Drawable) R3.b.v0(aVar)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    public final void A3(C1865q9 c1865q9) {
        if (this.f22050G.J() instanceof BinderC0948Uf) {
            BinderC0948Uf binderC0948Uf = (BinderC0948Uf) this.f22050G.J();
            synchronized (binderC0948Uf.f16858H) {
                binderC0948Uf.f16870T = c1865q9;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        float fZ3;
        int i9;
        C1865q9 c1865q9;
        InterfaceC0715Ef interfaceC0715Ef;
        float fZze = 0.0f;
        switch (i8) {
            case 2:
                C0781Il c0781Il = this.f22050G;
                if (c0781Il.C() != 0.0f) {
                    fZ3 = c0781Il.C();
                } else {
                    if (c0781Il.J() != null) {
                        try {
                            fZze = c0781Il.J().zze();
                        } catch (RemoteException e8) {
                            p120p3.h.e("Remote exception getting video controller aspect ratio.", e8);
                        }
                        break;
                    } else {
                        R3.a aVar = this.f22051H;
                        if (aVar != null) {
                            fZze = z3(aVar);
                        } else {
                            T8 t8M = c0781Il.M();
                            if (t8M != null) {
                                float fZzd = (t8M.zzd() == -1 || t8M.zzc() == -1) ? 0.0f : t8M.zzd() / t8M.zzc();
                                if (fZzd == 0.0f) {
                                    fZ3 = z3(t8M.zzf());
                                } else {
                                    fZze = fZzd;
                                }
                            }
                        }
                    }
                    fZ3 = fZze;
                }
                parcel2.writeNoException();
                parcel2.writeFloat(fZ3);
                return true;
            case 3:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                this.f22051H = aVarJ0;
                parcel2.writeNoException();
                return true;
            case 4:
                R3.a aVarZzi = zzi();
                parcel2.writeNoException();
                A5.e(parcel2, aVarZzi);
                return true;
            case 5:
                C0781Il c0781Il2 = this.f22050G;
                fZze = c0781Il2.J() != null ? c0781Il2.J().zzg() : 0.0f;
                parcel2.writeNoException();
                parcel2.writeFloat(fZze);
                return true;
            case 6:
                C0781Il c0781Il3 = this.f22050G;
                fZze = c0781Il3.J() != null ? c0781Il3.J().zzf() : 0.0f;
                parcel2.writeNoException();
                parcel2.writeFloat(fZze);
                return true;
            case 7:
                p090l3.B0 b0J = this.f22050G.J();
                parcel2.writeNoException();
                A5.e(parcel2, b0J);
                return true;
            case 8:
                i9 = this.f22050G.J() != null ? 1 : 0;
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(i9);
                return true;
            case 9:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    c1865q9 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    c1865q9 = iInterfaceQueryLocalInterface instanceof C1865q9 ? (C1865q9) iInterfaceQueryLocalInterface : new C1865q9(strongBinder, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener", 0);
                }
                A5.b(parcel);
                A3(c1865q9);
                parcel2.writeNoException();
                return true;
            case 10:
                C0781Il c0781Il4 = this.f22050G;
                synchronized (c0781Il4) {
                    interfaceC0715Ef = c0781Il4.f14030j;
                }
                i9 = interfaceC0715Ef != null ? 1 : 0;
                parcel2.writeNoException();
                ClassLoader classLoader2 = A5.f11962a;
                parcel2.writeInt(i9);
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.R8
    public final R3.a zzi() {
        R3.a aVar = this.f22051H;
        if (aVar != null) {
            return aVar;
        }
        T8 t8M = this.f22050G.M();
        if (t8M == null) {
            return null;
        }
        return t8M.zzf();
    }
}
