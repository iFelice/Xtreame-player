package X3;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class d extends Handler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Looper looper, int i8) {
        super(looper);
        if (i8 == 1) {
            super(looper);
            Looper.getMainLooper();
        } else if (i8 == 2) {
            super(looper);
            Looper.getMainLooper();
        } else if (i8 != 3) {
            Looper.getMainLooper();
        } else {
            super(looper);
            Looper.getMainLooper();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Looper looper, Handler.Callback callback, int i8) {
        super(looper, callback);
        if (i8 != 2) {
            Looper.getMainLooper();
        } else {
            super(looper, callback);
            Looper.getMainLooper();
        }
    }
}
