package p050g2;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import p027d2.n;
import p034e2.p;
import p096m2.f;
import p096m2.j;
import p096m2.q;

/* JADX INFO: loaded from: classes.dex */
public final class k implements p {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final String f25343H = n.f("SystemAlarmScheduler");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f25344G;

    public k(Context context) {
        this.f25344G = context.getApplicationContext();
    }

    @Override // p034e2.p
    public final boolean a() {
        return true;
    }

    @Override // p034e2.p
    public final void c(q... qVarArr) {
        for (q qVar : qVarArr) {
            n.d().a(f25343H, "Scheduling work with workSpecId " + qVar.f27242a);
            j jVarA = f.a(qVar);
            String str = c.f25306K;
            Context context = this.f25344G;
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_SCHEDULE_WORK");
            c.e(intent, jVarA);
            context.startService(intent);
        }
    }

    @Override // p034e2.p
    public final void d(String str) {
        String str2 = c.f25306K;
        Context context = this.f25344G;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        context.startService(intent);
    }
}
