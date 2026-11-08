package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import java.util.LinkedHashMap;
import java.util.Map;
import p027d2.n;
import p032e0.p;
import p050g2.i;
import p050g2.j;
import p104n2.q;
import p104n2.r;

/* JADX INFO: loaded from: classes.dex */
public class SystemAlarmService extends p implements i {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final String f9788J = n.f("SystemAlarmService");

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public j f9789H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f9790I;

    public final void a() {
        this.f9790I = true;
        n.d().a(f9788J, "All commands completed in dispatcher");
        String str = q.f27459a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (r.f27460a) {
            linkedHashMap.putAll(r.f27461b);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) entry.getKey();
            String str2 = (String) entry.getValue();
            if (wakeLock != null && wakeLock.isHeld()) {
                n.d().g(q.f27459a, "WakeLock held for " + str2);
            }
        }
        stopSelf();
    }

    @Override // p032e0.p, android.app.Service
    public final void onCreate() {
        super.onCreate();
        j jVar = new j(this);
        this.f9789H = jVar;
        if (jVar.f25342O != null) {
            n.d().b(j.f25333P, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            jVar.f25342O = this;
        }
        this.f9790I = false;
    }

    @Override // p032e0.p, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f9790I = true;
        j jVar = this.f9789H;
        jVar.getClass();
        n.d().a(j.f25333P, "Destroying SystemAlarmDispatcher");
        jVar.f25337J.g(jVar);
        jVar.f25342O = null;
    }

    @Override // p032e0.p, android.app.Service
    public final int onStartCommand(Intent intent, int i8, int i9) {
        super.onStartCommand(intent, i8, i9);
        if (this.f9790I) {
            n.d().e(f9788J, "Re-initializing SystemAlarmDispatcher after a request to shut-down.");
            j jVar = this.f9789H;
            jVar.getClass();
            n nVarD = n.d();
            String str = j.f25333P;
            nVarD.a(str, "Destroying SystemAlarmDispatcher");
            jVar.f25337J.g(jVar);
            jVar.f25342O = null;
            j jVar2 = new j(this);
            this.f9789H = jVar2;
            if (jVar2.f25342O != null) {
                n.d().b(str, "A completion listener for SystemAlarmDispatcher already exists.");
            } else {
                jVar2.f25342O = this;
            }
            this.f9790I = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f9789H.a(i9, intent);
        return 3;
    }
}
