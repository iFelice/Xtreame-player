package p089l2;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.leanback.widget.C;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p000a.g;
import p000a.r;
import p027d2.f;
import p027d2.n;
import p034e2.y;
import p066i2.b;
import p096m2.j;
import p096m2.q;
import p096m2.u;
import p104n2.p;
import p119p2.a;

/* JADX INFO: loaded from: classes.dex */
public final class c implements b, p034e2.c {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final String f26438P = n.f("SystemFgDispatcher");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final y f26439G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f26440H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f26441I = new Object();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public j f26442J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final LinkedHashMap f26443K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final HashMap f26444L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final HashSet f26445M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final p066i2.c f26446N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public b f26447O;

    public c(Context context) {
        y yVarW = y.w(context);
        this.f26439G = yVarW;
        this.f26440H = yVarW.f24845d;
        this.f26442J = null;
        this.f26443K = new LinkedHashMap();
        this.f26445M = new HashSet();
        this.f26444L = new HashMap();
        this.f26446N = new p066i2.c(yVarW.f24851j, this);
        yVarW.f24847f.a(this);
    }

    public static Intent a(Context context, j jVar, f fVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", fVar.f24631a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", fVar.f24632b);
        intent.putExtra("KEY_NOTIFICATION", fVar.f24633c);
        intent.putExtra("KEY_WORKSPEC_ID", jVar.f27228a);
        intent.putExtra("KEY_GENERATION", jVar.f27229b);
        return intent;
    }

    public static Intent c(Context context, j jVar, f fVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", jVar.f27228a);
        intent.putExtra("KEY_GENERATION", jVar.f27229b);
        intent.putExtra("KEY_NOTIFICATION_ID", fVar.f24631a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", fVar.f24632b);
        intent.putExtra("KEY_NOTIFICATION", fVar.f24633c);
        return intent;
    }

    @Override // p034e2.c
    public final void b(j jVar, boolean z7) {
        Map.Entry entry;
        synchronized (this.f26441I) {
            try {
                q qVar = (q) this.f26444L.remove(jVar);
                if (qVar != null && this.f26445M.remove(qVar)) {
                    this.f26446N.c(this.f26445M);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f fVar = (f) this.f26443K.remove(jVar);
        int i8 = 1;
        if (jVar.equals(this.f26442J) && this.f26443K.size() > 0) {
            Iterator it = this.f26443K.entrySet().iterator();
            Object next = it.next();
            while (true) {
                entry = (Map.Entry) next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.f26442J = (j) entry.getKey();
            if (this.f26447O != null) {
                f fVar2 = (f) entry.getValue();
                b bVar = this.f26447O;
                SystemForegroundService systemForegroundService = (SystemForegroundService) bVar;
                systemForegroundService.f9797H.post(new p109o.c(systemForegroundService, fVar2.f24631a, fVar2.f24633c, fVar2.f24632b));
                SystemForegroundService systemForegroundService2 = (SystemForegroundService) this.f26447O;
                systemForegroundService2.f9797H.post(new C(systemForegroundService2, fVar2.f24631a, i8));
            }
        }
        b bVar2 = this.f26447O;
        if (fVar == null || bVar2 == null) {
            return;
        }
        n.d().a(f26438P, "Removing Notification (id: " + fVar.f24631a + ", workSpecId: " + jVar + ", notificationType: " + fVar.f24632b);
        SystemForegroundService systemForegroundService3 = (SystemForegroundService) bVar2;
        systemForegroundService3.f9797H.post(new C(systemForegroundService3, fVar.f24631a, i8));
    }

    public final void d(Intent intent) {
        int i8 = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        j jVar = new j(stringExtra, intent.getIntExtra("KEY_GENERATION", 0));
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        n nVarD = n.d();
        StringBuilder sb = new StringBuilder("Notifying with (id:");
        sb.append(intExtra);
        sb.append(", workSpecId: ");
        sb.append(stringExtra);
        sb.append(", notificationType :");
        nVarD.a(f26438P, r.h(sb, intExtra2, ")"));
        if (notification == null || this.f26447O == null) {
            return;
        }
        f fVar = new f(intExtra, intExtra2, notification);
        LinkedHashMap linkedHashMap = this.f26443K;
        linkedHashMap.put(jVar, fVar);
        if (this.f26442J == null) {
            this.f26442J = jVar;
            SystemForegroundService systemForegroundService = (SystemForegroundService) this.f26447O;
            systemForegroundService.f9797H.post(new p109o.c(systemForegroundService, intExtra, notification, intExtra2));
            return;
        }
        SystemForegroundService systemForegroundService2 = (SystemForegroundService) this.f26447O;
        systemForegroundService2.f9797H.post(new g(systemForegroundService2, intExtra, notification, 6));
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            i8 |= ((f) ((Map.Entry) it.next()).getValue()).f24632b;
        }
        f fVar2 = (f) linkedHashMap.get(this.f26442J);
        if (fVar2 != null) {
            SystemForegroundService systemForegroundService3 = (SystemForegroundService) this.f26447O;
            systemForegroundService3.f9797H.post(new p109o.c(systemForegroundService3, fVar2.f24631a, fVar2.f24633c, i8));
        }
    }

    @Override // p066i2.b
    public final void e(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            q qVar = (q) it.next();
            String str = qVar.f27242a;
            n.d().a(f26438P, p148t.a.c("Constraints unmet for WorkSpec ", str));
            j jVarA = p096m2.f.a(qVar);
            y yVar = this.f26439G;
            ((u) yVar.f24845d).m(new p(yVar, new p034e2.r(jVarA), true));
        }
    }

    public final void g() {
        this.f26447O = null;
        synchronized (this.f26441I) {
            this.f26446N.d();
        }
        this.f26439G.f24847f.g(this);
    }

    @Override // p066i2.b
    public final void f(List list) {
    }
}
