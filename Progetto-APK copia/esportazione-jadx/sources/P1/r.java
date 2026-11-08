package P1;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.MultiInstanceInvalidationService;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class r extends Binder implements i {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f5832H = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f5833G;

    public r(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f5833G = multiInstanceInvalidationService;
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }

    @Override // P1.i
    public final int X2(g gVar, String str) {
        q0.h(gVar, "callback");
        int i8 = 0;
        if (str == null) {
            return 0;
        }
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f5833G;
        synchronized (multiInstanceInvalidationService.f9715I) {
            try {
                int i9 = multiInstanceInvalidationService.f9713G + 1;
                multiInstanceInvalidationService.f9713G = i9;
                if (multiInstanceInvalidationService.f9715I.register(gVar, Integer.valueOf(i9))) {
                    multiInstanceInvalidationService.f9714H.put(Integer.valueOf(i9), str);
                    i8 = i9;
                } else {
                    multiInstanceInvalidationService.f9713G--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i8;
    }

    @Override // android.os.Binder
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final boolean onTransact(int i8, Parcel parcel, Parcel parcel2, int i9) {
        if (i8 >= 1 && i8 <= 16777215) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
        }
        if (i8 == 1598968902) {
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
        }
        g gVar = null;
        g gVar2 = null;
        if (i8 == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
                if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof g)) {
                    f fVar = new f();
                    fVar.f5791G = strongBinder;
                    gVar = fVar;
                } else {
                    gVar = (g) iInterfaceQueryLocalInterface;
                }
            }
            int iX2 = X2(gVar, parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iX2);
        } else if (i8 == 2) {
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
                if (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof g)) {
                    f fVar2 = new f();
                    fVar2.f5791G = strongBinder2;
                    gVar2 = fVar2;
                } else {
                    gVar2 = (g) iInterfaceQueryLocalInterface2;
                }
            }
            int i10 = parcel.readInt();
            q0.h(gVar2, "callback");
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.f5833G;
            synchronized (multiInstanceInvalidationService.f9715I) {
                multiInstanceInvalidationService.f9715I.unregister(gVar2);
            }
            parcel2.writeNoException();
        } else {
            if (i8 != 3) {
                return super.onTransact(i8, parcel, parcel2, i9);
            }
            Z2(parcel.readInt(), parcel.createStringArray());
        }
        return true;
    }

    @Override // P1.i
    public final void Z2(int i8, String[] strArr) {
        q0.h(strArr, "tables");
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f5833G;
        synchronized (multiInstanceInvalidationService.f9715I) {
            String str = (String) multiInstanceInvalidationService.f9714H.get(Integer.valueOf(i8));
            if (str == null) {
                Log.w("ROOM", "Remote invalidation client ID not registered");
                return;
            }
            int iBeginBroadcast = multiInstanceInvalidationService.f9715I.beginBroadcast();
            for (int i9 = 0; i9 < iBeginBroadcast; i9++) {
                try {
                    Object broadcastCookie = multiInstanceInvalidationService.f9715I.getBroadcastCookie(i9);
                    q0.f(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                    Integer num = (Integer) broadcastCookie;
                    int iIntValue = num.intValue();
                    String str2 = (String) multiInstanceInvalidationService.f9714H.get(num);
                    if (i8 != iIntValue && q0.c(str, str2)) {
                        try {
                            ((g) multiInstanceInvalidationService.f9715I.getBroadcastItem(i9)).z0(strArr);
                        } catch (RemoteException e8) {
                            Log.w("ROOM", "Error invoking a remote callback", e8);
                        }
                    }
                } catch (Throwable th) {
                    multiInstanceInvalidationService.f9715I.finishBroadcast();
                    throw th;
                }
            }
            multiInstanceInvalidationService.f9715I.finishBroadcast();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
