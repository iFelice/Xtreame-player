package T3;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public final class a implements c, IInterface {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final IBinder f6602G;

    public a(IBinder iBinder) {
        this.f6602G = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6602G;
    }
}
