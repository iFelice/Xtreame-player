package W3;

import K3.V;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class f implements A3.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static f f7470c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f7471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f7472b;

    public f(Context context) {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f7472b = Executors.newSingleThreadExecutor();
        this.f7471a = context;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new p000a.f(this), 0L, 86400L, TimeUnit.SECONDS);
    }

    public static final SharedPreferences b(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    public static final void c(Context context) {
        if (b(context).edit().putLong("app_set_id_last_used_time", System.currentTimeMillis()).commit()) {
            return;
        }
        String strValueOf = String.valueOf(context.getPackageName());
        Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID last used time for App ".concat(strValueOf) : new String("Failed to store app set ID last used time for App "));
        throw new e("Failed to store the app set ID last used time.");
    }

    @Override // A3.a
    public final p052g4.h a() {
        p052g4.i iVar = new p052g4.i();
        this.f7472b.execute(new V(this, iVar, 1));
        return iVar.f25345a;
    }
}
