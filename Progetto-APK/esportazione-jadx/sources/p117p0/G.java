package p117p0;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class G implements InterfaceC3168f {
    public final I a(Looper looper, Handler.Callback callback) {
        return new I(new Handler(looper, callback));
    }
}
