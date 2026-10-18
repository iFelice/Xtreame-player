package pe.hf.black20.util;

import android.app.Application;
import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class OTRApp extends Application {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static Context f29417G;

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        synchronized (Q5.b.class) {
            Q5.b.f6040c = new Q5.b(applicationContext, new HashMap());
        }
        f29417G = getApplicationContext();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
    }
}
