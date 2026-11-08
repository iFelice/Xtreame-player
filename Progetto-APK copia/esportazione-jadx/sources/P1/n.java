package P1;

import android.os.RemoteException;
import android.util.Log;
import java.util.Set;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f5817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f5818b;

    public n(q qVar, String[] strArr) {
        this.f5818b = qVar;
        this.f5817a = strArr;
    }

    public final void a(Set set) {
        q0.h(set, "tables");
        q qVar = this.f5818b;
        if (qVar.f5829h.get()) {
            return;
        }
        try {
            i iVar = qVar.f5827f;
            if (iVar != null) {
                int i8 = qVar.f5825d;
                Object[] array = set.toArray(new String[0]);
                q0.f(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                iVar.Z2(i8, (String[]) array);
            }
        } catch (RemoteException e8) {
            Log.w("ROOM", "Cannot broadcast invalidation", e8);
        }
    }
}
