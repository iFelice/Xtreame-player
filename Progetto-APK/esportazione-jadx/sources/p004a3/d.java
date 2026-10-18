package p004a3;

import C0.C0084i;
import E3.f;
import R2.c;
import U2.i;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Set;
import java.util.zip.Adler32;
import p012b3.j;
import p035e3.a;

/* JADX INFO: loaded from: classes.dex */
public final class d implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f8656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p012b3.d f8657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f8658c;

    public d(Context context, p012b3.d dVar, a aVar) {
        this.f8656a = context;
        this.f8657b = dVar;
        this.f8658c = aVar;
    }

    public final void a(i iVar, int i8, boolean z7) {
        boolean z8;
        Context context = this.f8656a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(iVar.f6952a.getBytes(Charset.forName("UTF-8")));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        c cVar = iVar.f6954c;
        adler32.update(byteBufferAllocate.putInt(a.a(cVar)).array());
        byte[] bArr = iVar.f6953b;
        if (bArr != null) {
            adler32.update(bArr);
        }
        int value = (int) adler32.getValue();
        if (!z7) {
            for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
                int i9 = jobInfo.getExtras().getInt("attemptNumber");
                if (jobInfo.getId() == value) {
                    if (i9 < i8) {
                        break;
                    }
                    f.i(iVar, "JobInfoScheduler", "Upload for context %s is already scheduled. Returning...");
                    return;
                }
            }
        }
        SQLiteDatabase sQLiteDatabaseK = ((j) this.f8657b).k();
        String strValueOf = String.valueOf(a.a(cVar));
        String str = iVar.f6952a;
        Long l4 = (Long) j.c0(sQLiteDatabaseK.rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{str, strValueOf}), new C0084i(15));
        long jLongValue = l4.longValue();
        JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
        a aVar = this.f8658c;
        builder.setMinimumLatency(aVar.a(cVar, jLongValue, i8));
        Set set = ((c) aVar.f8648b.get(cVar)).f8655c;
        if (set.contains(e.f8659G)) {
            builder.setRequiredNetworkType(2);
            z8 = true;
        } else {
            z8 = true;
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(e.f8661I)) {
            builder.setRequiresCharging(z8);
        }
        if (set.contains(e.f8660H)) {
            builder.setRequiresDeviceIdle(z8);
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i8);
        persistableBundle.putString("backendName", str);
        persistableBundle.putInt("priority", a.a(cVar));
        if (bArr != null) {
            persistableBundle.putString("extras", Base64.encodeToString(bArr, 0));
        }
        builder.setExtras(persistableBundle);
        Object[] objArr = {iVar, Integer.valueOf(value), Long.valueOf(aVar.a(cVar, jLongValue, i8)), l4, Integer.valueOf(i8)};
        String strO = f.o("JobInfoScheduler");
        if (Log.isLoggable(strO, 3)) {
            Log.d(strO, String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr));
        }
        jobScheduler.schedule(builder.build());
    }
}
