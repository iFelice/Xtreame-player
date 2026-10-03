package F3;

import E3.t;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final H3.b f3245a = new H3.b("MediaSessionUtils", null);

    public static ArrayList a(t tVar) {
        try {
            Parcel parcelV0 = tVar.v0(3, tVar.j0());
            ArrayList arrayListCreateTypedArrayList = parcelV0.createTypedArrayList(E3.e.CREATOR);
            parcelV0.recycle();
            return arrayListCreateTypedArrayList;
        } catch (RemoteException e8) {
            Object[] objArr = {"getNotificationActions", t.class.getSimpleName()};
            H3.b bVar = f3245a;
            Log.e(bVar.f3679a, bVar.c("Unable to call %s on %s.", objArr), e8);
            return null;
        }
    }

    public static int[] b(t tVar) {
        try {
            Parcel parcelV0 = tVar.v0(4, tVar.j0());
            int[] iArrCreateIntArray = parcelV0.createIntArray();
            parcelV0.recycle();
            return iArrCreateIntArray;
        } catch (RemoteException e8) {
            Object[] objArr = {"getCompactViewActionIndices", t.class.getSimpleName()};
            H3.b bVar = f3245a;
            Log.e(bVar.f3679a, bVar.c("Unable to call %s on %s.", objArr), e8);
            return null;
        }
    }
}
