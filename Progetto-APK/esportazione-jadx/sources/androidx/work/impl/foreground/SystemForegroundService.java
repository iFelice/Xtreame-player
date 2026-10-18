package androidx.work.impl.foreground;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.UUID;
import p027d2.n;
import p032e0.p;
import p034e2.y;
import p086l.RunnableC3036k;
import p089l2.b;
import p089l2.c;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class SystemForegroundService extends p implements b {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final String f9796L = n.f("SystemFgService");

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Handler f9797H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f9798I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public c f9799J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public NotificationManager f9800K;

    public final void a() {
        this.f9797H = new Handler(Looper.getMainLooper());
        this.f9800K = (NotificationManager) getApplicationContext().getSystemService("notification");
        c cVar = new c(getApplicationContext());
        this.f9799J = cVar;
        if (cVar.f26447O != null) {
            n.d().b(c.f26438P, "A callback already exists.");
        } else {
            cVar.f26447O = this;
        }
    }

    @Override // p032e0.p, android.app.Service
    public final void onCreate() {
        super.onCreate();
        a();
    }

    @Override // p032e0.p, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f9799J.g();
    }

    @Override // p032e0.p, android.app.Service
    public final int onStartCommand(Intent intent, int i8, int i9) {
        super.onStartCommand(intent, i8, i9);
        boolean z7 = this.f9798I;
        int i10 = 0;
        String str = f9796L;
        if (z7) {
            n.d().e(str, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.f9799J.g();
            a();
            this.f9798I = false;
        }
        if (intent == null) {
            return 3;
        }
        c cVar = this.f9799J;
        cVar.getClass();
        String action = intent.getAction();
        boolean zEquals = "ACTION_START_FOREGROUND".equals(action);
        String str2 = c.f26438P;
        if (zEquals) {
            n.d().e(str2, "Started foreground service " + intent);
            ((u) cVar.f26440H).m(new RunnableC3036k(11, cVar, intent.getStringExtra("KEY_WORKSPEC_ID")));
            cVar.d(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            cVar.d(intent);
            return 3;
        }
        if (!"ACTION_CANCEL_WORK".equals(action)) {
            if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                return 3;
            }
            n.d().e(str2, "Stopping foreground service");
            b bVar = cVar.f26447O;
            if (bVar == null) {
                return 3;
            }
            SystemForegroundService systemForegroundService = (SystemForegroundService) bVar;
            systemForegroundService.f9798I = true;
            n.d().a(str, "All commands completed.");
            if (Build.VERSION.SDK_INT >= 26) {
                systemForegroundService.stopForeground(true);
            }
            systemForegroundService.stopSelf();
            return 3;
        }
        n.d().e(str2, "Stopping foreground work for " + intent);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return 3;
        }
        UUID uuidFromString = UUID.fromString(stringExtra);
        y yVar = cVar.f26439G;
        yVar.getClass();
        ((u) yVar.f24845d).m(new p104n2.b(yVar, uuidFromString, i10));
        return 3;
    }
}
