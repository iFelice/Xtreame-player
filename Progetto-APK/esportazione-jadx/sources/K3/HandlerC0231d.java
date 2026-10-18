package K3;

import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: renamed from: K3.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerC0231d extends X3.d {
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i8 = message.what;
        if (i8 != 1) {
            if (i8 != 2) {
                Log.wtf("BasePendingResult", p000a.r.f("Don't know how to handle message: ", i8), new Exception());
                return;
            } else {
                ((BasePendingResult) message.obj).I0(Status.f11754L);
                return;
            }
        }
        Pair pair = (Pair) message.obj;
        com.google.android.gms.common.api.p pVar = (com.google.android.gms.common.api.p) pair.first;
        com.google.android.gms.common.api.o oVar = (com.google.android.gms.common.api.o) pair.second;
        try {
            ((E3.u) pVar).a(oVar);
        } catch (RuntimeException e8) {
            BasePendingResult.P0(oVar);
            throw e8;
        }
    }
}
