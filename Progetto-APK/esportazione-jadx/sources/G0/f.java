package G0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Arrays;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class f extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f3335a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i iVar, Looper looper) {
        super(looper);
        this.f3335a = iVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        byte[] bArr = (byte[]) message.obj;
        if (bArr == null) {
            return;
        }
        for (d dVar : this.f3335a.f3351R) {
            dVar.p();
            if (Arrays.equals(dVar.f3330v, bArr)) {
                if (message.what == 2 && dVar.f3313e == 0 && dVar.f3324p == 4) {
                    String str = M.f28050a;
                    dVar.h(false);
                    return;
                }
                return;
            }
        }
    }
}
