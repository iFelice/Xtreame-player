package W3;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public final class d implements IInterface {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final IBinder f7469G;

    public d(IBinder iBinder) {
        this.f7469G = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f7469G;
    }
}
