package E1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class W extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2680a;

    public W() {
        this.f2680a = 0;
    }

    public void a(Message message) {
        super.dispatchMessage(message);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        switch (this.f2680a) {
            case 1:
                a(message);
                break;
            default:
                super.dispatchMessage(message);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(Looper looper, int i8) {
        super(looper);
        this.f2680a = i8;
        if (i8 == 2) {
            super(looper);
            Looper.getMainLooper();
        } else if (i8 != 3) {
            Looper.getMainLooper();
        } else {
            super(looper);
        }
    }
}
