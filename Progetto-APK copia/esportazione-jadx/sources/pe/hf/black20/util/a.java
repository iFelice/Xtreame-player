package pe.hf.black20.util;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static ProgressDialog f29418G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static Context f29419H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static Activity f29420I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static String f29421J;

    public static void a(a aVar, String str) {
        Uri uriBuild;
        aVar.getClass();
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT < 24) {
            uriBuild = Uri.fromFile(new File(str.concat("/xciptv.apk")));
        } else {
            Activity activity = f29420I;
            Objects.requireNonNull(activity);
            File file = new File(str.concat("/xciptv.apk"));
            E.c cVarC = FileProvider.c(0, activity, "pe.hf.black20.provider");
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry entry = null;
                for (Map.Entry entry2 : cVarC.f2440b.entrySet()) {
                    String path = ((File) entry2.getValue()).getPath();
                    if (E.c.a(canonicalPath, path) && (entry == null || path.length() > ((File) entry.getValue()).getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException(p148t.a.c("Failed to find configured root that contains ", canonicalPath));
                }
                String path2 = ((File) entry.getValue()).getPath();
                uriBuild = new Uri.Builder().scheme("content").authority(cVarC.f2439a).encodedPath(Uri.encode((String) entry.getKey()) + '/' + Uri.encode(path2.endsWith(MqttTopic.TOPIC_LEVEL_SEPARATOR) ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), MqttTopic.TOPIC_LEVEL_SEPARATOR)).build();
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
        intent.setDataAndType(uriBuild, "application/vnd.android.package-archive");
        intent.setFlags(268468224);
        intent.addFlags(1);
        f29419H.startActivity(intent);
        f29420I.finish();
    }
}
