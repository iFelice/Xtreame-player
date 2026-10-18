package P1;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import androidx.room.MultiInstanceInvalidationService;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class s extends RemoteCallbackList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f5834a;

    public s(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f5834a = multiInstanceInvalidationService;
    }

    @Override // android.os.RemoteCallbackList
    public final void onCallbackDied(IInterface iInterface, Object obj) {
        q0.h((g) iInterface, "callback");
        q0.h(obj, "cookie");
        this.f5834a.f9714H.remove((Integer) obj);
    }
}
