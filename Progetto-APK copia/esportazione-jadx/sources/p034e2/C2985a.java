package p034e2;

import android.content.Context;
import java.io.File;
import z4.q0;

/* JADX INFO: renamed from: e2.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2985a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2985a f24797a = new C2985a();

    public final File a(Context context) {
        q0.h(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        q0.g(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }
}
