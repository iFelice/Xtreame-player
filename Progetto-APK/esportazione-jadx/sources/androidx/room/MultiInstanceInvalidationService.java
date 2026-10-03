package androidx.room;

import P1.r;
import P1.s;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.LinkedHashMap;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class MultiInstanceInvalidationService extends Service {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f9713G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final LinkedHashMap f9714H = new LinkedHashMap();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final s f9715I = new s(this);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final r f9716J = new r(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        q0.h(intent, "intent");
        return this.f9716J;
    }
}
