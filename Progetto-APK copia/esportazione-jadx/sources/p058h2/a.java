package p058h2;

import android.app.job.JobInfo;
import android.media.MediaCodec;
import android.net.Uri;
import javax.net.ssl.SNIHostName;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ JobInfo.TriggerContentUri a(Uri uri, int i8) {
        return new JobInfo.TriggerContentUri(uri, i8);
    }

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern b() {
        return new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    public static /* synthetic */ SNIHostName e(String str) {
        return new SNIHostName(str);
    }

    public static /* synthetic */ void f() {
    }
}
