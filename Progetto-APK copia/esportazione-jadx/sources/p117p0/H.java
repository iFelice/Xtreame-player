package p117p0;

import android.os.Message;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class H {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Message f28041a;

    public final void a() {
        this.f28041a = null;
        ArrayList arrayList = I.f28042b;
        synchronized (arrayList) {
            if (arrayList.size() < 50) {
                arrayList.add(this);
            }
        }
    }

    public final void b() {
        Message message = this.f28041a;
        message.getClass();
        message.sendToTarget();
        a();
    }
}
