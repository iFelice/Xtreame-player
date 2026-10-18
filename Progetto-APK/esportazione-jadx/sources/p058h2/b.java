package p058h2;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;
import p027d2.n;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f25395b = n.f("SystemJobInfoConverter");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ComponentName f25396a;

    public b(Context context) {
        this.f25396a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }
}
