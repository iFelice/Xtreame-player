package p058h2;

import android.app.job.JobParameters;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static String[] a(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentAuthorities();
    }

    public static Uri[] b(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentUris();
    }
}
